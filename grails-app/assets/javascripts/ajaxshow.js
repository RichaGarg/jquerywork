$(document)
    .ajaxStart(function() {
        console.log('show spinner')
        //$("#ajaxSpinnerImage").css('display','block');
    })
    .ajaxStop(function() {
        console.log('hide spinner')
        //$("#ajaxSpinnerImage").css('display','none v');
    });

$(document).ready(function() {
    $('.datepicker').datepicker();
});