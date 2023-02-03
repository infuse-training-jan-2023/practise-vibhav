import re
from flask import Flask

app = Flask(__name__)

@app.route('/email/<string:mail>', methods = ['GET'])
def validate(mail):
    valid = r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,7}\b'
    if re.match(valid,mail):
        return "Valid"
    return "Invalid"
    


if __name__ == '__main__':
    app.run(debug = True, port = 5000, host = '0.0.0.0')
