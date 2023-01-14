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
            error = "username or password is invalid"
            return render_template('login.html', error=error)
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
        cursor.execute('select * from User where username=%s;', (username,))
        user = cursor.fetchone()
        if user:
            error = "username exists"
            return render_template('register.html', error=error)
        cursor.execute("insert into User value(NULL,%s, %s)", (username, password,))
        mysql.connection.commit()
        cursor.close()
        return redirect('login')
    else:
        return render_template('register.html')

@app.route('/logout')
def logout():
    if 'username' in session:
        session.pop('username')
        session.pop('userid')
    return redirect('login')




@app.route('/query<int:qid>', methods=['GET'])
def query(qid):
    cursor = mysql.connection.cursor()
    res = None
    if qid == 1:
        cursor.execute("""SHOW COLUMNS FROM Product;""")
        row = cursor.fetchall()
        cursor.execute("SELECT * FROM Product;")
        datas = cursor.fetchall()
        row = [r[0] for r in row]
        res = []
        for data in datas:
            res.append(dict(zip(row, data)))
    elif qid == 2:
        cursor.execute("""SHOW COLUMNS FROM Customer;""")
        row = cursor.fetchall()
        cursor.execute("""SHOW COLUMNS FROM Profile;""")
        row2 = cursor.fetchall()
        row = row + row2
        cursor.execute("SELECT * FROM Customer, Profile where cid=Customer_cid;")
        datas = cursor.fetchall()
        row = [r[0] for r in row]
        res = []
        for data in datas:
            res.append(dict(zip(row, data)))
    
    return jsonify({"data": res})



if __name__ == "__main__":
    app.run(debug=True)