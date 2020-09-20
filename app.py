from flask import Flask, render_template, request

app = Flask(__name__)

 
@app.route("/")
def index():
    return render_template('index.html')
 
@app.route("/timer100")
def timer100():
    return render_template('100.html')

@app.route("/timer90")
def timer90():
    return render_template('90.html')

@app.route("/share")
def share():
    return render_template('share.html')
 
if __name__ == "__main__":
    app.run(debug=True)