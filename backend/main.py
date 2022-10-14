from flask import Flask, jsonify

app = Flask(__name__)


@app.route('/')
def index():
    return jsonify({'data': 12})


app.run(host='0.0.0.0',  port=5002, debug=True)
