require 'pry'
class Owner
  # code goes here

  attr_reader :species
  attr_accessor :name, :pets
  @@all = []
  @@counter = 0

  def initialize(species)
    @species = species
    @@all << self
    @@counter +=1
    total_owners = @@counter
    @pets = {:fishes =>[], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@counter = 0
  end

  def self.count
    @@counter
  end

  def say_species
    "I am a #{species}."
  end
  
  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
    
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |dog| 
    dog.mood = "happy"
    end
  end
  
  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |species, pets|
      pets.each do |pet|
      pet.mood = "nervous"
      end
    end
    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

  
end

