module EntriesHelper

  def calculate_nutrition(list, type)
    sum = 0
    list.each do |x| 
      if x.meal && x.meal.nutrition && x.meal.nutrition.send(type)
        sum += x.meal.nutrition.send(type)
      end
      if x.nutrition && x.nutrition.send(type)
        sum += x.nutrition.send(type)
      end
    end
    sum
  end


end
