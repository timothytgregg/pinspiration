class Reference < ActiveRecord::Base
  belongs_to :pin
  belongs_to :tag
end
