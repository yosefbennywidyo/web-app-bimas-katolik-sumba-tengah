require 'test_helper'

class PeranControllerTest < ActionDispatch::IntegrationTest
  setup do
    @peran = peran(:one)
  end

  test "should get index" do
    get peran_index_url
    assert_response :success
  end

  test "should get new" do
    get new_peran_url
    assert_response :success
  end

  test "should create peran" do
    assert_difference('Peran.count') do
      post peran_index_url, params: { peran: { keterangan: @peran.keterangan, nama_peran: @peran.nama_peran } }
    end

    assert_redirected_to peran_url(Peran.last)
  end

  test "should show peran" do
    get peran_url(@peran)
    assert_response :success
  end

  test "should get edit" do
    get edit_peran_url(@peran)
    assert_response :success
  end

  test "should update peran" do
    patch peran_url(@peran), params: { peran: { keterangan: @peran.keterangan, nama_peran: @peran.nama_peran } }
    assert_redirected_to peran_url(@peran)
  end

  test "should destroy peran" do
    assert_difference('Peran.count', -1) do
      delete peran_url(@peran)
    end

    assert_redirected_to peran_index_url
  end
end
