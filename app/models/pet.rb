class Pet < ApplicationRecord
  validates :name, presence: true
  has_one_attached :image
  
  SPECIES = ["Dog", "Cat", "Bird"]

  validates :species, inclusion: { in: SPECIES }
end
