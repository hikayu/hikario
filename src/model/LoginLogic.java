package model;

public class LoginLogic {
  public boolean execute(User user) {
    if (user.getPass().equals("homohausotuki")) {
      return true;
    }
    return false;
  }
}