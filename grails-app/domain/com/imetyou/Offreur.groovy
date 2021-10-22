package com.imetyou

class Offreur extends Personne{
    static hasMany = [offres:Offre]
    String motDePasse
    List<String> cheminPhotos = new ArrayList<String>()
    static constraints = {
    }
}
