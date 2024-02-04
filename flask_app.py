
from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html',)

@app.route('/test', methods=['POST', 'GET'])
def test():
    if request.method == 'GET':
        msg = "this is a response to roblox instance, sent from python"
        print("SENT >>", msg)
        return msg
    print("RECEIVED >>",list(request.form))
    return render_template('index.html')

app.run(host='0.0.0.0',port='1111',debug=False)