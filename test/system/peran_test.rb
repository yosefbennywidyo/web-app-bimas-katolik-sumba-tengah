require "application_system_test_case"

class PeranTest < ApplicationSystemTestCase
  setup do
    @peran = peran(:one)
  end

  test "visiting the index" do
    visit peran_url
    assert_selector "h1", text: "Peran"
  end

  test "creating a Peran" do
    visit peran_url
    click_on "New Peran"

    fill_in "Keterangan", with: @peran.keterangan
    fill_in "Nama peran", with: @peran.nama_peran
    click_on "Create Peran"

    assert_text "Peran was successfully created"
    click_on "Back"
  end

  test "updating a Peran" do
    visit peran_url
    click_on "Edit", match: :first

    fill_in "Keterangan", with: @peran.keterangan
    fill_in "Nama peran", with: @peran.nama_peran
    click_on "Update Peran"

    assert_text "Peran was successfully updated"
    click_on "Back"
  end

  test "destroying a Peran" do
    visit peran_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Peran was successfully destroyed"
  end
end
