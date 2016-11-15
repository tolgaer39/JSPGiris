package _03_MVC.model;

public class Person {
	private String name;
	private String surname;
	private int birthYear;
	
	public Person(){}
	//jsp:useBean standard action kullanabilmek icin public default yapilandirici tanimlanmali.
	
	public Person(String name, String surname, int birthYear) {
		super();
		this.name = name;
		this.surname = surname;
		this.birthYear = birthYear;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSurname() {
		return surname;
	}
	public void setSurname(String surname) {
		this.surname = surname;
	}
	public int getBirthYear() {
		return birthYear;
	}
	public void setBirthYear(int birthYear) {
		this.birthYear = birthYear;
	}

	@Override
	public String toString() {
		return "Person [name=" + name + ", surname=" + surname + ", birthYear="
				+ birthYear + "]";
	}

	
}
