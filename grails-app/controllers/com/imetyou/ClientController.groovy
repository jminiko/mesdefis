package com.imetyou

class ClientController extends CentralController{
    def register(){
        Client c = new Client()
        bindData(c,params)
        c.save(flush:true,failOnError: true)
        render(view: "login")
    }
    def index() {
        render(view: "login")
    }
    def display(){
        super.display(session.cusername,session.password)
    }
    def deleteimg(){
        Client entity = Client.findByEmail(session.cusername)
        entity.cheminPhotos = new ArrayList<String>()
        entity.save(flush:true)
        redirect(action:"display",controller:"client",params:["pagename":"profil"])
    }
    def login(){
        if(params.username&&params.password){
            log.error(params.username+" ::: "+params.password)
            if(Client.findAllByEmailAndMotDePasse(params.username,params.password)){
                session.cusername = params.username
                session.cpassword = params.password
                log.error("DBG2000::: ")
                redirect(action: "display",params:[pagename:"panel"],model:[user:session.cusername,mdp:session.cpassword])
            }else{
                def message  = "mauvais email/mot de passe"
                render(view:"login",model:[message:message])
            }
        }
    }
}
