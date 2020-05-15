public class functionEquality {
	
	public static void compareFunctionValue(){
		
		double f1 = 29.99;
		double f2 = -29.99;	
		
		f1 = Math.floor(f1);
		System.out.println("Floor value of f1: "+f1);
		
		f2 = Math.floor(f2);
		System.out.println("Floor value of f2: "+f2);

		if (f1 == f2) {
		System.out.println("both values are equal");
		} else {
			System.out.println("both values are not equal");
		}
	}

}
