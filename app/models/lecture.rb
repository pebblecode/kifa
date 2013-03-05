class Lecture < ActiveRecord::Base

  attr_accessible :title, :lecturer

  belongs_to :lecturer, :class_name => User
  has_many :resources

  validates :title, :presence => true, :length => { :maximum => 200 }

  delegate :username, :to => :lecturer, :allow_nil => true
end
