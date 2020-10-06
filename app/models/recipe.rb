class Recipe < ApplicationRecord
    validates :title, :text, :image_link, presence: true
end