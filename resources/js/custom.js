$(document).ready(function() {
    console.log('jQuery is readyssss!');
    // Your custom jQuery code
    $(document).on('click', '#login-form', function(evt) {
        evt.preventDefault();

        var form_data = new FormData(this);
        $.ajax({
            method: 'POST',
            url: '/api/login',
            data: form_data,
            contentType: false,
            processData: false,
            success: function(response) {
                localStorage.setItem('axhr_token', response.data.token.plainTextToken)

                const axhr_token = localStorage.getItem('axhr_token');
                    
            },
            error: function(xhr, status, error) {
                console.error(error);
            }
        });
    });
});