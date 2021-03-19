package com.gestibank.enumerations;

public enum SituationMatrimoniale {
	celibataire(1),
	marie(3),
	pacse(2),
	concubinage(21),
	veuf(0),
	divorce(12);
	
	public final int id;
	
	private SituationMatrimoniale(int id) {
		this.id = id;
	}
}
