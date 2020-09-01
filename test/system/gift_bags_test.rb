require "application_system_test_case"

class GiftBagsTest < ApplicationSystemTestCase
  setup do
    @gift_bag = gift_bags(:one)
  end

  test "visiting the index" do
    visit gift_bags_url
    assert_selector "h1", text: "Gift Bags"
  end

  test "creating a Gift bag" do
    visit gift_bags_url
    click_on "New Gift Bag"

    fill_in "Recipient", with: @gift_bag.recipient
    fill_in "Sender", with: @gift_bag.sender
    click_on "Create Gift bag"

    assert_text "Gift bag was successfully created"
    click_on "Back"
  end

  test "updating a Gift bag" do
    visit gift_bags_url
    click_on "Edit", match: :first

    fill_in "Recipient", with: @gift_bag.recipient
    fill_in "Sender", with: @gift_bag.sender
    click_on "Update Gift bag"

    assert_text "Gift bag was successfully updated"
    click_on "Back"
  end

  test "destroying a Gift bag" do
    visit gift_bags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gift bag was successfully destroyed"
  end
end
