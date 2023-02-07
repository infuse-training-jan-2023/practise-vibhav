import requests
from flask import Flask 

app = Flask(__name__)

@app.route('/number/<int:number>', methods = ['GET'])
def validate(number):
    if (number > 0 and number<201): 
        return requests.get('https://jsonplaceholder.typicode.com/todos/'+str(number)).content
    else:
        return "Invalid number should be between 1-200"
    


if __name__ == '__main__':
    app.run(debug = True, port = 5000, host = '0.0.0.0')
