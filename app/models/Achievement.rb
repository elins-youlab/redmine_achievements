class Achievement < ActiveRecord::Base
  validates :name, presence: true
  validates :prize, presence: true, numericality: true
  validates :action, presence: true
end
