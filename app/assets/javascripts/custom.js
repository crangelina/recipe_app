$(document).on('page:load', function() {

  var $directionsButton = $("#more-directions-button");
  var $directionsWrapper  = $("#more-directions-wrapper");
  var $ingredientsButton = $("#more-ingredients-button");
  var $ingredientsWrapper = $("#more-ingredients-wrapper")
  var directionIndex = 3;
  var ingredientIndex = 3;


  //------ DIRECTIONS --------//
  $directionsButton.on("click", function() {
    // create divs
    $divRow = $("<div>");
    $divRow.addClass("row");

    $divCol = $("<div>");
    $divCol.addClass("col-sm-6 col-sm-offset-3");

    $divFormGroup = $("<div>");
    $divFormGroup.addClass("form-group");

    $input = $("<textarea>", {
      class: "form-control",
      placeholder: "Step " + (directionIndex + 1),
      name: "meal[directions_attributes][" + directionIndex + "][step]",
      id: "meal_directions_attributes_" + directionIndex + "_step",
    });

    // append divs
    $directionsWrapper.append($divRow);
    $divRow.append($divCol);
    $divCol.append($divFormGroup);
    $divFormGroup.append($input);

    $input.focus();

    directionIndex++
  });

  //------ INGREDIENTS --------//
  $ingredientsButton.on("click", function() {
    // create divs
    $divRow = $("<div>");
    $divRow.addClass("row");

    $firstDivCol = $("<div>");
    $firstDivCol.addClass("col-sm-3 col-sm-offset-3");

    $secondDivCol = $("<div>");
    $secondDivCol.addClass("col-sm-3");

    $divFormGroup = $("<div>");
    $divFormGroup.addClass("form-group");

    $secondDivFormGroup = $("<div>");
    $secondDivFormGroup.addClass("form-group");

    $nameInput = $("<input>", {
      class: "form-control",
      type: "text",
      placeholder: "Name",
      name: "meal[ingredients_attributes][" + ingredientIndex + "][name]",
      id: "meal_ingredients_attributes_" + ingredientIndex + "_name",
    });

    $amountInput = $("<input>", {
      class: "form-control",
      type: "text",
      placeholder: "Amount",
      name: "meal[ingredients_attributes][" + ingredientIndex + "][amount]",
      id: "meal_ingredients_attributes_" + ingredientIndex + "_amount",
    });

    // append divs
    $ingredientsWrapper.append($divRow);
    $divRow.append($firstDivCol);
    $firstDivCol.append($divFormGroup);
    $divFormGroup.append($amountInput);
    $divRow.append($secondDivCol);
    $secondDivCol.append($secondDivFormGroup);
    $secondDivFormGroup.append($nameInput);

    $nameInput.focus();

    ingredientIndex++
  });

});

// DIRECTIONS:
//    <div class="row">
//      <div class="col-sm-6 col-sm-offset-3">
//        <div class="form-group">
//            <input>

// INGREDIENTS:
//    <div class="row">
//      <div class="col-sm-3 col-sm-offset-3">
//        <div class="form-group">
//           <input>
//        </div>
//      </div>

//       <div class="col-sm-3">  
//         <div class="form-group">
//           <input>
//         </div>
//       </div>
//    </div>