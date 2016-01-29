@start = Date.today.at_beginning_of_week
@week = (@start..@start+5.days)
p @weekS