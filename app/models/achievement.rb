class Achievement < ActiveRecord::Base
  validates :name, presence: true
  validates :prize, presence: true, numericality: true

  has_many :achievement_relations
  has_many :sections,
           through: :achievement_relations

  def to_s
    name
  end
end
