
public class Main {

	public static void main(String[] args) {
		System.out.println("Result of Structural Equality:");			
		MyString.StructuralEquality();
		System.out.println(" ");
		
		System.out.println("Result of Reference Equality:");			
		//MyPerson.Person();
		System.out.println(" ");

		System.out.println("Result of not recommanded Float Comparison:");			
		floatValuesCompWithEqual.floatsComparison();
		System.out.println(" ");

		System.out.println("Result of recommanded Float Comparison with Epsilon:");			
		floatValuesCompWithEpsilon.FloatsComparisonEpsilon();
		System.out.println(" ");

		System.out.println("Result of Function Equality:");			
		functionEquality.compareFunctionValue();
		
	}

}
