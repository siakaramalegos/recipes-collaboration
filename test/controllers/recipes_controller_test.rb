require 'test_helper'

class RecipesControllerTest < ActionController::TestCase
  setup do
    @recipe = recipes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipes)
  end

  test "logged in should get new" do
    sign_in users(:one)
    get :new
    assert_response :success
  end

  test "logged in should create recipe" do
    sign_in users(:one)
    assert_difference('Recipe.count') do
      post :create, recipe: { ingredients: @recipe.ingredients, steps: @recipe.steps, title: @recipe.title }
    end

    assert_redirected_to recipe_path(assigns(:recipe))
  end

  test "should show recipe" do
    get :show, id: @recipe
    assert_response :success
  end

  test "logged in should get edit" do
    sign_in users(:one)
    get :edit, id: @recipe
    assert_response :success
  end

  test "logged in should update recipe" do
    sign_in users(:one)
    patch :update, id: @recipe, recipe: { ingredients: @recipe.ingredients, steps: @recipe.steps, title: @recipe.title }
    assert_redirected_to recipe_path(assigns(:recipe))
  end

  test "logged in should destroy recipe" do
    sign_in users(:one)
    assert_difference('Recipe.count', -1) do
      delete :destroy, id: @recipe
    end

    assert_redirected_to recipes_path
  end
end
