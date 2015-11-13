class Pin < ActiveRecord::Base
  belongs_to :user
  belongs_to :board
  has_many :references
  has_many :tags, through: :references
end
