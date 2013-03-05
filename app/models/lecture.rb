class Lecture < ActiveRecord::Base

  attr_accessible :title, :lecturer

  belongs_to :lecturer, :class_name => User

  validates :title,
    :presence => true,
    :length => {
      :maximum => 200
    }

end
