class Favorite < ActiveRecord::Base
  attr_accessible :user_id, :contact_id

  validates :user_id, :contact_id, :format => { :with => /[0-9]/ }

  belongs_to :user
  #belongs_to :contact
end
