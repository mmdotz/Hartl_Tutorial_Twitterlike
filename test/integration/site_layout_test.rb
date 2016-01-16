require 'test_helper'

#test verify Home page is rendered using correct view
#test presence of a particular link
class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    puts response.body

    assert_template 'static_pages/home'
    #rails inserts value of _path in place of ?
    #specifically looking for <a href="/about">...</a>
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", about_path
  end
end
