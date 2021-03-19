package com.gestibank.enumerations;

public enum TypeOperation {
	//Type Debit
	envoi_virement(02),
	agio(00),
	debit_simple(01),
	
	//Type Credit
	reception_virement(12),
	remuneration(10),
	credit_simple(11);
	
	public final int id;
	
	private TypeOperation(int id) {
		this.id = id;
	}
}