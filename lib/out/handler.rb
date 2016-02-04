module Out
  class Handler
    def self.inherited(subclass)
      subclass.extend ClassMethods
      Handlers.add_handler(subclass)
    end

    def matches?(target)
      self.class.matcher.call(target)
    end

    module ClassMethods
      @matches_directory = false
      attr_reader :matches_directory

      def match(pattern)
        case pattern
        when String
          @matcher = proc do |t|
            t == pattern
          end
        when Regexp
          @matcher = proc do |t|
            t =~ pattern
          end
        else
          @matcher = pattern
        end
      end

      def matcher
        @matcher
      end

      def match_directory
        @matches_directory = true
      end
    end
  end
end
