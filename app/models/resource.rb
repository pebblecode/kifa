class Resource < ActiveRecord::Base

  attr_accessible :link, :name

  validates :link, 
    :presence => true, 
    :length => { 
      :maximum => 200 
    }
  validates :name, 
    :length => { 
      :maximum => 200 
    }

end
