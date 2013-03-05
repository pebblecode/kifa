class Resource < ActiveRecord::Base

  attr_accessible :link, :name

  belongs_to :lecture

  validates :name, :length => { :maximum => 200 }
  validates :lecture, :presence => true
  validates :link,
    :presence => true,
    :length => { :maximum => 200 },
    :format => {
      :with => /^(http|https):\/\/|[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,6}(:[0-9]{1,5})?(\/.*)?$/ix,
      :message => 'Only valid URLs allowed' }
end
