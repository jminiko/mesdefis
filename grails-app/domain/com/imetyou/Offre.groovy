package com.imetyou

class Offre {
    static belongsTo = [offreur:Offreur]
    String type
    String description
    List<String> cheminPhotos = new ArrayList<String>()
    Date execution
    Date parution

    static constraints = {
    }
}
