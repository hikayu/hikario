package model;

import dao.MutterDAO;

public class DeleteLogic {
	public void delete(int id) {
		MutterDAO dao = new MutterDAO();
		dao.delete(id);
	}
}
