require 'test_helper'

class DataKeagamaanKatolikControllerTest < ActionDispatch::IntegrationTest
  setup do
    @data_keagamaan_katolik = data_keagamaan_katolik(:one)
  end

  test "should get index" do
    get data_keagamaan_katolik_index_url
    assert_response :success
  end

  test "should get new" do
    get new_data_keagamaan_katolik_url
    assert_response :success
  end

  test "should create data_keagamaan_katolik" do
    assert_difference('DataKeagamaanKatolik.count') do
      post data_keagamaan_katolik_index_url, params: { data_keagamaan_katolik: { judul: @data_keagamaan_katolik.judul, keterangan: @data_keagamaan_katolik.keterangan, tautan: @data_keagamaan_katolik.tautan, user_id: @data_keagamaan_katolik.user_id } }
    end

    assert_redirected_to data_keagamaan_katolik_url(DataKeagamaanKatolik.last)
  end

  test "should show data_keagamaan_katolik" do
    get data_keagamaan_katolik_url(@data_keagamaan_katolik)
    assert_response :success
  end

  test "should get edit" do
    get edit_data_keagamaan_katolik_url(@data_keagamaan_katolik)
    assert_response :success
  end

  test "should update data_keagamaan_katolik" do
    patch data_keagamaan_katolik_url(@data_keagamaan_katolik), params: { data_keagamaan_katolik: { judul: @data_keagamaan_katolik.judul, keterangan: @data_keagamaan_katolik.keterangan, tautan: @data_keagamaan_katolik.tautan, user_id: @data_keagamaan_katolik.user_id } }
    assert_redirected_to data_keagamaan_katolik_url(@data_keagamaan_katolik)
  end

  test "should destroy data_keagamaan_katolik" do
    assert_difference('DataKeagamaanKatolik.count', -1) do
      delete data_keagamaan_katolik_url(@data_keagamaan_katolik)
    end

    assert_redirected_to data_keagamaan_katolik_index_url
  end
end
