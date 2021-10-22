package com.imetyou

class Benevole extends Personne{
    static hasMany = [applications:Service]
    String motDePasse
    Date dateDeNaissance
    Adresse adresseComplementaire
    static constraints = {
        adresseComplementaire blank:true,nullable: true
        dateDeNaissance blank:true,nullable: true
    }
    static mapping = {
        tablePerHierarchy false
    }

}
