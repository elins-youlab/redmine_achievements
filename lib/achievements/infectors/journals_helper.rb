module Achievements
  module Infectors
    module JournalsHelper
      def self.included(klass)
        klass.class_eval do
          def render_journal_actions(issue, journal, options = {})
            super + 'like'
          end
        end
      end
    end
  end
end