require './lib/character'
require './lib/show'
require 'pry'

RSpec.describe Show do
  it "exists" do
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
    expect(knight_rider).to be_a(Show)
  end
  it "has a name" do
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
    expect(knight_rider.name).to eq("Knight Rider")
  end
  it "has a creatpr" do
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
    expect(knight_rider.show_creator).to eq("Glen Larson")
  end
  it "has a characters" do
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
    knight_rider.add_character(michael_knight)
    knight_rider.add_character(kitt)
    expect(knight_rider.characters).to eq([michael_knight,kitt])
  end
  it "can tell total salary" do
      kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
      michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
      knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
      knight_rider.add_character(michael_knight)
      knight_rider.add_character(kitt)
      expect(knight_rider.total_salary).to eq(2600000)
  end
end
