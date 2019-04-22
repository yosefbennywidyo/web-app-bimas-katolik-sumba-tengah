require 'test_helper'

class DataPendidikanAgamaKatolikControllerTest < ActionDispatch::IntegrationTest
  setup do
    @data_pendidikan_agama_katolik = data_pendidikan_agama_katolik(:one)
  end

  test "should get index" do
    get data_pendidikan_agama_katolik_index_url
    assert_response :success
  end

  test "should get new" do
    get new_data_pendidikan_agama_katolik_url
    assert_response :success
  end

  test "should create data_pendidikan_agama_katolik" do
    assert_difference('DataPendidikanAgamaKatolik.count') do
      post data_pendidikan_agama_katolik_index_url, params: { data_pendidikan_agama_katolik: { judul: @data_pendidikan_agama_katolik.judul, keterangan: @data_pendidikan_agama_katolik.keterangan, tautan: @data_pendidikan_agama_katolik.tautan } }
    end

    assert_redirected_to data_pendidikan_agama_katolik_url(DataPendidikanAgamaKatolik.last)
  end

  test "should show data_pendidikan_agama_katolik" do
    get data_pendidikan_agama_katolik_url(@data_pendidikan_agama_katolik)
    assert_response :success
  end

  test "should get edit" do
    get edit_data_pendidikan_agama_katolik_url(@data_pendidikan_agama_katolik)
    assert_response :success
  end

  test "should update data_pendidikan_agama_katolik" do
    patch data_pendidikan_agama_katolik_url(@data_pendidikan_agama_katolik), params: { data_pendidikan_agama_katolik: { judul: @data_pendidikan_agama_katolik.judul, keterangan: @data_pendidikan_agama_katolik.keterangan, tautan: @data_pendidikan_agama_katolik.tautan } }
    assert_redirected_to data_pendidikan_agama_katolik_url(@data_pendidikan_agama_katolik)
  end

  test "should destroy data_pendidikan_agama_katolik" do
    assert_difference('DataPendidikanAgamaKatolik.count', -1) do
      delete data_pendidikan_agama_katolik_url(@data_pendidikan_agama_katolik)
    end

    assert_redirected_to data_pendidikan_agama_katolik_index_url
  end
end
