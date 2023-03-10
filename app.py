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



@app.route('/adminProduct/<string:pname>/<int:month>', methods=['GET'])
def adminProduct(pname, month):
    if not 'username' in session:
        return redirect(url_for('login'))
    else:
        cursor = mysql.connection.cursor()
        cursor.execute('select * from User where username=%s and isAdmin=1;', (session['username'],))
        if not cursor.fetchone():
            return 'sorry only admin is allowed'
    
    cursor.execute(f"""select pname, amount 
        from Product p, Cart_has_Product chp, Cart c, Invoice i
        where i.Cart_cartid = c.cartid and chp.Cart_cartid = c.cartid and chp.Product_pid = p.pid and month(i.date) = {month} and pname like '%{pname}%'
        order by amount desc
        limit 10;""")
    products = cursor.fetchall()
    
    res = []
    for p in products:
        res.append(dict(zip(['product', 'amount'], p)))
    
    return jsonify({'data': res})


    
@app.route("/sale/<int:opt>/<int:val>", methods=['GET'])
def sale(opt, val):
    cursor = mysql.connection.cursor()
    products = None
    if opt == 0:
        cursor.execute(f"""select pname, amount 
        from Product p, Cart_has_Product chp, Cart c, Invoice i
        where i.Cart_cartid = c.cartid and chp.Cart_cartid = c.cartid and chp.Product_pid = p.pid and week(i.date) = {val}
        order by amount desc
        limit 10;""")
        products = cursor.fetchall()
    elif opt == 1:
        cursor.execute(f"""select pname, amount 
        from Product p, Cart_has_Product chp, Cart c, Invoice i
        where i.Cart_cartid = c.cartid and chp.Cart_cartid = c.cartid and chp.Product_pid = p.pid and month(i.date) = {val}
        order by amount desc
        limit 10;""")
        products = cursor.fetchall()
    
    res = []
    for p in products:
        res.append(dict(zip(['product', 'amount'], p)))
    
    return jsonify({'data': res})


@app.route('/customer/<int:opt>/<int:val>', methods=['GET'])
def customer(opt, val):
    cursor = mysql.connection.cursor()
    customers = None
    if opt == 0:
        cursor.execute(f"""select c.*, value_sum
        from Customer c, Purchase_per_week ppw
        where cid = ccid and week = {val}
        order by value_sum desc
        limit 10;""")
        customers = cursor.fetchall()
    elif opt == 1:
        cursor.execute(f"""select c.*, value_sum
        from Customer c, Purchase_per_month ppm
        where cid = ccid and month = {val}
        order by value_sum desc
        limit 10;""")
        customers = cursor.fetchall()
    
    cursor.execute('SHOW COLUMNS FROM Customer;')
    row = cursor.fetchall()
    row = [r[0] for r in row]
    row = row + ['value_sum']
    res = []
    for ctm in customers:
        res.append(dict(zip(row, ctm)))
    
    return jsonify({"data": res})



@app.route('/monthSale', methods=['GET'])
def monthSale():
    if not 'username' in session:
        return redirect(url_for('login'))
    else:
        cursor = mysql.connection.cursor()
        cursor.execute('select * from User where username=%s and isAdmin=1;', (session['username'],))
        if not cursor.fetchone():
            return 'sorry only admin is allowed'
    
    cursor.execute("""select month(date) as month, avg(value)
    from Transaction_history
    group by month(date)
    order by month(date) desc;""")
    datas = cursor.fetchall()
    row = ['month', 'average']
    res = []
    for data in datas:
        res.append(dict(zip(row, data)))
    
    return jsonify({'data': res})

@app.route('/panel', methods=['GET'])
def panel():
    if not 'username' in session:
        return redirect(url_for('login'))
    else:
        cursor = mysql.connection.cursor()
        cursor.execute('select * from User where username=%s and isAdmin=1;', (session['username'],))
        if not cursor.fetchone():
            return 'sorry only admin is allowed'
    
    cursor.execute('Select uid, username from User  where isAdmin = 0;')
    users = cursor.fetchall()

    cursor.execute('Select pid, pname, price from Product;')
    products = cursor.fetchall()
    return render_template('panel.html', users=users, products=products)


@app.route('/delete/<int:uid>', methods=['GET'])
def delete(uid):
    cursor = mysql.connection.cursor()
    cursor.execute(f"delete from User where uid = {uid};")
    mysql.connection.commit()
    return redirect('/panel')

@app.route('/makeadmin/<int:uid>', methods=['GET'])
def makeadmin(uid):
    cursor = mysql.connection.cursor()
    cursor.execute(f'update User set isAdmin = 1 where uid = {uid};')
    mysql.connection.commit()
    return redirect('/panel')

@app.route('/update/<int:uid>', methods=['POST'])
def update(uid):
    newusername = request.form['newusername']
    cursor = mysql.connection.cursor()
    cursor.execute(f"update User set username = '{newusername}' where uid = {uid};")
    mysql.connection.commit()
    return redirect('/panel')
    

@app.route('/addproduct', methods=['POST'])
def addproduct():
    id = int(request.form['id'])
    pname = request.form['pname']
    price = float(request.form['price'])

    cursor = mysql.connection.cursor()
    cursor.execute(f"insert into Product(pid, pname, price) value ({id}, '{pname}', {price});")
    mysql.connection.commit()
    return redirect('/panel')


@app.route('/deletep/<int:pid>', methods=['GET'])
def deletep(pid):
    cursor = mysql.connection.cursor()
    cursor.execute(f"delete from Product where pid = {pid};")
    mysql.connection.commit()
    return redirect('/panel')


@app.route('/updatep/<int:pid>', methods=['POST'])
def updatep(pid):
    pname = request.form['pname']
    price = float(request.form['price'])
    cursor = mysql.connection.cursor()
    cursor.execute(f"update Product set pname = '{pname}', price = {price} where pid = {pid};")
    mysql.connection.commit()
    return redirect('/panel')

if __name__ == "__main__":
    app.run(debug=True)