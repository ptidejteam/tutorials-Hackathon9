import java.util.*;


public class MyPerson{

	String name;
	int age;
	static List<MyPerson> MyList = new ArrayList<MyPerson>();


	public MyPerson (String name, int age, List<Object> MyList) {
		this.name = name;
		this.age = age;
		MyPerson.MyList = MyList;
	}

	public static void Person() {
		MyPerson Jane = new MyPerson ("Jane", 47, MyList.add(new MyPerson ("John", 15, MyList.add(null))));
		MyPerson Sue = new MyPerson ("Sue", 35, MyList.add(new MyPerson ("John", 15, MyList.contains(null))));


		System.out.println(Jane.name+ " " +Jane.age+ "Jane's son is "+ MyPerson.MyList.get(0)+ " and "
		+Sue.name+ " " +Sue.age+ "Sue's son is "+ MyPerson.MyList.get(0));
	}
}
