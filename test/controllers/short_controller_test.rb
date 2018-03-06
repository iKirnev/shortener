require 'test_helper'

class ShortControllerTest < ActionDispatch::IntegrationTest
	setup do
    @url = 'http://www.youtube.com'
  	@short = Short.make(@url)
  end

	test "should redirect to @url" do
  	get "/#{@short.unique_key}"
    assert_redirected_to @url
  end
end