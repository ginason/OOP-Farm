class Field
  attr_accessor :name, :hectare, :hec, :total_harvest

  @@new_field = []
  @@total_harvest =0
  @@status_harvest =0

  def initialize(name, hec)
    @name = name
    @hec = hec
    if @name == "corn"
      @hectare = 20 * @hec
    elsif @name == "wheat"
      @hectare = 30 * @hec
    end
    @hectare

  end

  def self.new_field(name, hec)

    @@new_field << Field.new(name, hec)
    puts "Added a #{name} field of #{hec} hectares!"

  end

  def self.status
    @@new_field.each do |body|
      puts "#{body.name} field is #{body.hec} hectares."
    end
    puts "The farm has #{@@total_harvest}harvested food so far."

  end

  def self.harvest
    @@new_field.each do |body|
      puts "Harvesting #{body.hectare}food from #{body.hec} hectare #{body.name} field."
      @@total_harvest = body.hectare + @@total_harvest
    end
    puts "The farm has #{@@total_harvest}  harvested food so far."

  end

  def self.relax
    puts "50 hectares of tall green stalks rustling in the breeze fill your horizon. The sun hangs low, casting an orange glow on a sea of 100 gectares of wheat."
  end



end
# p Field.status
# p Field.harvest
# p Field.new_field("corn", 50)
# p Field.status
# p Field.harvest
# p Field.new_field("wheat", 100)
# p Field.harvest
# p Field.relax
# p Field.new_field("corn", 200)
# p Field.harvest
# p Field.status
