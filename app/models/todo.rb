class Todo < ActiveRecord::Base
  validates :name, :length => {:minimum => 5}
end