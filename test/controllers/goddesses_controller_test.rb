require 'test_helper'

class GoddessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goddess = goddesses(:one)
  end

  test "should get index" do
    get goddesses_url
    assert_response :success
  end

  test "should get new" do
    get new_goddess_url
    assert_response :success
  end

  test "should create goddess" do
    assert_difference('Goddess.count') do
      post goddesses_url, params: { goddess: { Info: @goddess.Info, Name: @goddess.Name, Other: @goddess.Other, Pantheon: @goddess.Pantheon } }
    end

    assert_redirected_to goddess_url(Goddess.last)
  end

  test "should show goddess" do
    get goddess_url(@goddess)
    assert_response :success
  end

  test "should get edit" do
    get edit_goddess_url(@goddess)
    assert_response :success
  end

  test "should update goddess" do
    patch goddess_url(@goddess), params: { goddess: { Info: @goddess.Info, Name: @goddess.Name, Other: @goddess.Other, Pantheon: @goddess.Pantheon } }
    assert_redirected_to goddess_url(@goddess)
  end

  test "should destroy goddess" do
    assert_difference('Goddess.count', -1) do
      delete goddess_url(@goddess)
    end

    assert_redirected_to goddesses_url
  end
end
