from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/hello/<name>')
def hello_name(name):
    return 'Hello %s:' % name

@app.route('/')
def hello_world():
    return 'Hello World'

@app.route('/info')
def info():
    return jsonify({
        "app": "Flask Web App",
        "version": "1.0",
        "author": "Your Name"
    })

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
