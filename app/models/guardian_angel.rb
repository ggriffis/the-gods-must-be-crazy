class GuardianAngel < ActiveRecord::Base
  belongs_to :person
  has_one :god
end
