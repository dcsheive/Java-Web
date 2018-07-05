package com.coding.dojo.pets.models;

public class Dog extends Animal implements Pet{
	public Dog(String name, String breed, int weight) {
		super(name, breed, weight);
	}
	public String showAffection() {
		if (this.getWeight()<30) {			
			return "You created a "+this.getBreed()+". "+this.getName() + " jumps on you.";
		}
		else {
			return "You created a "+this.getBreed()+". "+this.getName() + " barks at you.";			
		}
	}
}
