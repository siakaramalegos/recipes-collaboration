class AddUsersToRecipes < ActiveRecord::Migration
  def change
    add_reference :recipes, :users, index: true
    add_foreign_key :recipes, :users
  end
end
