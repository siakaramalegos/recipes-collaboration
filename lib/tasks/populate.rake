namespace :db do
  desc "Clear the database and fill it with fake data"
  task :populate => :environment do
  require 'populator'
  require 'faker'

  [Recipe].each(&:delete_all)

    Recipe.populate 10 do |recipe|
    recipe.title = Faker::Lorem.sentence
    recipe.ingredients = Faker::Lorem.paragraph
    recipe.steps = Faker::Lorem.paragraph
    end
    puts 'All done'
  end
end