jQuery(document).ready(function($){
    $('#jb_template .nav-tabs').click(function(){
        $(this).parent().parent().find('.active').removeClass('active');
    });
});