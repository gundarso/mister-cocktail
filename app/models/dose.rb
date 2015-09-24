class Dose < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient
  validates :cocktail_id, presence: true, uniqueness: { scope: :ingredient_id }
  validates :ingredient_id, presence: true
end
