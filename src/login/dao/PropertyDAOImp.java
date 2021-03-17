package login.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import login.controller.DBConnection;
import login.model.Property;

public class PropertyDAOImp implements PropertyDAO{
	
	final String CREATE = "INSERT INTO properties (pro_owner, pro_status,pro_price,pro_address) VALUES (?,?,?,?)";
	final String DELETE = "DELETE FROM properties WHERE pro_id = ?";
	final String UPDATE = "UPDATE properties SET pro_owner = ?, pro_status = ?,pro_price = ?,pro_address WHERE pro_id = ?";
	final String GET_ALL = "SELECT pro_id, pro_owner, pro_status, pro_price,pro_address FROM properties ";
	final String FIND_ONE = "SELECT * FROM properties WHERE pro_id = ?";
	final String FIND_QTY = "SELECT * FROM properties WHERE pro_id = ?";
	final String UPDATE_ONE = "UPDATE properties SET pro_price = ? WHERE pro_id = ?";
	private DBConnection connection = DBConnection.getInstance();
	
	public void create(Property property) {
	
	}
	
	public List<Property> findAll(){
		PreparedStatement preparedStatement;
        ResultSet resultSet;
        List<Property> propertyList = new ArrayList<Property>();
        
        try {
			preparedStatement = connection.getConnection().prepareStatement(GET_ALL);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				propertyList.add(new Property(resultSet.getInt("pro_id"),resultSet.getString("pro_owner"), resultSet.getString("pro_status"),resultSet.getString("pro_price"), resultSet.getString("pro_address")));
			}
		} catch (SQLException e) {			
			e.printStackTrace();
		}finally {
			connection.closeConnection();
		}
        return propertyList;
	}
	
	public Property findOne(Integer id){
		PreparedStatement preparedStatement;
        ResultSet resultSet;
        Property property = null;        
        
        try {
			preparedStatement = connection.getConnection().prepareStatement(FIND_ONE);
			preparedStatement.setInt(1, id);
			resultSet = preparedStatement.executeQuery();			
			if(resultSet.next()) {
				property = new Property(resultSet.getInt("pro_id"), resultSet.getString("pro_owner"),resultSet.getString("pro_status"), resultSet.getString("pro_price"),(resultSet.getString("pro_address")));
			}else {
				System.out.println("Property not found");
			}			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally{
			connection.closeConnection();
		}
		return property;
		
	}
	
	
	public void update(Property property) {
		PreparedStatement preparedStatement;	
		try {
			String sql = "UPDATE properties SET pro_owner = '"+property.getPropertyOwner()+"', "
					+ "pro_status = '"+property.getPropertyStatus()+"', "+"pro_price = '"+property.getpropertyPrice()+"',"+ "pro_address = ' "+property.getPropertyAddress()+"' where pro_id="+property.getId(); 
			preparedStatement = connection.getConnection().prepareStatement(sql);					
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			connection.closeConnection();
		}
		
	}
	
	public void check(Property property) {
		
	PreparedStatement preparedStatement;
		
		try {
			preparedStatement = connection.getConnection().prepareStatement(UPDATE_ONE);
			preparedStatement.setString(1, property.getpropertyPrice());
			System.out.println(property.getpropertyPrice());
			System.out.println(property.getpropertyPrice());
			
			System.out.println("Checking property error"); 
			preparedStatement.setInt(2, property.getId());
			if(preparedStatement.executeUpdate() == 0 ){
                System.out.println("Something went wrong");
            }
		} catch (SQLException e) {
			System.out.println("Checking property error"); 
			System.out.println("Checking property error"); 
		}finally {
			connection.closeConnection();
		}
		
		
	}
	
	public void delete(Integer id) {
		PreparedStatement preparedStatement;
		
		try {
			preparedStatement = connection.getConnection().prepareStatement(DELETE);
			preparedStatement.setInt(1, id);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			connection.closeConnection();
		}
	}

	

	

}
