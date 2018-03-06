require 'test_helper'
 
class ShortTest < ActiveSupport::TestCase
	test "words" do
    short = Short.make('bad url')
		assert_not short.errors.full_messages.empty?
  end

  test "bad url" do
		short = Short.make('ht1tp://www.youtube.com1')
		assert_not short.errors.full_messages.empty?
  end

  test "good url" do
  	url = 'http://www.youtube.com'
    short = Short.make(url)
    assert short.errors.full_messages.empty?
		assert_not short.unique_key.nil?

		assert Short.find(short.unique_key) == url
  end
end