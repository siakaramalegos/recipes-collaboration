json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :title, :ingredients, :steps
  json.url recipe_url(recipe, format: :json)
end
