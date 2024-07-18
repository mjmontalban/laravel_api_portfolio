$(document).ready(function() {
    console.log('jQuery is readyssss!');
    // Your custom jQuery code
    $('#myElement').click(function() {
        $.ajax({
            method: 'GET',
            url: '/api/fetch', // Note the /api prefix
            success: function(response) {
                console.log(response);
                // Handle the response
            },
            error: function(xhr, status, error) {
                console.error(error);
            }
        });
    });
});