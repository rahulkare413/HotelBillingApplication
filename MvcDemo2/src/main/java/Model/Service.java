package Model;

public class Service {
	
	public double calculateBill(Double total,String type ) {
		double payable = 0 , discount=0;
		
		if (type.equals("veg")) {
			discount = 150;
			payable = total-discount;
			
		}else if (type.equals("nonVeg")) {
			discount = 100;
			payable = total - discount;
			
		}
		return payable;
	}

}
