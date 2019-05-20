class Section < ActiveRecord::Base
  has_many :achievement_relations
  has_many :achievements,
           through: :achievement_relations

  validates :name, presence: true
  #https://github.com/plataformatec/simple_form
end