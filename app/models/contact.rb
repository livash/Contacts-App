class Contact < ActiveRecord::Base
  attr_accessible :name, :email, :user_id, :phone, :address

  validates :name, :email, :user_id, presence: true
  validates :email, :format =>
                    { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/}


 # has_many :favorites,
  #has_many :favorites

  belongs_to :user
end

#Contact.first.favorites_ids