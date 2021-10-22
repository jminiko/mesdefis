<!DOCTYPE html>
<html dir="ltr" slick-uniqueid="3" lang="en-gb">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <g:include view="layouts/header.gsp"/>
    </head>
    <body class="site helix-ultimate com-easyjobsmanager view-seeker_register layout-default task-none itemid-129 en-gb ltr sticky-header layout-fluid offcanvas-init offcanvs-position-right">

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
                                        <div id="system-message-container">
</div>
                                        <div class="com_easyjobsmanager" id="jb_template">
                                            <div class="page-header">
                                                <h1><span></span>Enregistrement Candidat</h1>
                                            </div>
                                            <p class="alert alert-info">Lorem Ipsum</p>
                                            <div class="accordion" id="accordion_candidateRegister">
                                                <div class="card">
                                                    <div class="card-header" id="headingOne">
                                                        <h2 class="mb-0"> <a href="${createLink(action:'index')}" class="btn btn-link btn-block text-left">J'ai déjà un identifiant, me logger</a> </h2>
                                                    </div>
                                                </div>
                                                <div class="card">
                                                    <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordion_candidateRegister">
                                                        <div class="card-body">
                                                            <form name="register_form" id="register_form" action="/central/register" method="post" autocomplete="off" class="form form-horizontal">
                                                                <div class="form-group">
                                                                    <label class=""></label>
                                                                    <div class="hint">
                                                                        les champs marqu&eacute; de * sont obligatoires
                                                                    </div>
                                                                </div>
                                                                <div class="form-group required ">
                                                                    <label for="email">E-mail *&nbsp;</label>
                                                                    <input type="text" class="form-control" name="email" id="email">
                                                                    <span class="help-inline form-text text-muted">Entrez un email valide/span>
                                                                </div>
                                                                <div class="form-group required ">
                                                                    <label for="motDePasse">Mot de passe *&nbsp;</label>
                                                                    <input type="password" class="form-control" name="motDePasse" id="motDePasse" value="">
                                                                    <span class="help-inline form-text text-muted">min. 6 caract&egrave;res</span>
                                                                </div>
                                                                <div class="form-group required ">
                                                                    <label for="nom">Nom *&nbsp;</label>
                                                                    <input type="text" class="form-control" name="nom" id="nom">
                                                                    <span class="help-inline form-text text-muted">min. 2 caract&egrave;res</span>
                                                                </div>
                                                                <div class="form-group required ">
                                                                    <label for="prenom">Pr&eacute;nom *&nbsp;</label>
                                                                    <input type="text" class="form-control" name="prenom" id="prenom">
                                                                    <span class="help-inline form-text text-muted">min. 2 caract&egrave;res</span>
                                                                </div>
                                                                <div class="form-group required ">
                                                                    <label for="telephone">T&eacute;l&eacute;phone *&nbsp;</label>
                                                                    <input type="text" class="form-control" name="telephone" id="telephone">
                                                                </div>
                                                                <div class="form-group required ">
                                                                    <label for="zoneGeographique">Localisation *&nbsp;</label>
                                                                    <div id="places_container" class="overflow-h">
                                                                        <select name="zoneGeographique" id="zoneGeographique" class="form-control">
                                                                            <option value="" selected="selected">- Zone géographique-</option>
                                                                            <option value="1">Paris</option>
                                                                            <option value="2">Marseille</option>
                                                                            <option value="3">Lyon</option>
                                                                            <option value="4">Lille</option>
                                                                            <option value="5">Nantes</option>
                                                                            <option value="6">Strasbourg</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <div class="form-check tos required ">
                                                                        <input class="form-check-input" type="checkbox" name="tos" id="tos" value="1">
                                                                        <label class="form-check-label" for="tos">
                                                                            J'accepte les CGU (conditions g&eacute;n&eacute;rales d'<utilisation></utilisation>)
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group mt-4">
                                                                    <input type="submit" class="btn btn-primary" value="Envoyer">
                                                                </div>
                                                            </form>
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
                <footer id="sp-footer">
                    <div class="container">
                        <div class="container-inner">
                            <div class="row">
                                <div id="sp-footer1" class="col-lg-12 ">
                                    <div class="sp-column ">
                                        <span class="sp-copyright">&copy; 2021</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>                 
            </div>
        </div>
    </body>
</html>
