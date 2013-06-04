class User < ActiveRecord::Base
  attr_accessible :email, :name

   validates :name, :length => { :minimum => 2 }
  validates :email, :format =>
                    { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/}
  validates :email, :uniqueness => true
end
