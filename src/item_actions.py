
from item_repository import ItemRepository

class ItemActions:
  def __init__(self) -> None:
    self.item_repo = ItemRepository()

  def get_item(self,item):
    try:
      items= self.item_repo.get_item(item)
      res = []
      for item in items:
         res.append({
          'id': item[0],
          'item': item[1],
          'status': item[2],
          'reminder': item[3],
        })
      return res
    except Exception as e:
      print(e)
      return {}

  def get_all_items(self):
    try:
      items = self.item_repo.get_all_items()
      res = []
      for item in items:
        res.append({
          'id': item[0],
          'item': item[1],
          'status': item[2],
          'reminder': item[3],
        })
      return res
    except Exception as e:
      print(e)
      return {}

  def add_item(self, item, reminder):
    try:
      item = self.item_repo.add_item(item, reminder)
      return item
    except Exception as e:
      print(e)
      return {}

  def save_data_to_excel(self, filename):
    try:
      item = self.item_repo.save_data_to_excel(filename)
      return item
    except Exception as e:
      print(e)
      return {}

  def delete_item(self, item):
    try:
      item = self.item_repo.delete_item(item)
      return item
    except Exception as e:
      print(e)
      return {}

  def update_item(self, id,item,status,reminder):
    try:
      updated = self.item_repo.update_item(id,item,status,reminder)
      return updated
    except Exception as e:
      print(e)
      return {}
