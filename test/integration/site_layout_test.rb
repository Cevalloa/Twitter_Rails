require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "layout links" do

  	#we need to check layout links

  	#get rooth path (home page)
  	get root_path

  	#ensure right page template is rendered
  	assert_template 'static_pages/home'

  	#check for correct links to home, help, about, contact
  	assert_select "a[href=?]", root_path, count: 2 #ensures there are 2 links
  	assert_select "a[href=?]", help_path
  	assert_select "a[href=?]", about_path
  	assert_select "a[href=?]", contact_path

  	#assert_select "a[href=?]", about_path
  	#inserts about_path in the question mark

  end


end
