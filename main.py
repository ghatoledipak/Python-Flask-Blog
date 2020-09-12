from flask import Flask ,render_template
from flask import Flask ,request
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime
import json
from flask_mail import Mail


with open('config.json') as c:
    params=json.load(c)["params"]

local_server=True
app = Flask(__name__)
app.config.update(
    MAIL_SERVER='smtp.gmail.com',
    MAIL_PORT='465',
    MAIL_USE_SSL=True,
    MAIL_USERNAME=params['gmail_user'],
    MAIL_PASSWORD=params['gmail_pass']
)

mail=Mail(app)
if(local_server):
    app.config['SQLALCHEMY_DATABASE_URI'] =params['local_uri']         #'mysql://root:@localhost/dipscode'
else:
    app.config['SQLALCHEMY_DATABASE_URI'] =params['prod_uri']         #'mysql://root:@localhost/dipscode'

db = SQLAlchemy(app)


class Contacts(db.Model):
    srno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), unique=False,nullable=False)
    email= db.Column(db.String(20), nullable=False)
    phone_no = db.Column(db.Integer ,nullable=False)
    date = db.Column(db.String(12), nullable=True)
    msg = db.Column(db.String(120), nullable=False)


@app.route('/')
def home():
    posts=Posts.query.filter_by().all()[0:5]
    return render_template('index.html',params=params,posts=posts)

@app.route('/about')
def about():
    return render_template('about.html',params=params)


@app.route('/contact',methods=['GET','POST'])
def contact():
    if (request.method=='POST'):
        #add and read fromdb
        name=request.form.get('name')
        emaill=request.form.get('emaill')
        phone=request.form.get('phone')
        msgg=request.form.get('msgg')
        date=request.form.get('date')
        entry=Contacts(name=name,email=emaill,phone_no=phone,date=datetime.now(),msg=msgg)
        db.session.add(entry)
        db.session.commit()
        mail.send_message('New message from ' +name ,
                          sender=emaill,
                          recipients=[params['gmail_user']],
                          body=msgg+'\n'+phone)
    return render_template('contact.html',params=params)



class Posts(db.Model):
    srno = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(80), unique=False,nullable=False)
    slug= db.Column(db.String(25), nullable=False)
    content = db.Column(db.String(120) ,nullable=False)
    date = db.Column(db.String(12), nullable=True)
    img_file = db.Column(db.String(12), nullable=True)


@app.route("/post/<string:post_slug>",methods=['GET'])
def post_route(post_slug):
    post_var=Posts.query.filter_by(slug=post_slug).first()
    return render_template('post.html',params=params,post=post_var)

app.run(debug=True)