package com.imetyou

class CentralController extends MainController{

    def forgotten(){
        def message = "Mail envoyé, vérifiez votre Boite à lettres"
        render(view:"login")
    }
    def login(){
        if(params.username&&params.password){
            if(Benevole.findAllByEmailAndMotDePasse(params.username,params.password)){
                session.busername = params.username
                session.bpassword = params.password
                redirect(action: "display",params:[pagename:"panel"],model:[user:session.busername,mdp:params.bpassword])
            }else{
                def message  = "mauvais email/mot de passe"
                render(view:"login",model:[message:message])
            }
        }
    }

    def display(){
        super.display(session.busername,session.password)
    }
    def register(){
        Benevole b = new Benevole()
        bindData(b,params)
        b.save(flush:true,failOnError: true)
        render(view: "login")
    }
    /*def allads() {
        def MAX_RESULT = (params.max==null)?10:params.int('max')
        params.max = MAX_RESULT
        def classifiedads = Service.executeQuery("from Service ad")
        def adcount = classifiedads.size()
        render(view:"allads",model:[classifiedAds:classifiedads,adcount:adcount],params:[max:MAX_RESULT])
    }
    def viewads() {
        def MAX_RESULT = (params.max==null)?10:params.int('max')
        params.max = MAX_RESULT
        def classifiedads = Service.executeQuery("from Service ad ")
        def adcount = classifiedads.size()
        render(view:"viewads",model:[classifiedAds:classifiedads,adcount:adcount],params:[max:MAX_RESULT])
    }
    def savead() {
        Service classifiedAd = new Service()
        bindData(classifiedAd,params)


        if(classifiedAd.validate()) {
            classifiedAd.save(flush:true)
        }else {
            render classifiedAd.errors
        }
        redirect(controller:"home")
    }
    def view() {
        def MAX_RESULT = (params.max==null)?10:params.int('max')
        params.max = MAX_RESULT
        def classifiedads = Service.executeQuery("from Service ad ")
        def adcount = classifiedads.size()
        render(view:"viewall",model:[classifiedAds:classifiedads,adcount:adcount],params:[max:MAX_RESULT])
    }
    /*
    def send(){
        if(params.email!=null){
            // Mail parameters
            def textToSend = [
            "to" : "contact@frenchfab.shop",
            "from" : "contact@frenchfab.shop",
            "subject" : "demande de détails",
            "body" :"""
						$params.email
						$params.name
						$params.email
						$params.subject
						$params.message
					"""]
            messagingService.sendEmail(textToSend)
        }
        redirect(controller:"home")
    }
    */
}
