package util;

import java.sql.SQLException;


public class DAOException extends SQLException{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public DAOException() {
		
	}
	
	public DAOException(String message) {
		super(message);
	}
	
}

