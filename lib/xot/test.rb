require 'xot/util'


module Xot


  module Test

    include Util

    def assert_not(expression, *args)
      assert !expression, *args
    end

    def assert_not_includes(collection, obj, *args)
      assert !collection.include?(obj), *args
    end

    def assert_each_in_epsilon(expected, actual, *args)
      assert_equal expected.size, actual.size
      expected.zip(actual) do |e, a|
        assert_in_epsilon e, a, *args
      end
    end

    def assert_each_in_delta(expected, actual, *args)
      assert_equal expected.size, actual.size
      expected.zip(actual) do |e, a|
        assert_in_delta e, a, *args
      end
    end

  end# Test


end# Xot
