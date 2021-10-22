package com.imetyou

class Client extends Personne{
    String type
    String motDePasse
    String descriptif
    List<String> cheminPhotos
    static hasMany = [ads:Service,contacts:Personne]
    static constraints = {
        descriptif maxSize: 2000,type:"text",nullable: true,blank: true
        type nullable: true,blank: true
    }
    String toString(){
        return super.toString()+ " ,descriptif : "+descriptif
    }
}
