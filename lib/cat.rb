class Cat
@@cats = []
  attr_accessor :mood, :owner
  attr_reader :name

  def initialize(name, owner)
    @name = name
    @owner = owner
    @@cats << self
    @mood = 'nervous'
  end

  def self.all
    @@cats
  end

  end
