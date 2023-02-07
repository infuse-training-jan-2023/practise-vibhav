
import sqlite3
import csv

class ItemRepository:

  def __init__(self) -> None:   
    self.db_path = './todo.db'
    self.connection = None


  def connect_db(self):
    if self.connection is None:
      self.connection =  sqlite3.connect(self.db_path, check_same_thread=False)


  def get_all_items(self):
    try:
      self.connect_db()
      cursor = self.connection.cursor()
      rows = cursor.execute('select * from items')
      return rows
    except Exception as e:
      raise Exception('Error: ', e)

  def get_item(self,item):
    try:
      self.connect_db()
      cursor = self.connection.cursor()
      rows = cursor.execute('select * from items where id=?',(item,))
      return rows
    except Exception as e:
      raise Exception('Error: ', e)
  
  def check_item(self,item):
    try:
      cursor = self.connection.cursor()
      cursor.execute('select count(id) from items where id = ?',(item,))
      return cursor.fetchone()[0]
    except  Exception as e:
      raise Exception('Error: ',e)
    

  def delete_item(self, item):
    try:
      self.connect_db()
      cursor = self.connection.cursor()
      val = check_item(item)
      if  val ==0 :
        return {}
      delete_cursor = cursor.execute('delete from items where id = ?', (item,))
      self.connection.commit()
      return "Delete was successful"
    except Exception as e:
      raise Exception('Error: ', e)

  def update_item(self, id,item,status,reminder):
    try:
      self.connect_db()
      cursor = self.connection.cursor()
      val = check_item(item)
      if  val ==0 :
        return {}
      update_cursor = cursor.execute('update items set item =?,status=?,reminder=?  where id = ?', (item,status,reminder,id))
      self.connection.commit()
      return "Update was successful"
    except Exception as e:
      raise Exception('Error: ', e)


  def add_item(self, item, reminder):
    try:
      self.connect_db()
      cursor = self.connection.cursor()
      insert_cursor = cursor.execute('insert into items(item, status, reminder) values(?,?,?)', (item, 'Not Started', reminder))
      self.connection.commit()
      return {
        'id': insert_cursor.lastrowid,
        'item': item,
        'status': 'Not Started',
        'reminder': reminder
      }
    except Exception as e:
      raise Exception('Error: ', e)

  def save_data_to_excel(self,filename):
    try:
      file = open(filename+'.csv', 'w')
      file =  csv.writer(file)
      result = []
      self.connect_db()
      cursor = self.connection.cursor()
      cursor.execute('select * from items')
      rows = cursor.fetchall()
      if rows == []:
        return "No rows to be added to the file"
      column_names = list()
      for i in cursor.description:
          column_names.append(i[0])
      result.append(column_names)
      for row in rows:
        result.append(row)
      for row in result:
        file.writerow(row)
      return "Writting was successfully"
    except Exception as e:
      raise Exception('Error: ', e)
      
      
