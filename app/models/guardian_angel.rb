class GuardianAngel < ActiveRecord::Base
  belongs_to :person
  belongs_to :god
end
