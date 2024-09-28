# frozen_string_literal: true

# this returns a creature
class Creature
  def initialize(name)
    puts 'A creature is being created.'
    @name = name
  end

  def fight
    'Punch to the chops!'
  end
end

# Add your code below!
class Dragon < Creature
  # def initialize(name)
  #   puts "A Dragon is being created."
  #   @name = name
  # end
end

puts Dragon.new('Eric')
