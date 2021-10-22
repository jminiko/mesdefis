package com.imetyou

class Service {
    static belongsTo = [client:Client,prestataire:Benevole ]

    boolean  done = false
    Date creation
    List<Date> realisation
    String descriptif
    Adresse localisation
    List<String> cheminPhotos = new ArrayList<String>()
    static constraints = {
        descriptif maxSize: 5000
    }
}
