package com.imetyou

import org.springframework.web.multipart.MultipartFile

class MainController {
    def renderImage(){
        Client entity = Client.findByEmail(session.cusername)
        int index = Integer.valueOf(params.index)
        String filename = entity.cheminPhotos[index]
        def format = "jpeg"

        File file = new File(filename)

        def idxFormat = filename.lastIndexOf(".")
        if(idxFormat!=0){
            format = filename.substring(idxFormat)
        }
        response.setHeader('Content-length', file.size().toString())
        response.contentType = 'image/'+format
        response.outputStream << file.getBytes()
        response.outputStream.flush()
    }
    def index(){
        render(view:"/index")
    }
    def synchronized upload(){
        Client entity = Client.findByEmail(session.cusername)
        MultipartFile multipartFile  = request.getFile("file")
        File dir = new File( grailsApplication.config.get("url_users") +UUID.randomUUID()+"-"+multipartFile.originalFilename)
        multipartFile.transferTo(dir)
        String filename = multipartFile.originalFilename
        entity.cheminPhotos.add(dir.getAbsolutePath())
        entity.save(flush:true)
        render 200
    }
    def logout(){
        session.busername = ""
        session.cusername = ""
        session.mdp =  ""
        session.invalidate()
        redirect(action: "index")
    }
    def display(String user,String mdp){
        def p = params.pagename
        if(user||p=="register"||p=="forgotten") {
            render(view: params.pagename)
        }else{
            redirect(action: "login")
        }
    }
}
