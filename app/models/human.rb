class Human < ActiveRecord::Base
  self.table_name = "humans"

  has_one :guardian_angel
  has_one :god, :through => :guardian_angel

end
