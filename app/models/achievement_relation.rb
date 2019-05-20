class AchievementRelation < ActiveRecord::Base
  belongs_to :achievement
  belongs_to :section
end