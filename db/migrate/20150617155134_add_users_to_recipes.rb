class AddUsersToRecipes < ActiveRecord::Migration
  def change
    add_reference :recipes, :user, index: true
    add_foreign_key :recipes, :users
  end
end
