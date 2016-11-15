package _03_MVC.controller;

import java.util.ArrayList;
import java.util.List;

import _03_MVC.model.Person;

public class PersonUtility {

	public static List<Person> getPersons() {
		List<Person> personList = new ArrayList<Person>();

		Person person = new Person("name1", "surname1", 2000);
		Person person2 = new Person("name2", "surname2", 2002);
		Person person3 = new Person("name3", "surname3", 2003);
		Person person4 = new Person("name4", "surname4", 2004);
		Person person5 = new Person("name5", "surname5", 2005);

		personList.add(person);
		personList.add(person2);
		personList.add(person3);
		personList.add(person4);
		personList.add(person5);

		return personList;
	}
}
