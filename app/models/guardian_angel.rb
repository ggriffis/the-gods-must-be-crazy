class GuardianAngel < ActiveRecord::Base
  belongs_to :human
  has_one :god
end
