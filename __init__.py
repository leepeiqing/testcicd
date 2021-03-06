# project/__init__.py
from flask import Flask, jsonify

# 初始化app
app = Flask(__name__)


@app.route('/ping', methods=['GET'])
def ping_pong():
    return jsonify({
        'status': 'success',
        'message': 'pong!'
    })
