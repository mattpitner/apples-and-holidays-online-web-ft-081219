require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  christmas = holiday_hash[:winter][:christmas]
  new_years2 = holiday_hash[:winter][:new_years]
  christmas.push("Balloons")
  new_years2.push("Balloons")
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |holiday, decoriatons|
    decoriatons << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash[:spring][:memorial_day].push << supply 
end 

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  
  holiday_hash[season][holiday_name] = supply_array 
  

end

def all_winter_holiday_supplies(holiday_hash)
  
 holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each do |seasons, hash_holidays|
    puts "#{seasons.to_s.capitalize}:"
    hash_holidays.each do |holiday, array_supplies|
     capt_array = holiday.to_s.split("_").map do |word|
        word.capitalize
      end 
      puts "  #{capt_array.join(" ")}: #{array_supplies.join(", ")}"
    end
  end 

end

def all_holidays_with_bbq(holiday_hash)
holiday_hash.map do |season, holiday|
  holiday.map do |holiday, supply|
   holiday if supply.include?("BBQ") 
    end
  end.flatten.compact 
end 




#holidays.map { |holiday, supplies| holiday if supplies.include?("BBQ"
#)}







