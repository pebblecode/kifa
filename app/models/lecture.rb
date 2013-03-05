class Lecture < ActiveRecord::Base

  attr_accessible :title, :lecturer_id

  belongs_to :lecturer, :class_name => User

  validates :title,
    :presence => true,
    :length => {
      :maximum => 200
    }

  validates :lecturer, :presence => true
end
