class Contact < ActiveRecord::Base
  attr_accessible :name, :email, :user_id, :phone, :address

  belongs_to :user

  validates :name, :email, :user, presence: true
  validates :email, :format =>
                    { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/}
end
