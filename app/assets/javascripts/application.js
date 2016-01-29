// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require bootstrap.min
//= require jquery.min
//= require bootstrap-table
//= require_tree .

$(document).ready(function() {
     /*$('#login').submit(function() {
         alert('e');
     });*/

     /* -- Module Brand */
    //alert('in application js');

     $(".dropdown-toggle").dropdown();


     $(function () {
        $('#table').bootstrapTable({
            idField: 'name',
            url: 'https://ruby-as-furni-febryhadinata.c9users.io/brands.json',
            columns: [{
                field: 'name',
                title: 'Name'
            }, {
                field: 'stargazers_count',
                title: 'Stars',
                editable: {
                    type: 'text'
                }
            }, {
                field: 'forks_count',
                title: 'Forks',
                editable: {
                    type: 'text'
                }
            }, {
                field: 'description',
                title: 'Description',
                editable: {
                    type: 'textarea'
                }
            }]
        });
        });


});