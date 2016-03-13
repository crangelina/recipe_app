
Meal.create(name: "Apple Pie",
            description: "Flaky, awesome deliciousness!",
            tag: "Snack",
            servings: "12",
            user_id: 1,
            remote_avatar_url: "http://images.edge-generalmills.com/a7a5665b-4b49-4454-91fd-95291cd3b433.jpg",
            :ingredients_attributes => [name: "sugar", amount: "1 cup"],
            :directions_attributes => [step: "Preheat oven to 425 degrees F (220 degrees C). Melt the butter in a saucepan. Stir in flour to form a paste. Add water, white sugar and brown sugar, and bring to a boil. Reduce temperature and let simmer."])

Ingredient.create(name: "butter",
                  amount: "2tbsp",
                  meal_id: "1")
Ingredient.create(name: "flour",
                  amount: "1/2 cup",
                  meal_id: "1")
Ingredient.create(name: "flour",
                  amount: "1/2 cup",
                  meal_id: "1")
Ingredient.create(name: "granny smith apples",
                  amount: "9",
                  meal_id: "1")

Direction.create(step: "Place the bottom crust in your pan. Fill with apples, mounded slightly. Cover with a lattice work crust. Gently pour the sugar and butter liquid over the crust. Pour slowly so that it does not run off.",
                 meal_id: "1")
Direction.create(step: "Bake 15 minutes in the preheated oven. Reduce the temperature to 350 degrees F (175 degrees C). Continue baking for 35 to 45 minutes, until apples are soft.",
                 meal_id: "1")

#-------------------------------------------------------

Meal.create(name: "Crock Pot Chili",
            description: "The slow cooker is a great way to make chili. This beefy chili is packed with beans, veggies, and spice.",
            tag: "Dinner",
            servings: "6",
            remote_avatar_url: "http://www.yourhomebasedmom.com/wp-content/uploads/2013/02/Crockpot-of-chili.jpg",
            :ingredients_attributes => [name: "ground beef", amount: "1 pound"],
            :directions_attributes => [step: "Place the beef in a skillet over medium heat, and cook until evenly brown. Drain grease."]
            )
Ingredient.create(name: "diced onion",
                  amount: "3/4 cup",
                  meal_id: "2")
Ingredient.create(name: "diced celery",
                  amount: "3/4 cup",
                  meal_id: "2")
Ingredient.create(name: "green bell pepper",
                  amount: "3/4 cup",
                  meal_id: "2")
Ingredient.create(name: "garlic",
                  amount: "2 cloves",
                  meal_id: "2")
Direction.create(step: "Place the beef in a slow cooker, and mix in onion, celery, green bell pepper, garlic, tomato puree, kidney beans, and cannellini beans. Season with chili powder, parsley, salt, basil, oregano, black pepper, and hot pepper sauce.",
                 meal_id: "2")
Direction.create(step: "Cover, and cook 8 hours on Low.",
                 meal_id: "2")

#-------------------------------------------------------

Meal.create(name: "Banana Bread",
            description: "This banana bread is moist and delicious with loads of banana flavor! Friends and family love my recipe and say it's by far the best! It's wonderful toasted!!",
            tag: "Breakfast",
            servings: "12",
            remote_avatar_url: "http://a.dilcdn.com/bl/wp-content/uploads/sites/8/2012/04/buttermilk-banana-bread.jpg",
            :ingredients_attributes => [name: "brown sugar", amount: "3/4 cup"],
            :directions_attributes => [step: "Preheat oven to 350 degrees F (175 degrees C)."]
            )
Ingredient.create(name: "all-purpose flour",
                  amount: "2 cups",
                  meal_id: "3")
Ingredient.create(name: "baking soda",
                  amount: "1 tsp",
                  meal_id: "3")
Ingredient.create(name: "salt",
                  amount: "1/4 tsp",
                  meal_id: "3")
Ingredient.create(name: "butter",
                  amount: "1/2 cup",
                  meal_id: "3")
Ingredient.create(name: "eggs (beaten)",
                  amount: "2",
                  meal_id: "3")
Ingredient.create(name: "bananas",
                  amount: "3",
                  meal_id: "3")
Direction.create(step: "Lightly grease a 9x5 inch loaf pan.",
                 meal_id: "3")
Direction.create(step: "In a large bowl, combine flour, baking soda and salt. In a separate bowl, cream together butter and brown sugar. Stir in eggs and mashed bananas until well blended.",
                 meal_id: "3")
Direction.create(step: "In a large bowl, combine flour, baking soda and salt. In a separate bowl, cream together butter and brown sugar. Stir in eggs and mashed bananas until well blended.",
                 meal_id: "3")
Direction.create(step: "Stir banana mixture into flour mixture; stir just to moisten. Pour batter into prepared loaf pan.",
                 meal_id: "3")
Direction.create(step: "Bake in preheated oven for 60 to 65 minutes, until a toothpick inserted into center of the loaf comes out clean. ",
                 meal_id: "3")

#-------------------------------------------------------

Meal.create(name: "Almond-Stuffed Chicken",
            description: "The nutty, cheesy filling spices up chicken breasts and is a snap to make. Serve with couscous and haricots verts.",
            tag: "Dinner",
            servings: "4",
            remote_avatar_url: "http://cf.bakeatmidnite.com/wp-content/uploads/2014/02/bacon-wrapped-stuffed-chicken-breast-43-o.jpg",
            :ingredients_attributes => [name: "garlic", amount: "2 cloves"],
            :directions_attributes => [step: "Combine minced garlic, 3 tablespoons almonds, and 2 tablespoons chopped fresh parsley in a small bowl. Set aside."]
            )
Ingredient.create(name: "almonds",
                  amount: "1/4 cup",
                  meal_id: "4")
Ingredient.create(name: "parsley",
                  amount: "3 tbsp",
                  meal_id: "4")
Ingredient.create(name: "chicken breasts",
                  amount: "4",
                  meal_id: "4")
Ingredient.create(name: "butter",
                  amount: "1 1/2 tsp",
                  meal_id: "4")
Direction.create(step: "Cut a horizontal slit through thickest portion of each breast half to form a pocket. Stuff 1 1/2 tablespoons almond mixture into each pocket; secure each pocket with a wooden pick. Sprinkle chicken with salt and pepper.",
                 meal_id: "4")
Direction.create(step: "Heat butter in a large nonstick skillet over medium heat. Add chicken to pan; cook 6 minutes on each side or until done. Remove from pan; cover and let stand 2 minutes. Top chicken with remaining 1 tablespoon almonds and remaining 1 tablespoon parsley.",
                 meal_id: "4")



