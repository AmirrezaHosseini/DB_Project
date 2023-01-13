from flask import Flask, render_template, url_for, request, jsonify, redirect, url_for, session
from flask_mysqldb import MySQL

app = Flask(__name__)
app.config["SECRET_KEY"] = "MOHAMMAD"
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'mohammad1380@'
app.config['MYSQL_DB'] = 'final_project'

mysql = MySQL(app)

@app.route('/', methods=["GET"])
def home():
    return redirect('login')


@app.route('/login', methods=["GET", "POST"])
def login():
    if 'username' in session:
        return "hey"
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        cursor = mysql.connection.cursor()
        cursor.execute('select * from User where username=%s and password=%s', (username, password, ))
        user = cursor.fetchone()
        cursor.close()
        if user:
            session['userid'] = user[0]
            session['username'] = user[1]
            return 'hey'
        else:
            return redirect('login')
    else:
        return render_template('login.html')


@app.route('/register', methods=['GET', 'POST'])
def register():
    if 'username' in session:
        return 'hey'
    
    if request.method == "POST":
        username = request.form['username']
        password = request.form['password']
        cursor = mysql.connection.cursor()
        cursor.execute("insert into User value(NULL,%s, %s)", (username, password,))
        mysql.connection.commit()
        return redirect('login')
    else:
        return render_template('register.html')



if __name__ == "__main__":
    app.run(debug=True)