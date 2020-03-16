class Course
  
  attr_accessor :title, :schedule, :description
  
  @@all = []
  
  def initialize 
    @@all << self
  end
  
  self.all 
    @@all
  end
  
  self.reset_all
    @@all.clear
  end
  
end

