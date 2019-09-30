# frozen_string_literal: true

require "test_helper"

module Godmin
  module ActiveStorage
    class Test < ActiveSupport::TestCase
      def test_that_it_has_a_version_number
        assert_not_nil ::Godmin::Activestorage::VERSION
      end

      def test_it_does_something_useful
        assert true
      end
    end
  end
end
