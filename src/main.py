
from flask import Flask, Response, request
from item_actions import ItemActions
import json

app = Flask(__name__)
item_actions = ItemActions()

@app.route('/items', methods = ['GET'])
def get_all_items():
  items = item_actions.get_all_items()
  return Response(json.dumps(items), mimetype='application/json', status=200)

# create an api to add a new item
@app.route('/item', methods = ['POST'])
def add_new_item():
  request_data = request.get_json()
  item = request_data['item']
  reminder = request_data['reminder']

  added_item = item_actions.add_item(item, reminder)
  if added_item == {}:
    return Response("{'error': 'Erro addding the item'}", mimetype='application/json', status=500)
  return Response(json.dumps(added_item), mimetype='application/json', status=201)

if __name__ == '__main__':
  app.run(debug = True, port = 5000, host = '0.0.0.0')