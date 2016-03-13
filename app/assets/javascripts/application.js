//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree 



$(function() {

  // Meals
  var $directionsButton   = $("#more-directions-button");
  var $directionsWrapper  = $("#more-directions-wrapper");
  var $ingredientsButton  = $("#more-ingredients-button");
  var $ingredientsWrapper = $("#more-ingredients-wrapper");
  var directionIndex      = 3;
  var ingredientIndex     = 3;

  // Entries
  var $listItem = $(".day-wrapper .list-item");




//-----------------------------------//
//           MEALS FORM
//----------------------------------//

  $("#ingredients-header").on("click", function() {
    $("#meal_ingredients_attributes_0_amount").focus();
  });

  $("#directions-header").on("click", function() {
    $("#meal_directions_attributes_0_step").focus();
  });

  $("#nutrition-header").on("click", function() {
    $("#meal_nutrition_attributes_calories").focus();
  });

  //------ DIRECTIONS --------//
  $directionsButton.on("click", function() {
    $html = JST["templates/directions-template"]({index: directionIndex});
    $directionsWrapper.append($html);

    directionIndex++
  });

  //------ INGREDIENTS --------//
  $ingredientsButton.on("click", function() {
    $html = JST["templates/ingredients-template"]({index: ingredientIndex});
    $ingredientsWrapper.append($html);

    ingredientIndex++
  });

  $('.modal-link').on('click', function() {
    var day = $(this).data('day');
    var tag = $(this).data('tag');

    $("#entry_day").val(day);
    $("#entry_tag").val(tag);                    
  });



//-----------------------------------//
//          ENTRIES INDEX
//----------------------------------//

  $listItem.on("click", function() {
    $(this).siblings(".toggleable").slideToggle();
  });



//-----------------------------------//
//          ENTRIES MODAL
//----------------------------------//
  $(".modal-link").on("click", function() {
    $(".select-chosen").hide();
    $(".quick-add-chosen").hide();
    $(".entries-modal").show();
  });

  $(".select").on("click", function() {
    $(".entries-modal").hide(500);
    $(".select-chosen").show(500);
  });

  $(".quick-add").on("click", function() {
    $(".entries-modal").hide(500);
    $(".quick-add-chosen").show(500);
  });

  $(".select2").select2({
    tags: true,
    tokenSeparators: [',', ' ']
  })


});