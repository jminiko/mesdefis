jQuery(document).ready(function($){
    $('.jobs-filters').on('click','button#ejm-clear-filter',function(){
        $('.jobs-filters .form-control').val('');
        $('input[name="reset_filters"]').val(1);
        document.cookie = "ejm_latlon=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
        $('#adminForm.jobsFilterForm').submit();
    });
});