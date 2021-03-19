package com.gestibank.enumerations;

public enum TypeTransaction {
	debit(00),
	credit(10);
	
	public final int id;
	
	private TypeTransaction(int id) {
		this.id = id;
	}
}