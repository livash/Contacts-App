class User < ActiveRecord::Base
  attr_accessible :name, :email

  validates :name, :email, presence: true
  validates :email, :format =>
                    { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/}
  validates :email, :uniqueness => true

  has_many :contacts

  has_many :favorites

  has_many :favorite_contacts, through: :favorites, source: :contact
end
