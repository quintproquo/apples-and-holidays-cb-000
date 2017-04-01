require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # return the second element in the 4th of July array
  value = ""
  holiday_supplies.each do |k, v|
    v.each do |l, u|
      if l == :fourth_of_july
        value = u[1]
      end
    end
  end
  value
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |k, v|
    v.each do |l, u|
      if k == :winter
        u << supply
      end
    end
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |k, v|
    v.each do |l, u|
      if k == :spring
        u << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
    holiday_hash[season] = {
      holiday_name => supply_array
    }

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  arr = []
  holiday_hash.each do |k, v|
    if k == :winter
      v.each do |l, u|
        u.collect do |i|
          arr << i
        end
      end
    end
  end
  arr

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |season, holiday|
    case season
      when :winter
        puts "Winter:"
        puts "  Christmas: #{holiday[:christmas].join(", ")}"
        puts "  New Years: #{holiday[:new_years].join(", ")}"
      when :summer
        puts "Summer:"
        puts "  Fourth Of July: #{holiday[:fourth_of_july].join(", ")}"
      when :fall
        puts "Fall:"
        puts "  Thanksgiving: #{holiday[:thanksgiving].join(", ")}"
      when :spring
        puts "Spring:"
        puts "  Memorial Day: #{holiday[:memorial_day].join(", ")}"
    end
  end
  #binding.pry

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday = []
  holiday_hash.each do |s, v|
    v.each do |h, i|
      if i.any? {|j| j == "BBQ"}
        holiday << h
      end
    end
  end
  holiday

end

holiday_hash = {
   :winter => {
     :christmas => ["Lights", "Wreath"],
     :new_years => ["Party Hats"]
   },
   :summer => {
     :fourth_of_july => ["Fireworks", "BBQ"]
   },
   :fall => {
     :thanksgiving => ["Turkey"]
   },
   :spring => {
     :memorial_day => ["BBQ"]
   }
 }

puts all_holidays_with_bbq(holiday_hash)
