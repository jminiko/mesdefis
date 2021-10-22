jQuery(document).ready(function ($) {

    // reply modal
    $('body').on('click','[class^=ejmReplyModal]',function(e){

        e.preventDefault();

        let id = $(this).data('izimodal-id');
        let title = $(this).data('izimodal-title');
        let currentModal = '#ejmReplyModal-'+id;

        $(currentModal).iziModal({
            title: title,
            overlayClose: true,
            fullscreen: true,
            closeButton: true,
            zindex: 99999
        });

        $(currentModal).iziModal('open');


    });

    // iframe modal
    $('body').on('click','[class^=ejbIframeModal]',function(e){

        e.preventDefault();

        let title = $(this).attr('title');
        let link = $(this).attr('href');

        $('<div id="ejbIframeModal"></div>').appendTo('body');

        $('#ejbIframeModal').iziModal({
            title: title,
            overlayClose: true,
            fullscreen: true,
            closeButton: true,
            zindex: 99999,
            iframe: true,
            iframeURL: link,
            'onClosed': function(){
                $('#ejbIframeModal').remove();
            }
        });

        $('#ejbIframeModal').iziModal('open');

    });

    // experience, language .... modal
    jQuery('body').on('click', 'a[class^=ejmModal]', function (e) {

        e.preventDefault();

        let currentModal = $(this).attr('class').split(' ')[0];
        let link = $(this).attr('href');
        let titleAttr = $(this).attr('title');
        let type = currentModal.split('_')[1];

        $('#' + currentModal).iziModal({
            icon: jQuery(this).attr("data-modal-icon"),
            title: titleAttr,
            overlayClose: true,
            fullscreen: true,
            iframe: true,
            zindex: 99999,
            iframeHeight: 600,
            iframeURL: link,
            closeButton: true,
            afterRender: function(){
                $('#' + currentModal + '> div').addClass('jb_template')
            }

        });

        $('#' + currentModal).iziModal('open');


    });

    // contacts modal
    $('body').on('click', '[class^=ejmContactModal]', function (e) {

        e.preventDefault();

        let link = $(this).attr('href');
        let title = $(this).attr('title');

        $('<div id="ejmContactModal"></div>').appendTo('body');


        $('#ejmContactModal' ).iziModal({
            title: title,
            overlayClose: true,
            fullscreen: true,
            iframe: true,
            zindex: 99999,
            iframeURL: link,
            closeButton: true,
            onClosed: function () {
                jQuery("#ejmContactModal").remove();
            }

        });

        $('#ejmContactModal').iziModal('open');


    });

    // delete contact
    $('body').on('click','.ejmDeleteContact',function(e){

        e.preventDefault();

        let id = $(this).attr('data-contact-id');
        let confirmMessage = $(this).attr('data-contact-confirm');
        let sessionToken = $(this).attr('data-contact-token');

        if( confirm(confirmMessage) ){
            var url = Joomla.getOptions('system.paths').root+'/index.php?option=com_easyjobsmanager&view=advertiser&task=advertiser_edit.delete_contact';
            url += '&id=' + encodeURIComponent(id);
            url += '&'+sessionToken+'=1';

            var ajax = new Request.HTML({
                url:  url,
                method: 'GET',
                update: 'contacts_container'
            }).send();
        }
    });

});

window.ejb_refresh_list_contacts = function refresh_list_contacts() {
    $ = jQuery;
    $.ajax({
        method: "GET",
        url: 'index.php?option=com_easyjobsmanager&task=advertiser_edit.get_contact_list&tmpl=component',
    })
        .done(function (data) {
            $('#contact_list_container_inner', parent.document).html(data);
        });
}

window.ejb_refresh_list = function refresh_list(type) {
    $ = jQuery;
    $.ajax({method: "GET", url: 'index.php?option=com_easyjobsmanager&task=seeker_edit.get_list&type=' + type,})

        .done(function (data) {
            $('#' + type + '_container', parent.document).html(data);
        });
}

