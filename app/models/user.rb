class User < ActiveRecord::Base
  attr_accessor :token
  attr_accessible :name, :email, :password, :token

  validates :name, :email, presence: true
  validates :email, :format =>
                    { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/}
  validates :email, :uniqueness => true

  has_many :contacts

  has_many :favorites

  has_many :favorite_contacts, through: :favorites, source: :contact

  # def self.generate_access_token
  #   SecureRandom.base64
  # end
end
