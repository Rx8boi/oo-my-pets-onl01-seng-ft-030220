class Dog

@@dog = []
attr_accessor :mood, :owner
attr_reader :name

def initialize(name, owner)
  @owner = owner
  @name = name
  @mood = "nervous"
  @@dog << self
end

def self.mood
  @mood = mood
end

def self.all
  @@dog
end # code goes here
end
