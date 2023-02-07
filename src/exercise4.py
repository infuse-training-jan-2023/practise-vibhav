
from flask import Flask, Response, request
from item_actions import ItemActions
from user_actions import UserActions

import json

app = Flask(__name__)
item_actions = ItemActions()
user_actions = UserActions()

@app.route('/item/<int:id>', methods = ['GET'])
def get_an_item(id):
  item_resp = item_actions.get_item(id)
  if item_resp == []:
    return Response("{'error': 'Item id may not be present in the database.'}", mimetype='application/json', status=500)
  return Response(json.dumps(item_resp), mimetype='application/json', status=200)


@app.route('/savetoexcel/<string:filename>', methods = ['GET'])
def save_data(filename):
  item_resp = item_actions.save_data(filename)
  if item_resp == []:
    return Response("{'error': 'Saving data into excel file wasn't successfull.'}", mimetype='application/json', status=500)
  return Response(json.dumps(item_resp), mimetype='application/json', status=200)



@app.route('/item', methods = ['POST'])
def delete_item():
  request_data = request.get_json()
  id = request_data['id']
  item_resp = item_actions.delete_item(id)
  print(item_resp)
  if item_resp == {}:
    return Response("{'error': 'Item id may not be present in the database.'}", mimetype='application/json', status=500)
  return Response(json.dumps(item_resp), mimetype='application/json', status=200)

@app.route('/item', methods = ['PUT'])
def update_item():
  request_data = request.get_json()
  id = request_data['id']
  item = request_data['item']
  status = request_data['status']
  reminder = request_data['reminder']
  item_resp = item_actions.update_item(id,item,status,reminder)
  if item_resp == {}:
    return Response("{'error': 'Item id may not be present in the database.'}", mimetype='application/json', status=500)
  return Response(json.dumps(item_resp), mimetype='application/json', status=200)

@app.route('/user', methods = ['POST'])
def register():
  request_data = request.get_json()
  name = request_data['name']
  dob = request_data['DOB']
  added_user = user_actions.add_user(name,dob)
  if added_user == {}:
    return Response("{'error': 'Error addding the user'}", mimetype='application/json', status=500)
  return Response(json.dumps(added_user), mimetype='application/json', status=201)


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
