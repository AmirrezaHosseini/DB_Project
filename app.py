from flask import Flask, render_template, url_for, request, jsonify, redirect, url_for, session
from flask_mysqldb import MySQL

app = Flask(__name__)
app.config["SECRET_KEY"] = "MOHAMMAD"
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = '1254'
app.config['MYSQL_DB'] = 'final_project'

mysql = MySQL(app)

@app.route('/', methods=["GET"])
def home():
    return redirect('login')


@app.route('/login', methods=["GET", "POST"])
def login():
    if 'username' in session:
        return "welcome " + session['username']
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
            return "welcome " + session['username']
        else:
            error = "username or password is invalid"
            return render_template('login.html', error=error)
    else:
        return render_template('login.html')

@app.route('/login/<string:username>/<string:password>', methods=["GET", "POST"])
def login2(username, password):
    if 'username' in session:
        return "welcome " + session['username']
    cursor = mysql.connection.cursor()
    cursor.execute('select * from User where username=%s and password=%s', (username, password, ))
    user = cursor.fetchone()
    cursor.close()
    if user:
        session['userid'] = user[0]
        session['username'] = user[1]
        return "welcome " + session['username']
    else:
        error = "username or password is invalid"
        return error


@app.route('/register', methods=['GET', 'POST'])
def register():
    if 'username' in session:
        return "welcome " + session['username']
    
    if request.method == "POST":
        username = request.form['username']
        password = request.form['password']
        city = request.form['city']
        cursor = mysql.connection.cursor()
        cursor.execute('select * from User where username=%s;', (username,))
        user = cursor.fetchone()
        if user:
            error = "username exists"
            return render_template('register.html', error=error)
        cursor.execute("insert into User value(NULL,%s, %s, 0, %s)", (username, password, city,))
        mysql.connection.commit()
        cursor.close()
        return redirect('login')
    else:
        return render_template('register.html')

@app.route('/register/<string:username>/<string:password>', methods=['GET'])
def register2(username, password):
    if 'username' in session:
        return "welcome " + session['username']
    cursor = mysql.connection.cursor()
    cursor.execute('select * from User where username=%s;', (username,))
    user = cursor.fetchone()
    if user:
        error = "username exists"
        return "username exists"
    cursor.execute("insert into User value(NULL,%s, %s, NULL)", (username, password,))
    mysql.connection.commit()
    cursor.close()
    return "registered"

@app.route('/logout')
def logout():
    if 'username' in session:
        session.pop('username')
        session.pop('userid')
    return redirect('login')




@app.route('/query/<int:qid>', methods=['GET'])
def query(qid=0):
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
    elif qid == 3:
        cursor.execute("SELECT distinct category FROM Product;")
        datas = cursor.fetchall()
        res = [data[0] for data in datas]
    elif qid == 4:
        # SELECT * FROM Cart, Cart_has_Product, Product;
        cursor.execute("""SHOW COLUMNS FROM Cart;""")
        row = cursor.fetchall()
        cursor.execute("""SHOW COLUMNS FROM Cart_has_Product;""")
        row2 = cursor.fetchall()
        cursor.execute("""SHOW COLUMNS FROM Product;""")
        row3 = cursor.fetchall()
        row = row + row2 + row3
        cursor.execute("SELECT * FROM Cart, Cart_has_Product, Product where cartid=Cart_cartid and pid=Product_pid;")
        datas = cursor.fetchall()
        row = [r[0] for r in row]
        res = []
        for data in datas:
            res.append(dict(zip(row, data)))
    elif qid == 5:
        pass
    elif qid == 6:
        pass
    elif qid == 7:
        cursor.execute("""SHOW COLUMNS FROM Product;""")
        row = cursor.fetchall()
        cursor.execute("SELECT * FROM Product where discount_percent>=15;")
        datas = cursor.fetchall()
        row = [r[0] for r in row]
        res = []
        for data in datas:
            res.append(dict(zip(row, data)))

    cursor.close()
    return jsonify({"data": res})


@app.route('/item/<string:item>')
def item(item):
    if not 'username' in session:
        return redirect(url_for('login'))
    else:
        cursor = mysql.connection.cursor()
        cursor.execute('select * from User where username=%s and isAdmin=1;', (session['username'],))
        if not cursor.fetchone():
            return 'sorry only admin is allowed'

    
    cursor = mysql.connection.cursor()
    cursor.execute(f"""SELECT * FROM Suplier , Product, Product_has_Suplier
    where pid = Product_pid and contract_num = Suplier_contract_num and pname like '%{item}%';""")
    datas = cursor.fetchall()
    cursor.execute("""SHOW COLUMNS FROM Suplier;""")
    row = cursor.fetchall()
    cursor.execute("""SHOW COLUMNS FROM Product;""")
    row1 = cursor.fetchall()
    cursor.execute("""SHOW COLUMNS FROM Product_has_Suplier;""")
    row2 = cursor.fetchall()
    row = row + row1 + row2
    row = [r[0] for r in row]
    res = []
    for data in datas:
        res.append(dict(zip(row, data)))
    return jsonify({"data": res})



@app.route('/suplier/<string:item>')
def suplier(item):
    cursor = mysql.connection.cursor()
    cursor.execute("SHOW COLUMNS FROM Suplier;")
    row = cursor.fetchall()
    row = [r[0] for r in row]
    cursor.execute(f"""SELECT distinct Suplier.* FROM Product , Suplier , Product_has_Suplier phs
        where pid = Product_pid and contract_num = Suplier_contract_num and pname like '%{item}%' 
        and phs.price = (select min(price) from Product_has_Suplier where pid = Product_pid);""")
    datas = cursor.fetchall()
    result = []
    for data in datas:
        result.append(dict(zip(row,data)))
    return jsonify({"data": result})

@app.route('/order/<string:customer_name>')
def order(customer_name):
    cursor = mysql.connection.cursor()
    cursor.execute("SHOW COLUMNS FROM Customer;")
    row = cursor.fetchall()
    cursor.execute("SHOW COLUMNS FROM Cart;")
    row += cursor.fetchall()
    cursor.execute("SHOW COLUMNS FROM Invoice;")
    row += cursor.fetchall()
    row = [r[0] for r in row]
    cursor.execute(f"""SELECT * FROM Customer , Cart , Invoice 
                    where cid = Customer_cid and cartid = Cart_cartid and cname like '%{customer_name}%'
                    order by invoice.date desc limit 10;""")
    datas = cursor.fetchall()
    result = []
    for data in datas:
        result.append(dict(zip(row ,data)))
    
    return jsonify({"data": result})

@app.route('/citysupliers/<string:city_name>')
def citysupliers(city_name):
    cursor = mysql.connection.cursor()
    cursor.execute("SHOW COLUMNS FROM Suplier;")
    row = cursor.fetchall()
    row = [r[0] for r in row]
    cursor.execute(f"""SELECT sname FROM Suplier
                    where city like '%{city_name}%';""")

    datas = cursor.fetchall()
    result = []
    for data in datas:
        result.append(dict(zip(row ,data)))
    
    return jsonify({"data": result})

@app.route('/comment/<int:opt>', methods=['GET'])

def comment(opt):

    cursor = mysql.connection.cursor()



    if opt == 0:

        cursor.execute("""select pname, C.* 

                        from Product P, Comment C

                        where C.pid = P.pid;""")

        comments = cursor.fetchall()

    elif opt == 1:

        cursor.execute("""select pname, C.* 

                        from Product P, Comment C

                        where C.pid = P.pid

                        order by C.point desc

                        limit 3;""")

        comments = cursor.fetchall()

    elif opt == 2:

        cursor.execute("""select pname, C.* 

                        from Product P, Comment C

                        where C.pid = P.pid

                        order by C.point asc

                        limit 3;""")

        comments = cursor.fetchall()

    



    row = ['product']

    cursor.execute('SHOW COLUMNS FROM Comment;')

    row1 = cursor.fetchall()

    row1 = [r[0] for r in row1]

    row = row + row1

    res = []

    for cmt in comments:
         res.append(dict(zip(row, cmt)))

    return jsonify({'data': res})

@app.route('/user/<string:city>', methods=['GET'])

def user(city):

    cursor = mysql.connection.cursor()

    cursor.execute(f"""select * 

                    from User

                    where city like '%{city}%';""")

    users = cursor.fetchall()

    cursor.execute('SHOW COLUMNS FROM User;')

    row = cursor.fetchall()

    row = [r[0] for r in row]



    res = []

    for user in users:

        res.append(dict(zip(row, user)))

    

    return jsonify({'data': res})    




if __name__ == "__main__":
    app.run(debug=True)