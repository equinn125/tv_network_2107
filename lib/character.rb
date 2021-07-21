require'pry'
class Character
attr_reader :name, :actor, :salary, :character
  def initialize(character)

    @name =  character.fetch(:name)
    @actor = character.fetch(:actor)
    @salary = character.fetch(:salary)
    # binding.pry
  end
  # def create_character
  # end
end
