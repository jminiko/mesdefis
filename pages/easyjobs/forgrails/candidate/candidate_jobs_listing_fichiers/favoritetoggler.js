/*
JS script that let you toggle favorite button with AJAX
Support job and seeker item types
 */

jQuery(document).ready(function ($) {

    $('[data-ejm-toggle=favorite]').on('click', function (e) {

        e.preventDefault();

        // clicked button
        var currentButton = $(this);

        // Ajax Link
        var ajaxLink = Joomla.getOptions('system.paths').root + "/index.php?option=com_easyjobsmanager&task=misc."

        // get data
        var newstate = parseInt($(this).data('ejm-newstate')); // favorite state
        var itemId = $(this).data('ejm-item-id'); // item id
        var itemType = $(this).data('ejm-item-type'); // item type (job, seeker ...)

        // set task
        if (newstate == 1) {
            var task = 'add_favorite_' + itemType
        } else {
            var task = 'remove_favorite_' + itemType
        }

        // Ajax Link params
        ajaxLink += task
        ajaxLink += '&id_'+itemType+'=' + itemId;
        ajaxLink += '&ajax=1';
        ajaxLink += '&' + Joomla.getOptions('csrf.token') + '=1';

        // disable button to avoid any accident clicks
        $(this).attr('disabled', 'disabled');

        // send AJAX request
        $.ajax({
            url: ajaxLink,
            method: 'POST'
        }).done(function (html) {

            // get new state again
            var newstate = parseInt(currentButton.attr('data-ejm-newstate'));

            // change button class and all it's duplicates
            if (newstate == 1) {
                currentButton.removeClass('btn-light').addClass('btn-warning')
            } else {
                currentButton.removeClass('btn-warning').addClass('btn-light')
            }

            // enable again button
            currentButton.removeAttr('disabled')

            // switch to new state
            currentButton.attr('data-ejm-newstate', (newstate == 1 ? 0 : 1))

            // update new title
            var newtitle = Joomla.JText._('COM_EASYJOBSMANAGER_FAVORITE_' + newstate);

            currentButton.attr({
                "title": newtitle,
                "data-original-title": newtitle // for bs tooltip
            });

            // update tooltip
            currentButton.tooltip('update');

        });

    });

});