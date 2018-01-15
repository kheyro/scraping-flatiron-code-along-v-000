class Course
  attr_accessor :title, :schedule, :description

  @@all = []

  def initialize
    @@all << self
  end

  def sall
    @@all
  end

  def reset_all
    @@all.clear
  end

end
