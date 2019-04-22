require 'test_helper'

class LaporanPenyuluhAgamaKatolikControllerTest < ActionDispatch::IntegrationTest
  setup do
    @laporan_penyuluh_agama_katolik = laporan_penyuluh_agama_katolik(:one)
  end

  test "should get index" do
    get laporan_penyuluh_agama_katolik_index_url
    assert_response :success
  end

  test "should get new" do
    get new_laporan_penyuluh_agama_katolik_url
    assert_response :success
  end

  test "should create laporan_penyuluh_agama_katolik" do
    assert_difference('LaporanPenyuluhAgamaKatolik.count') do
      post laporan_penyuluh_agama_katolik_index_url, params: { laporan_penyuluh_agama_katolik: { judul: @laporan_penyuluh_agama_katolik.judul, keterangan: @laporan_penyuluh_agama_katolik.keterangan, tautan: @laporan_penyuluh_agama_katolik.tautan } }
    end

    assert_redirected_to laporan_penyuluh_agama_katolik_url(LaporanPenyuluhAgamaKatolik.last)
  end

  test "should show laporan_penyuluh_agama_katolik" do
    get laporan_penyuluh_agama_katolik_url(@laporan_penyuluh_agama_katolik)
    assert_response :success
  end

  test "should get edit" do
    get edit_laporan_penyuluh_agama_katolik_url(@laporan_penyuluh_agama_katolik)
    assert_response :success
  end

  test "should update laporan_penyuluh_agama_katolik" do
    patch laporan_penyuluh_agama_katolik_url(@laporan_penyuluh_agama_katolik), params: { laporan_penyuluh_agama_katolik: { judul: @laporan_penyuluh_agama_katolik.judul, keterangan: @laporan_penyuluh_agama_katolik.keterangan, tautan: @laporan_penyuluh_agama_katolik.tautan } }
    assert_redirected_to laporan_penyuluh_agama_katolik_url(@laporan_penyuluh_agama_katolik)
  end

  test "should destroy laporan_penyuluh_agama_katolik" do
    assert_difference('LaporanPenyuluhAgamaKatolik.count', -1) do
      delete laporan_penyuluh_agama_katolik_url(@laporan_penyuluh_agama_katolik)
    end

    assert_redirected_to laporan_penyuluh_agama_katolik_index_url
  end
end
