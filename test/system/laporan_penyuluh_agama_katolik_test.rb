require "application_system_test_case"

class LaporanPenyuluhAgamaKatolikTest < ApplicationSystemTestCase
  setup do
    @laporan_penyuluh_agama_katolik = laporan_penyuluh_agama_katolik(:one)
  end

  test "visiting the index" do
    visit laporan_penyuluh_agama_katolik_url
    assert_selector "h1", text: "Laporan Penyuluh Agama Katolik"
  end

  test "creating a Laporan penyuluh agama katolik" do
    visit laporan_penyuluh_agama_katolik_url
    click_on "New Laporan Penyuluh Agama Katolik"

    fill_in "Judul", with: @laporan_penyuluh_agama_katolik.judul
    fill_in "Keterangan", with: @laporan_penyuluh_agama_katolik.keterangan
    fill_in "Tautan", with: @laporan_penyuluh_agama_katolik.tautan
    click_on "Create Laporan penyuluh agama katolik"

    assert_text "Laporan penyuluh agama katolik was successfully created"
    click_on "Back"
  end

  test "updating a Laporan penyuluh agama katolik" do
    visit laporan_penyuluh_agama_katolik_url
    click_on "Edit", match: :first

    fill_in "Judul", with: @laporan_penyuluh_agama_katolik.judul
    fill_in "Keterangan", with: @laporan_penyuluh_agama_katolik.keterangan
    fill_in "Tautan", with: @laporan_penyuluh_agama_katolik.tautan
    click_on "Update Laporan penyuluh agama katolik"

    assert_text "Laporan penyuluh agama katolik was successfully updated"
    click_on "Back"
  end

  test "destroying a Laporan penyuluh agama katolik" do
    visit laporan_penyuluh_agama_katolik_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Laporan penyuluh agama katolik was successfully destroyed"
  end
end
