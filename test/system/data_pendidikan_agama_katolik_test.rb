require "application_system_test_case"

class DataPendidikanAgamaKatolikTest < ApplicationSystemTestCase
  setup do
    @data_pendidikan_agama_katolik = data_pendidikan_agama_katolik(:one)
  end

  test "visiting the index" do
    visit data_pendidikan_agama_katolik_url
    assert_selector "h1", text: "Data Pendidikan Agama Katolik"
  end

  test "creating a Data pendidikan agama katolik" do
    visit data_pendidikan_agama_katolik_url
    click_on "New Data Pendidikan Agama Katolik"

    fill_in "Judul", with: @data_pendidikan_agama_katolik.judul
    fill_in "Keterangan", with: @data_pendidikan_agama_katolik.keterangan
    fill_in "Tautan", with: @data_pendidikan_agama_katolik.tautan
    click_on "Create Data pendidikan agama katolik"

    assert_text "Data pendidikan agama katolik was successfully created"
    click_on "Back"
  end

  test "updating a Data pendidikan agama katolik" do
    visit data_pendidikan_agama_katolik_url
    click_on "Edit", match: :first

    fill_in "Judul", with: @data_pendidikan_agama_katolik.judul
    fill_in "Keterangan", with: @data_pendidikan_agama_katolik.keterangan
    fill_in "Tautan", with: @data_pendidikan_agama_katolik.tautan
    click_on "Update Data pendidikan agama katolik"

    assert_text "Data pendidikan agama katolik was successfully updated"
    click_on "Back"
  end

  test "destroying a Data pendidikan agama katolik" do
    visit data_pendidikan_agama_katolik_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Data pendidikan agama katolik was successfully destroyed"
  end
end
