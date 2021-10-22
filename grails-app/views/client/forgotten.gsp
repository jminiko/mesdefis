<!DOCTYPE html>
<html dir="ltr" lang="en-gb">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta name="robots" content="noindex, nofollow">
        <title>Mes D&eacute;fis</title>
        <asset:stylesheet href="font-awesome.css"/>
        <asset:stylesheet href="fa-v4-shims.css"/>
        <asset:stylesheet href="template.css"/>
        <asset:stylesheet href="default.css"/>
        <asset:stylesheet href="custom.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

        <link href="css/font-awesome.css" rel="stylesheet" type="text/css">
        <link href="css/fa-v4-shims.css" rel="stylesheet" type="text/css">
        <link href="css/template.css" rel="stylesheet" type="text/css">
        <link href="css/css.css" rel="stylesheet" type="text/css">
        <link href="css/custom.css" rel="stylesheet" type="text/css">

    </head>
    <body class="site helix-ultimate com-users view-login layout-default task-none itemid-0 en-gb ltr sticky-header layout-fluid offcanvas-init offcanvs-position-right">
        <div class="body-wrapper">
            <div class="body-innerwrapper">
                <g:include view="layouts/_head.gsp"/>
            </div>
                </div>                 
                <section id="sp-section-1">
                    <div class="row">
                        <div id="sp-title" class="col-lg-12 ">
                            <div class="sp-column "></div>
                        </div>
                    </div>
                </section>
                <section id="sp-main-body">
                    <div class="container">
                        <div class="container-inner">
                            <div class="row">
                                <main id="sp-component" class="col-lg-12 " role="main">
                                    <div class="sp-column ">
                                        <% if(message){%>
                                        <div id="system-message-container">
                                            <div id="system-message">
                                                <div class="alert alert-danger">
                                                    <a class="close" data-dismiss="alert" aria-label="">×</a>
                                                    <h4 class="alert-heading">Avertissement</h4>
                                                    <div>
                                                        <div>${message}</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <%}%>
                                        <div class="login">
                                            <div class="row justify-content-center">
                                                <div class="col-md-4">
                                                    <form action="/central/forgotten" method="post" class="form-validate">
                                                        <div class="form-group">
                                                            <label id="username-lbl" for="username" class="required">Email&nbsp;
                                                                <span class="star">&nbsp;*</span>
                                                            </label>                                                             
                                                            <input type="text" name="username" id="username" placeholder="email@mail.com" class="form-control validate-username required" size="25" required="required" aria-required="true" autofocus="" aria-invalid="false">
                                                        </div>
                                                        <div class="form-group">
                                                            <button type="submit" class="btn btn-primary btn-lg btn-block">Envoyer</button>
                                                        </div>
                                                    </form>
                                                    <div>
                                                        <div class="list-group">
                                                            <a class="list-group-item" href="/client/display?pagename=login">Se logger</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </main>
                            </div>
                        </div>
                    </div>
                </section>
                <g:include view="layouts/_footer.gsp"/>
            </div>
        </div>

    </body>
</html>
