require 'test_helper'

class DicesControllerTest < ActionController::TestCase
  setup do
    @dice = dices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dice" do
    assert_difference('Dice.count') do
      post :create, dice: { comment: @dice.comment, name: @dice.name, picture: @dice.picture }
    end

    assert_redirected_to dice_path(assigns(:dice))
  end

  test "should show dice" do
    get :show, id: @dice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dice
    assert_response :success
  end

  test "should update dice" do
    put :update, id: @dice, dice: { comment: @dice.comment, name: @dice.name, picture: @dice.picture }
    assert_redirected_to dice_path(assigns(:dice))
  end

  test "should destroy dice" do
    assert_difference('Dice.count', -1) do
      delete :destroy, id: @dice
    end

    assert_redirected_to dices_path
  end
end
