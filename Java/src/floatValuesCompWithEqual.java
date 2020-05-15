
public class floatValuesCompWithEqual {
	//this method of comparison is not recommended 
	
	public static void floatsComparison() 
	{
	    //Method 1
	    double f1 = .0;
	    for (int i = 1; i <= 10; i++) {
	        f1 += .1;
	    }
	 
	    //Method 2
	    double f2 = .1 * 10;
	 
	    System.out.println("f1 = " + f1);
	    System.out.println("f2 = " + f2);
	 
	    if (f1 == f2)
	        System.out.println("f1 and f2 are equal\n");
	    else
	        System.out.println("f1 and f2 are not equal\n");
	}

}
