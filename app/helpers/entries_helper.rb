module EntriesHelper

def calculate_calories(list)
  sum = 0
  list.each do |x| 
    if x.meal && x.meal.nutrition && x.meal.nutrition.calories
      sum += x.meal.nutrition.calories
    end
    if x.nutrition && x.nutrition.calories
      sum += x.nutrition.calories
    end
  end
  sum
end

def calculate_protein(list)
  sum = 0
  list.each do |x| 
    if x.meal && x.meal.nutrition && x.meal.nutrition.protein
      sum += x.meal.nutrition.protein
    end
    if x.nutrition && x.nutrition.protein
      sum += x.nutrition.protein
    end
  end
  sum
end

def calculate_carbs(list)
  sum = 0
  list.each do |x| 
    if x.meal && x.meal.nutrition && x.meal.nutrition.carbs
      sum += x.meal.nutrition.carbs
    end
    if x.nutrition && x.nutrition.carbs
      sum += x.nutrition.carbs
    end
  end
  sum
end

def calculate_fat(list)
  sum = 0
  list.each do |x| 
    if x.meal && x.meal.nutrition && x.meal.nutrition.fat
      sum += x.meal.nutrition.fat
    end
    if x.nutrition && x.nutrition.fat
      sum += x.nutrition.fat
    end
  end
  sum
end

end
