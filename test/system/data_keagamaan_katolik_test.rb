require "application_system_test_case"

class DataKeagamaanKatolikTest < ApplicationSystemTestCase
  setup do
    @data_keagamaan_katolik = data_keagamaan_katolik(:one)
  end

  test "visiting the index" do
    visit data_keagamaan_katolik_url
    assert_selector "h1", text: "Data Keagamaan Katolik"
  end

  test "creating a Data keagamaan katolik" do
    visit data_keagamaan_katolik_url
    click_on "New Data Keagamaan Katolik"

    fill_in "Judul", with: @data_keagamaan_katolik.judul
    fill_in "Keterangan", with: @data_keagamaan_katolik.keterangan
    fill_in "Tautan", with: @data_keagamaan_katolik.tautan
    fill_in "User", with: @data_keagamaan_katolik.user_id
    click_on "Create Data keagamaan katolik"

    assert_text "Data keagamaan katolik was successfully created"
    click_on "Back"
  end

  test "updating a Data keagamaan katolik" do
    visit data_keagamaan_katolik_url
    click_on "Edit", match: :first

    fill_in "Judul", with: @data_keagamaan_katolik.judul
    fill_in "Keterangan", with: @data_keagamaan_katolik.keterangan
    fill_in "Tautan", with: @data_keagamaan_katolik.tautan
    fill_in "User", with: @data_keagamaan_katolik.user_id
    click_on "Update Data keagamaan katolik"

    assert_text "Data keagamaan katolik was successfully updated"
    click_on "Back"
  end

  test "destroying a Data keagamaan katolik" do
    visit data_keagamaan_katolik_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Data keagamaan katolik was successfully destroyed"
  end
end
