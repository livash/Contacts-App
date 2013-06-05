class Favorite < ActiveRecord::Base
  attr_accessible :user_id, :contact_id

  belongs_to :user
  belongs_to :contact

  validates :user, :contact, :format => { :with => /[0-9]/ }
end
