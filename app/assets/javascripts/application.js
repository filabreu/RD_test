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
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

function selectConditionField(elem) {
  var fields = $(elem).closest('.fields');
  if($(elem).val() == "state") {
    console.log($(elem).val());
    fields.find('.query_condition_condition_text').attr('disabled', 'disabled');
    fields.find('.query_condition_condition_select').removeAttr('disabled');
    fields.find('.query_condition_condition_text').parent().hide();
    fields.find('.query_condition_condition_select').parent().show();
  } else {
    console.log($(elem).val());
    fields.find('.query_condition_condition_text').removeAttr('disabled');
    fields.find('.query_condition_condition_select').attr('disabled', 'disabled');
    fields.find('.query_condition_condition_text').parent().show();
    fields.find('.query_condition_condition_select').parent().hide();
  }
}
