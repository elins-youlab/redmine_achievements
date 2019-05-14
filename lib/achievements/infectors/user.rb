module Achievements
  module Infectors
    module User
      def self.included(klass)
        klass.class_eval do
          after_create :create_totals
        end
      end

      def create_totals
        Total.create!(user: self)
      end
    end
  end
end
