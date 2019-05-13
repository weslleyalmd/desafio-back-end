require "application_system_test_case"

class StoresTest < ApplicationSystemTestCase
  setup do
    @store = stores(:one)
  end

  test "visiting the index" do
    visit stores_url
    assert_selector "h1", text: "Lojas"
  end
end
