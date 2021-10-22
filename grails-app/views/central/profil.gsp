<!DOCTYPE html>
<html dir="ltr" lang="en-gb">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="canonical" href="https://demo-ejm.joomboost.com/registration">
    <!-- base href="https://demo-ejm.joomboost.com/registration" -->
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <g:include view="layouts/header.gsp"/>
</head>
<body class="site helix-ultimate com-easyjobsmanager view-role_chooser layout-default task-none itemid-133 en-gb ltr sticky-header layout-fluid offcanvas-init offcanvs-position-right">
<div class="body-innerwrapper">
    <g:include view="layouts/_menu.gsp"/>
<section id="sp-main-body">
    <div class="container">
        <div class="container-inner">
            <div class="row">
                <main id="sp-component" class="col-lg-12 " role="main">
                    <div class="sp-column ">
                        <div id="system-message-container">
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
                        </div>
                        <div class="com_easyjobsmanager" id="jb_template">
                            <form name="seeker_edit_form" id="seeker_edit_form" action="" method="post" autocomplete="off" class="form form-horizontal" enctype="multipart/form-data">
                                <div>
                                    <div style="display: inline-block;" class="float-right btn-group">
                                        <button type="submit" class="btn-sm btn btn-primary">
                                            <i class="fas fa-check"></i>Sauvegarder
                                        </button>

                                    </div>
                                    <div class="page-header mb-4">
                                        <h1 class="contentheading">Edit your Curriculum Vitae</h1>
                                    </div>
                                </div>

                                <div class="card mt-4">
                                    <div class="card-body">
                                        You can create a professional CV on this job portal, get more
                                        benefits for yourselves. The professional CV can also be downloaded in
                                        PDF format for your further use. To delete your profile, please contact
                                        us.
                                    </div>
                                </div>
                                <div class="card mt-4 shadow-sm">
                                    <div class="card-header">
                                        <h4 class="m-0"> <i class="fas fa-user"></i> Personal Info                </h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="mx-0 form-group">
                                            Fields marked * are required.
                                        </div>
                                        <div class="mx-0 form-group success">
                                            <label class="" for="title_before">Title before your name</label>
                                            <input type="text" class="form-control" name="title_before" id="title_before" value="Sir.">
                                            <span class="form-text text-muted help-inline" id="">Enter min. 2 characters</span>
                                        </div>
                                        <div class="mx-0 form-group required success">
                                            <label class="" for="first_name">First Name</label>
                                            <input type="text" class="form-control" name="first_name" id="first_name" value="Juan culin ">
                                            <span class="form-text text-muted help-inline" id="">Enter min. 2 characters</span>
                                        </div>
                                        <div class="mx-0 form-group required success">
                                            <label class="" for="last_name">Last Name</label>
                                            <input type="text" class="form-control" name="last_name" id="last_name" value="Hediondo ">
                                            <span class="form-text text-muted help-inline" id="">Enter min. 2 characters</span>
                                        </div>
                                        <div class="mx-0 form-group ">
                                            <label class="" for="title_after">Title after your name</label>
                                            <input type="text" class="form-control" name="title_after" id="title_after">
                                            <span class="form-text text-muted help-inline" id="">Enter min. 2 characters</span>
                                        </div>
                                        <div class="mx-0 form-group required ">
                                            <label class="" for="phone">Phone</label>
                                            <input class="form-control" type="text" name="phone" id="phone">
                                        </div>
                                        <div class="mx-0 form-group ">
                                            <label class="" for="avatar">Photo</label>
                                            <input type="file" name="avatar_new" id="avatar_new">
                                            <span class="form-text text-muted help-inline">Choose a new image file (type jpg / png / gif)</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="card mt-4 shadow-sm">
                                    <div class="card-header">
                                        <h4 class="m-0"> <i class="text-muted fas fa-lock"></i> Login Information                </h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="mx-0 form-group required success">
                                            <label class="" for="email">E-mail</label>
                                            <input class="form-control" type="text" name="email" id="email" value="candidate@test.com">
                                            <span class="form-text text-muted help-inline" id="">When changing the e-mail or password, enter the current password</span>
                                        </div>
                                        <div class="mx-0 form-group ">
                                            <label class="" for="password_old">Old Password</label>
                                            <input class="form-control" type="password" name="password_old" id="password_old" value="">
                                            <span class="form-text text-muted help-inline" id="">Enter the old password if you want to change the email or password</span>
                                        </div>
                                        <div class="mx-0 form-group ">
                                            <label class="" for="password">New Password</label>
                                            <input class="form-control" type="password" name="password" id="password" value="">
                                            <span class="form-text text-muted help-inline" id="">Leave it blank to keep the current password</span>
                                        </div>
                                        <div class="mx-0 form-group ">
                                            <label class="" for="password2">New Password Again</label>
                                            <input class="form-control" type="password" name="password2" id="password2" value="">
                                            <span class="form-text text-muted help-inline" id="">New password again (check spelling)</span>
                                        </div>
                                        <p class="lead"> <a class="btn btn-primary btn-lg btn-block" href="/central/display?pagename=login">Sauvegarder</a> </p>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </main>
            </div>
        </div>
    </div>
    </section>
    </div>
</div>
</body>
</html>
