from user_repository import UserRepository

class UserActions:
  def __init__(self) -> None:
    self.user_repo = UserRepository()

  def add_user(self, name, dob):
    try:
      user = self.user_repo.add_user(name, dob)
      return user
    except Exception as e:
      print(e)
      return {}