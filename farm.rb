require_relative 'field.rb'
class Farm


  def initianlize

  end
  def main
    while true
      print_main
      user_selected = gets.to_s.chomp
      call_option(user_selected)
    end
  end
  def print_main
    puts "Options:"
    puts "field -> adds a new field"
    puts "harvest -> harvests crops and adds to total harvested"
    puts "status -> displays some information about the farm"
    puts "relax -> provides lovely descriptions of your fields"
    puts "exit -> exits the program"
  end
  def call_option(user_selected)
    case user_selected
    when "field" then farm_field
    when "status" then farm_status
    when "harvest" then farm_harvest
    when "relax" then farm_relax
    when "exit" then exit
    end
  end
  def farm_field
    puts "What kind of field is it: corn or wheat?"
    name = gets.chomp.to_s
    puts "how large is the field in hectares?"
    hec = gets.chomp.to_i
    Field.new_field(name, hec)
  end
  def farm_status
    Field.status
  end
  def farm_harvest
    Field.harvest
  end
  def farm_relax
    Field.relax
  end
  def exit
    exit
  end
end
