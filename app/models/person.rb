class Person < ActiveRecord::Base

  has_one :guardian_angel
  has_one :god, :through => :guardian_angel

  has_many :posts

end
