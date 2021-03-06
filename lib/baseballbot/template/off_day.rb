# frozen_string_literal: true

class Baseballbot
  module Template
    class General < Base
      using TemplateRefinements

      def initialize(body:, subreddit:, title: '')
        super(body: body, subreddit: subreddit)

        @title = title
      end

      def inspect
        %(#<Baseballbot::Template::General>)
      end

      def formatted_title
        @formatted_title ||= Time.now.strftime @title
      end
    end
  end
end
