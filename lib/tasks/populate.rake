namespace :db do
  desc "Clear the database and fill it with fake data"
  task :populate => :environment do
  require 'populator'
  require 'faker'
    Recipe.populate 10 do |recipe|
    recipe.title = Faker::Lorem.words
    recipe.ingredients = Faker::Lorem.sentence(3)
    recipe.steps = Faker::Lorem.paragraph(1)
    end
    puts 'All done'
  end
end