class Tag < ActiveRecord::Base
  has_many :references
  has_many :pins, through: :references
end
