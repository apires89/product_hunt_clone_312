require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
  visit "/"
  assert_selector "h1", text: "Awesome Products"
  assert_selector ".card-product", count: Product.count

  end

  test "lets a signed in user create a new product" do
    login_as users(:joao)
    visit "/products/new"

    fill_in "product_name", with: "le wagon"
    fill_in "product_tagline", with: "learn to code"

    click_on 'Create Product'

    ## check if product is on index page
    assert_equal root_path, page.current_path
    assert_text "learn to code"
    save_and_open_screenshot
  end
end
