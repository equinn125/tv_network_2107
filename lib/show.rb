require './lib/character'
class Show
  attr_reader :name, :show_creator, :characters
  attr_accessor :character
  def initialize(name, show_creator,characters)
    @name = name
    @show_creator = show_creator
    @characters = []
    # binding.pry
  end
  def add_character(character)
    @characters << character
  end
  def total_salary
    @characters[salary].to_i
  end
end
