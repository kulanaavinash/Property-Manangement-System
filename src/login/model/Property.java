package login.model;

public class Property {
	
	private Integer id;
	private String propertyOwner;
	private String propertyStatus;
	private String propertyPrice;
	private String propertyAddress;
		
	public Property(Integer id, String propertyOwner, String propertyStatus,String propertyPrice, String propertyAddress) {
		super();
		this.id = id;
		this.propertyOwner = propertyOwner;
		this.propertyStatus = propertyStatus;
		this.propertyPrice =propertyPrice;
		this.propertyAddress =propertyAddress;
	}

	public Property(String propertyOwner, String propertyStatus, String propertyPrice, String propertyAddress) {
		super();
		this.propertyOwner = propertyOwner;
		this.propertyStatus = propertyStatus;
		this.propertyPrice = propertyPrice;
		this.propertyAddress =propertyAddress;
	}
	public Property(Integer id, String propertyPrice) {
		super();
		this.id = id;
		this.propertyPrice =propertyPrice;
		
	}


	public Property() {
		super();
		
	}

	public String getPropertyOwner() {
		return propertyOwner;
	}

	public void setPropertyOwner(String propertyOwner) {
		this.propertyOwner = propertyOwner;
	}

	public String getPropertyStatus() {
		return propertyStatus;
	}

	public String getPropertyAddress() {
		return propertyAddress;
	}
	
	public void setPropertyAddress(String propertyaddress) {
		this. propertyAddress = propertyAddress;
		
	}
	public void setPropertyStatus(String propertyStatus) {
		this.propertyStatus = propertyStatus;
	}
	
	public String getpropertyPrice() {
		return propertyPrice;
	}
	
	public String setPropertyPrice(String propertyPrice) {
		return this.propertyPrice =propertyPrice;
	}
	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "Property [propertyOwner=" + propertyOwner + ", propertyStatus=" + propertyStatus + ", propertyPrice=" + propertyPrice +", propertyAddress=" + propertyAddress +"]";
	}

	
	

}
