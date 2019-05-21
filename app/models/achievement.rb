class Achievement < ActiveRecord::Base
  validates :name, presence: true
  validates :prize, presence: true, numericality: true

  has_many :achievement_relations
  has_many :sections,
           through: :achievement_relations

  has_many :achievement_connections
  has_many :users,
           through: :achievement_connections

  def to_s
    name
  end
end
