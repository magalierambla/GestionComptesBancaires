package com.gestibank.enumerations;

public enum StatutDemandeChequier {
	en_attente(0),
	accepte(10),
	refuse(01);
	
	public final int id;
	
	private StatutDemandeChequier(int id) {
		this.id = id;
	}
}
