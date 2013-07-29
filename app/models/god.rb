class God < ActiveRecord::Base
  has_many :guardian_angels, :dependent => :delete_all
end
