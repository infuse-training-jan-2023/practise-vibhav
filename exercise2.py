import re
from flask import Flask

app = Flask(__name__)

@app.route('/password/<string:password>', methods = ['GET'])
def validate(password):
    valid = r'[A-Za-z0-9@#$%^&+=]{8,}'
    if re.match(valid,password):
        return "Valid"
    return "Invalid"
    


if __name__ == '__main__':
    app.run(debug = True, port = 5000, host = '0.0.0.0')
