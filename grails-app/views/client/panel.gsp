<!DOCTYPE html>
<html dir="ltr" lang="en-gb">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="canonical" href="https://demo-ejm.joomboost.com/">
        <!-- base href="https://demo-ejm.joomboost.com/" -->
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta name="robots" content="noindex, nofollow">
        <title>Mes D&eacute;fis</title>
        <g:include view="layouts/header.gsp"/>
    </head>
    <body class="site helix-ultimate com-easyjobsmanager view-jobs layout-default task-none itemid-224 en-gb ltr sticky-header layout-fluid offcanvas-init offcanvs-position-right">
        <div class="body-wrapper">
            <div class="body-innerwrapper">
                <g:include view="layouts/_menuc.gsp"/>

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
                                            <div class="page-header mb-4">
                                                <h1>Jobs List (Horizontal)</h1>
                                            </div>
                                            <form class="form jobsFilterForm" id="adminForm" action="/" method="post">
                                                <input type="hidden" name="option" value="com_easyjobsmanager">
                                                <input type="hidden" name="view" value="jobs">
                                                <input type="hidden" name="task" value="">
                                                <input type="hidden" name="filter_advertiser" value="">
                                                <input type="hidden" name="filter_order" id="filter_order" value="j.publish_up">
                                                <input type="hidden" name="filter_order_Dir" id="filter_order_Dir" value="DESC">
                                                <input type="hidden" name="reset_filters" value="0">
                                                <div class="filters jobs-filters mb-4 card">
                                                    <div class="card-body">
                                                        <div class="form-row">
                                                            <div class="col mb-3">
                                                                <input class="filter_search form-control" type="text" name="filter_search" id="filter_search" placeholder="Keyword...">
                                                            </div>
                                                        </div>
                                                        <div class="form-row">
                                                            <div class="col-md-3 mb-3 mb-md-0">
                                                                <select id="filter_place" name="filter_place" class="form-control custom-select">
                                                                    <option value="0" data-latitude="0.000000" data-longitude="0.000000" selected="selected">- Location -</option>
                                                                    <option value="6" data-latitude="0.000000" data-longitude="0.000000">Cairo</option>
                                                                    <option value="3" data-latitude="0.000000" data-longitude="0.000000">Casablanca</option>
                                                                    <option value="9" data-latitude="0.000000" data-longitude="0.000000">Dubai</option>
                                                                    <option value="8" data-latitude="0.000000" data-longitude="0.000000">London</option>
                                                                    <option value="7" data-latitude="0.000000" data-longitude="0.000000">Munich</option>
                                                                    <option value="1" data-latitude="0.000000" data-longitude="0.000000">New Oreanls</option>
                                                                    <option value="2" data-latitude="0.000000" data-longitude="0.000000">Paris</option>
                                                                    <option value="4" data-latitude="0.000000" data-longitude="0.000000">Shanghai</option>
                                                                    <option value="5" data-latitude="0.000000" data-longitude="0.000000">Tokyo</option>
                                                                </select>
                                                            </div>
                                                            <div class="col-md-3 mb-3 mb-md-0">
                                                                <select class="form-control custom-select" name="filter_field" id="filter_field">
                                                                    <option value="" selected="selected">- Field -</option>
                                                                    <option value="1">Architecture</option>
                                                                    <option value="11">Beauty and Fashion</option>
                                                                    <option value="15">Community Services</option>
                                                                    <option value="14">Construction and Building</option>
                                                                    <option value="7">Customer Service and Call Center</option>
                                                                    <option value="2">Engineering</option>
                                                                    <option value="12">Finance and Investment</option>
                                                                    <option value="13">Hospitality and Tourism</option>
                                                                    <option value="3">Human Resources and Recruitment</option>
                                                                    <option value="4">Information Technology </option>
                                                                    <option value="5">Management</option>
                                                                    <option value="6">Marketing and PR</option>
                                                                    <option value="8">Purchasing and Procurement</option>
                                                                    <option value="9">Quality Control</option>
                                                                    <option value="10">Teaching and Academics </option>
                                                                </select>
                                                            </div>
                                                            <div class="col-md-3 mb-3 mb-md-0">
                                                                <select class="form-control custom-select" name="filter_contract_type" id="filter_contract_type">
                                                                    <option value="" selected="selected">- Time -</option>
                                                                    <option value="4">Casual workers</option>
                                                                    <option value="3">Fixed-term contract</option>
                                                                    <option value="2">Flexi-time</option>
                                                                    <option value="1">Full-time</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="card-footer">
                                                        <div class="row">
                                                            <div class="col-6 col-md-8">
                                                                <button id="filterJobs" class="btn btn-sm btn-primary" type="submit">
                                                                    <i class="fas fa-filter"></i> Filter                    
                                                                </button>
                                                                <button id="ejm-clear-filter" class="clear-filter btn btn-sm btn-danger" type="button">
                                                                    <i class="fas fa-times"></i> Reset                    
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                            <div class="card mb-4 contract-type-1">
                                                <div class="card-body d-block d-md-flex">
                                                    <div class="d-sm-block flex-md-shrink-1 pr-md-3 mb-3 mb-md-0">
                                                        <a href="https://demo-ejm.joomboost.com/job/7-accommodation-director"> <img src="candidate_jobs_listing_fichiers/logo_5b59bd111768e.jpg" alt="logo"> </a>
                                                    </div>
                                                    <div class="w-100">
                                                        <div class="card-title">
                                                            <div id="ejm-toggle-favorite-7" class="d-inline-block float-right">
                                                                <button class="btn btn-sm btn-warning" data-ejm-toggle="favorite" data-ejm-newstate="0" data-ejm-item-id="7" data-ejm-item-type="job" data-toggle="tooltip" title="" data-original-title="Remove from Favourites	">
                                                                    <i class="far fa-star"></i>
                                                                </button>
                                                            </div>
                                                            <h5 class="m-0"> <a href="https://demo-ejm.joomboost.com/job/7-accommodation-director">
				            Accommodation Director                        </a> </h5>
                                                        </div>
                                                        <p class="jb-description m-0">
		            &nbsp;Work with budgets, planning, creating schedules and 
manage day-to-day operations. &nbsp;Deal with maintenance issues, 
shortages in equipment, renovations and all logistic procedures. 
&nbsp;Ensure that...                </p>
                                                        <p class="m-0 pt-3 text-muted">
			            By company <strong><a href="https://demo-ejm.joomboost.com/advertiser/520-plumes-co">Plumes co.</a></strong> </p>
                                                    </div>
                                                </div>
                                                <div class="card-footer bg-white">
                                                    <ul class="list-inline m-0 p-0">
                                                        <li class="list-inline-item bg-light py-1 px-2 mr-0 mr-md-2 d-block d-sm-block d-md-inline-block">
                                                            <i class="fas fa-calendar mr-2"></i>25 July 2019                
                                                        </li>
                                                        <li class="list-inline-item bg-light py-1 px-2 mt-1 mt-md-0 mr-0 mr-md-2 d-block d-sm-block d-md-inline-block">
                                                            <i class="fas fa-info-circle  mr-2"></i>
                                                            Hospitality and Tourism                    
                                                        </li>
                                                        <li class="list-inline-item bg-light py-1 px-2 mt-1 mt-md-0 mr-0 mr-md-2 d-block d-sm-block d-md-inline-block">
                                                            <i class="fas fa-map-marker mr-2"></i>London                    
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="card mb-4 contract-type-2">
                                                <div class="card-body d-block d-md-flex">
                                                    <div class="d-sm-block flex-md-shrink-1 pr-md-3 mb-3 mb-md-0">
                                                        <a href="https://demo-ejm.joomboost.com/job/6-nurse-dental-experience"> <img src="candidate_jobs_listing_fichiers/logo_5b5798fd3b5e6.png" alt="logo"> </a>
                                                    </div>
                                                    <div class="w-100">
                                                        <div class="card-title">
                                                            <div id="ejm-toggle-favorite-6" class="d-inline-block float-right">
                                                                <button class="btn btn-sm btn-light" data-ejm-toggle="favorite" data-ejm-newstate="1" data-ejm-item-id="6" data-ejm-item-type="job" data-toggle="tooltip" title="" data-original-title="Add to Favourites	">
                                                                    <i class="far fa-star"></i>
                                                                </button>
                                                            </div>
                                                            <h5 class="m-0"> <a href="https://demo-ejm.joomboost.com/job/6-nurse-dental-experience">
				            Nurse - Dental Experience                        </a> </h5>
                                                        </div>
                                                        <p class="jb-description m-0">
		            lorem ipsum jobdesc1          </p>
                                                        <p class="m-0 pt-3 text-muted">
			            By company <strong><a href="https://demo-ejm.joomboost.com/advertiser/521-icas">ICAS</a></strong> </p>
                                                    </div>
                                                </div>
                                                <div class="card-footer bg-white">
                                                    <ul class="list-inline m-0 p-0">
                                                        <li class="list-inline-item bg-light py-1 px-2 mr-0 mr-md-2 d-block d-sm-block d-md-inline-block">
                                                            <i class="fas fa-calendar mr-2"></i>25 July 2019                
                                                        </li>
                                                        <li class="list-inline-item bg-light py-1 px-2 mt-1 mt-md-0 mr-0 mr-md-2 d-block d-sm-block d-md-inline-block">
                                                            <i class="fas fa-info-circle  mr-2"></i>
                                                            Beauty and Fashion                    
                                                        </li>
                                                        <li class="list-inline-item bg-light py-1 px-2 mt-1 mt-md-0 mr-0 mr-md-2 d-block d-sm-block d-md-inline-block">
                                                            <i class="fas fa-map-marker mr-2"></i>Casablanca                    
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="pagination d-flex mt-3">
                                                <div class="flex-grow-1">
                                                    <ul class="pagination">
                                                        <li class="page-item active">
                                                            <a class="page-link">1</a>
                                                        </li>
                                                        <li class="page-item">
                                                            <a class="page-link " href="https://demo-ejm.joomboost.com/?start=6" title="2">2</a>
                                                        </li>
                                                        <li class="page-item">
                                                            <a class="page-link next" href="https://demo-ejm.joomboost.com/?start=6" title="»">»</a>
                                                        </li>
                                                        <li class="page-item">
                                                            <a class="page-link " href="https://demo-ejm.joomboost.com/?start=6" title="End">End</a>
                                                        </li>
                                                    </ul>                                                     
                                                </div>
                                                <div class="item-s align-self-center"> Page 1 of 2 </div>
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
                                        <span class="sp-copyright">© 2018 Your Company. Designed by <a target="_blank" href="https://www.joomshaper.com/">JoomShaper</a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>                 
            </div>
        </div>
        <!-- Off Canvas Menu -->
        <div class="offcanvas-overlay"></div>
        <div class="offcanvas-menu">
            <a href="#" class="close-offcanvas"><span class="fa fa-remove"></span></a>
            <div class="offcanvas-inner">
                <p class="alert alert-warning">
                    Publish the Menu module to "offcanvas" position. Here you can publish other modules as well. <br> <a target="_blank" href="https://www.joomshaper.com/documentation/helix-framework/helixultimate#documentation-heading-5_13">Learn More.</a> </p>
            </div>
        </div>
        <!-- Go to top -->
        <a href="#" class="sp-scroll-up" aria-label="Scroll Up"><span class="fa fa-chevron-up" aria-hidden="true"></span></a>
    </body>
</html>
