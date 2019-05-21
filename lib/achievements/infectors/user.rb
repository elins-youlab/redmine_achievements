module Achievements
  module Infectors
    module User


      def self.included(klass)
        klass.class_eval do
          has_many :achievement_connections
          has_many :achievements,
                   through: :achievement_connections

          after_create :create_totals
        end
      end

      def create_totals
        Total.create!(user: self)
      end
    end
  end
end
