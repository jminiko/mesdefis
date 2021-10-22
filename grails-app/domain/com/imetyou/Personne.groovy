package com.imetyou

class Personne {
    String nom
    String prenom
    String telephone1
    String telephone2
    String email
    String zoneGeographique
    Adresse adresseResidentielle
    static constraints = {
        email blank: false, nullable: false,unique: true
        adresseResidentielle blank:true,nullable: true
        telephone1 blank:true,nullable: true
        telephone2 blank:true,nullable: true
        zoneGeographique blank:true,nullable: true
        email email: true,unique: true
    }
    String toString(){
        return nom + " ,email: "+email
    }
}
