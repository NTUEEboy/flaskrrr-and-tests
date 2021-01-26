$('.login-btn').on('click', function (e) {
    let userInput = $('#user').val();
    let pwdInput = $('#pwd').val();
    let JSONdata = JSON.stringify({ "userInput": userInput, "pwdInput": pwdInput });

    $.ajax({
        url: '/login',
        type: 'POST',
        contentType: "application/json",
        data: JSONdata,
        success: function (data) {
            // Show the response
            $('.login-status').text(data.message)

            // Remove text color 
            if ($('.login-status').hasClass('text-danger')) {
                $('.login-status').removeClass('text-danger')
            }
            if ($('.login-status').hasClass('text-success')) {
                $('.login-status').removeClass('text-success')
            }

            // Define and add the text color 
            if (data.status == 'success') {
                $('.login-status').addClass('text-success');
            }
            else {
                $('.login-status').addClass('text-danger');
            }
        }
    });
});