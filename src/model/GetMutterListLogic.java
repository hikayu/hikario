package model;

import java.util.List;

import dao.MutterDAO;

public class GetMutterListLogic {

  public List<Mutter> execute() {
    MutterDAO dao = new MutterDAO();
    List<Mutter> mutterList = dao.findAll();
    return mutterList;
  }

public List<Mutter> execute_Search(String searchInput) {
	MutterDAO dao = new MutterDAO();
    List<Mutter> mutterList = dao.search(searchInput);
    return mutterList;
}
}