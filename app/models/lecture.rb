class Lecture < ActiveRecord::Base

  attr_accessible :title

  validates :title, 
    :presence => true, 
    :length => { 
      :maximum => 200 
    }

end
