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
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .

// $(document).ready(function(){
//     $("#sendReqBtn").on("click", function(){
//         var entry = $('meta[name=csrf-token]').attr('content');
//         $.ajax({
//             url:"/mail",
//             type: "POST",
//             data: { 
//                 mail: {
//                     name: $("#senderName").val(),
//                     email: $("#senderEmail").val(),
//                     phone: $("#senderPhone").val(),
//                     message: $("#messageText").val()
//                 }
//             },
//             headers : {
//                 'X-CSRF-TOKEN': entry
//             },
//             success: function(data) {
//                 console.log("SENT!");
//             }
//         });
//     });
// });
