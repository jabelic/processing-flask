from flask import Flask, render_template, request

app = Flask(__name__)

 
@app.route("/")
def index():
    return render_template('index.html')
 
@app.route("/timer")
def timer():
    return render_template('anything.html')

@app.route("/share")
def share():
    return render_template('share.html')
 
if __name__ == "__main__":
    app.run(debug=True)