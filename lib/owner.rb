class Owner
 attr_accessor :pets
 attr_reader :species, :name
 @@all = []

 def initialize(name)
   @name = name
   @species = "human"
   @@all << self
   @pets = {:cats => [], :dogs => []}
 end

 def self.all
   @@all
 end

 def self.count
   @@all.size
 end

 def self.reset_all
   @@all.clear
 end

 def say_species
   "I am a #{@species}."
 end

 def cats
   @pets[:cats].each do |cat|
     cat.owner == self
   end
 end

 def dogs
   @pets[:dogs].each do |dog|
     dog.owner == self
   end
 end

 def buy_cat(name_of_cat)
   @pets[:cats] << Cat.new(name_of_cat, self)
 end



 def buy_dog(name_of_dog)
   @pets[:dogs] << Dog.new(name_of_dog, self)
 end



 def list_pets
   "I have #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
 end

 def feed_cats
   @pets.collect do |species, instances|
     if species == :cats
       instances.each do |cat|
         cat.mood = "happy"
         cat.mood
       end
     end
   end
 end

 def walk_dogs(dog)
  @pets.collect do |species, instances|
    if species == :dogs
      instances.each do |dog|
        dog.mood = "happy"
      end
    end
  end
end

def sell_pets
  @pets.collect do |species, instances|
    instances.each do |pet|
      pet.mood = "nervous"
    end
    instances.clear
  end
end

end
