<!DOCTYPE html>
<html dir="ltr" lang="en-gb">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="canonical" href="https://demo-ejm.joomboost.com/registration">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <g:include view="layouts/header.gsp"/>
    <script src="${resource(dir: 'javascripts',file:'dropzone.min.js')}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/galleria/1.5.7/galleria.min.js"></script>
    <style>
    .galleria{ width: 700px; height: 400px; background: #000 }
    </style>
</head>
<body class="site helix-ultimate com-easyjobsmanager view-role_chooser layout-default task-none itemid-133 en-gb ltr sticky-header layout-fluid offcanvas-init offcanvs-position-right">
<div class="body-innerwrapper">
    <g:include view="layouts/_menuc.gsp"/>
<section id="sp-main-body">
    <div class="container">
        <div class="container-inner">
            <div class="row">
                <main id="sp-component" class="col-lg-12 " role="main">
                    <div class="sp-column ">
                        <%if(message) { %>}
                        <div id="system-message-container">
                            <div id="system-message">
                                <div class="alert alert-danger">
                                    <a class="close" data-dismiss="alert" aria-label="">×</a>
                                    <h4 class="alert-heading">Warning</h4>
                                    <div>
                                        <div>You are currently logged-in, fill the necessary data
                                        to get your candidate profile ready. To register new account you have
                                        to log-out first.
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%}%>
                        </div>
                        <div class="com_easyjobsmanager" id="jb_template">

                                <div>
                                    <div style="display: inline-block;" class="float-right btn-group">
                                        <button type="submit" class="btn-sm btn btn-primary">
                                            <i class="fas fa-check"></i> Save
                                        </button>
                                        <a class="btn btn-secondary btn-sm" href="https://demo-ejm.joomboost.com/component/easyjobsmanager/?view=seeker_dashboard"><i class="fas fa-arrow-right"></i> Back to Profile                </a>
                                    </div>
                                    <div class="page-header mb-4">
                                        <h1 class="contentheading">Edit your Curriculum Vitae</h1>
                                    </div>
                                </div>
                                <div class="card mt-4">
                                    <div class="card-body">
                                        <% com.imetyou.Client entity = com.imetyou.Client.findByEmail(session.cusername) %>
                                        <div class="galleria">
                                        <g:each in="${entity.cheminPhotos}" status="index" var="cheminPhoto">

                                            <img src="${createLink(action:"renderImage",params:[index:index])}"/>
                                        </g:each>
                                    </div>
                                        <script>
                                            (function() {
                                                Galleria.loadTheme('https://cdnjs.cloudflare.com/ajax/libs/galleria/1.5.7/themes/classic/galleria.classic.min.js');
                                                Galleria.run('.galleria');
                                            }());
                                        </script>
                                    </div>
                                    <div><a href="${createLink(action:"deleteimg")}"> Supprimer les image</a></div>
                                </div>
                                <div class="card mt-4">
                                    <div class="card-body">
                                        Remplissez ici vos diverses images li&eacute;es &agrave; votre compte

                                        <div id="actions" class="row">
                                            <div class="col-lg-7">
                                                <!-- The fileinput-button span is used to style the file input field as button -->
                                                <span class="btn btn-success fileinput-button">
                                                    <i class="glyphicon glyphicon-plus"></i>
                                                    <span>Add files...</span>
                                                </span>
                                                <button type="submit" class="btn btn-primary start">
                                                    <i class="glyphicon glyphicon-upload"></i>
                                                    <span>Start upload</span>
                                                </button>
                                                <button type="reset" class="btn btn-warning cancel">
                                                    <i class="glyphicon glyphicon-ban-circle"></i>
                                                    <span>Cancel upload</span>
                                                </button>
                                            </div>

                                            <div class="col-lg-5">
                                                <!-- The global file processing state -->
                                                <span class="fileupload-process">
                                                    <div
                                                            id="total-progress"
                                                            class="progress active"
                                                            aria-valuemin="0"
                                                            aria-valuemax="100"
                                                            aria-valuenow="0"
                                                    >
                                                        <div
                                                                class="progress-bar progress-bar-striped progress-bar-success"
                                                                role="progressbar"
                                                                style="width: 0%"
                                                                data-dz-uploadprogress
                                                        ></div>
                                                    </div>
                                                </span>
                                            </div>
                                        </div>

                                        <div class="table table-striped">
                                            <div id="template" class="file-row">
                                                <!-- This is used as the file preview template -->
                                                <div>
                                                    <span class="preview"><img data-dz-thumbnail /></span>
                                                </div>
                                                <div>
                                                    <p class="name" data-dz-name></p>
                                                    <strong class="error text-danger" data-dz-errormessage></strong>
                                                </div>
                                                <div>
                                                    <p class="size" data-dz-size></p>
                                                    <div class="progress active" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0">
                                                        <div
                                                                class="progress-bar progress-bar-striped progress-bar-animated progress-bar-success"
                                                                style="width: 0%"
                                                                role="progressbar"
                                                                data-dz-uploadprogress
                                                        ></div>
                                                    </div>
                                                </div>
                                                <div>
                                                    <button type="button" class="btn btn-primary start">
                                                        <i class="glyphicon glyphicon-upload"></i>
                                                        <span>Start</span>
                                                    </button>
                                                    <button type="button" data-dz-remove class="btn btn-warning cancel">
                                                        <i class="glyphicon glyphicon-ban-circle"></i>
                                                        <span>Cancel</span>
                                                    </button>
                                                    <button type="button" data-dz-remove class="btn btn-danger delete">
                                                        <i class="glyphicon glyphicon-trash"></i>
                                                        <span>Delete</span>
                                                    </button>
                                                </div>
                                            </div>
                                            <div id="previews"></div>
                                        </div>

                                        <script>
                                            // Get the template HTML and remove it from the doument.
                                            var previewNode = document.querySelector("#template");
                                            previewNode.id = "";
                                            var previewTemplate = previewNode.parentNode.innerHTML;
                                            previewNode.parentNode.removeChild(previewNode);

                                            var myDropzone = new Dropzone(document.body, { // Make the whole body a dropzone
                                                url: "/client/upload", // Set the url
                                                thumbnailWidth: 80,
                                                thumbnailHeight: 80,
                                                parallelUploads: 20,
                                                paramName: "file",
                                                previewTemplate: previewTemplate,
                                                autoQueue: false, // Make sure the files aren't queued until manually added
                                                previewsContainer: "#previews", // Define the container to display the previews
                                                clickable: ".fileinput-button" // Define the element that should be used as click trigger to select files.
                                            });

                                            myDropzone.on("addedfile", function(file) {
                                                // Hookup the start button
                                                file.previewElement.querySelector(".start").onclick = function() { myDropzone.enqueueFile(file); };
                                            });

                                            // Update the total progress bar
                                            myDropzone.on("totaluploadprogress", function(progress) {
                                                document.querySelector("#total-progress .progress-bar").style.width = progress + "%";
                                            });

                                            myDropzone.on("sending", function(file) {
                                                // Show the total progress bar when upload starts
                                                document.querySelector("#total-progress").style.opacity = "1";
                                                // And disable the start button
                                                file.previewElement.querySelector(".start").setAttribute("disabled", "disabled");
                                            });

                                            // Hide the total progress bar when nothing's uploading anymore
                                            myDropzone.on("queuecomplete", function(progress) {
                                                document.querySelector("#total-progress").style.opacity = "0";
                                                document.location="${createLink(action:'display',controller:'client',params:['pagename':'profil'])}";
                                            });

                                            // Setup the buttons for all transfers
                                            // The "add files" button doesn't need to be setup because the config
                                            // `clickable` has already been specified.
                                            document.querySelector("#actions .start").onclick = function() {
                                                myDropzone.enqueueFiles(myDropzone.getFilesWithStatus(Dropzone.ADDED));
                                            };
                                            document.querySelector("#actions .cancel").onclick = function() {
                                                myDropzone.removeAllFiles(true);
                                            };
                                        </script>
                                    </div>
                                </div>
                            <form name="seeker_edit_form" id="seeker_edit_form" action="" method="post" autocomplete="off" class="form form-horizontal">
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
