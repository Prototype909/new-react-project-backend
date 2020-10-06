class RecipeSerializer
    include FastJsonapi::ObjectSerializer
    attributes :title, :text, :image_link
end