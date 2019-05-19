class Section < ActiveRecord::Base
  validates :name, presence: true
  validates :achievements_list, presence: true
end