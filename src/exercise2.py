import re
from flask import Flask

app = Flask(__name__)

@app.route('/password, methods = ['POST'])
def validate():
    valid = r'^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,}$'
    request_data = request.get_json()
    password = request_data['password']
    if re.match(valid,password):
        return "Valid"
    return "Invalid"
    


if __name__ == '__main__':
    app.run(debug = True, port = 5000, host = '0.0.0.0')
