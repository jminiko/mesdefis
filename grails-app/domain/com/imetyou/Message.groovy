package com.imetyou

class Message {
    String identifiant
    String fil
    Date envoi
    boolean lu = false
    String contenu
    Benevole benevole
    Offre offre
    static constraints = {
        contenu maxSize: 3000
    }
}
