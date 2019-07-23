// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery.min
//= require rails-ujs
//= require turbolinks
//= require_tree .


$(document).ready(function () {
    $('#submit').click(function () {
        var check = true;

        $("input:radio").each(function () {
            var name = $(this).attr("name");
            if ($("input:radio[name=" + name + "]:checked").length == 0) {
                check = false;
                $("#error_" + name).show();
                $("#error_" + name).html("Please select one option");
            }
        });

        if ($("#email").val() == "") {
            check = false;
            $("#email_error").show();
            $("#email_error").html("Please enter your email address");
        }

        if (check) {
            return true;
        } else {
            return false;
        }
    });

    $("input:radio").click(function () {
        var name = $(this).attr("name");
        if ($("input:radio[name=" + name + "]:checked").length > 0) {
            $("#error_" + name).html(" ");
            $("#error_" + name).hide();
        }
    });

    $("#email").blur(function () {
        if ($(this).val()) {
            $("#email_error").html(" ");
            $("#email_error").hide();
        }
    });
});

