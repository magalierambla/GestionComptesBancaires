package com.gestibank.enumerations;

public enum StatutAffectation {
	en_attente_admin(24),
	en_attente_agent(0),
	accepte(10),
	refuse(01);
	
	public final int id;
	
	private StatutAffectation(int id) {
		this.id = id;
	}
}
