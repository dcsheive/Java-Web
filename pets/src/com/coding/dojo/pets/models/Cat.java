package com.coding.dojo.pets.models;

public class Cat extends Animal implements Pet {
	public Cat(String name, String breed, int weight) {
		super(name, breed, weight);
	}
	public String showAffection() {
		return "You created a "+this.getBreed()+". "+this.getName() + " looks at you";
	}
}
