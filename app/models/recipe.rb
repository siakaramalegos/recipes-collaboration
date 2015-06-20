class Recipe < ActiveRecord::Base
	belongs_to :users

  extend FriendlyId
  friendly_id :title, use: :slugged

end

Recipe.create! title: "Joe Schmoe"