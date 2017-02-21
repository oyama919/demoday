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
//= require jquery.turbolinks
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree
//= require jquery-ui
$(function (){
  var count = 0;
  function putTxt(count){
    $("#new_note").append('<form"><div class="draggable"><textarea name="note[note_texts_attributes]['+count+'][text]" id="note_note_texts_attributes_['+count+']_text" value="['+count+']" class="draggable_text notetext"></textarea></div><input type="hidden" name="note[note_texts_attributes]['+count+'][note_text_style]" id="note_note_texts_attributes_['+count+']_note_text_style"></form>');
  }
  $("#textBtn").click(function(){
    putTxt(count);
    count++;
    console.log(count);
    // console.log(document.URL);
    // history.replaceState('','',document.URL);
    $(".draggable").draggable();
    $(".draggable_text").draggable().resizable();
    console.log(document.getElementById("note_note_texts_attributes_["+(count-1)+"]_text").style.cssText);
    console.log(document.getElementById("note_note_texts_attributes_["+(count-1)+"]_note_text_style"));
        console.log(document.getElementById("note_note_texts_attributes_["+(count-1)+"]_note_text_style").value=document.getElementById("note_note_texts_attributes_["+(count-1)+"]_text").style.cssText);
  });

  $('#new_note').on('MutationObserver', function() {
  });
  // $("form").draggable();
  // $("textarea").draggable();
  // $(".draggable").draggable();
  console.log(document.getElementById("note_text_area"));
  // $("form").click(function (){
  //   history.replaceState('','',document.URL);
  //   console.log("click");
  // });

});
