$(function() {

  var $directionsButton   = $("#more-directions-button");
  var $directionsWrapper  = $("#more-directions-wrapper");
  var $ingredientsButton  = $("#more-ingredients-button");
  var $ingredientsWrapper = $("#more-ingredients-wrapper");
  var directionIndex      = 3;
  var ingredientIndex     = 3;


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

});

