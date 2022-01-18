class Pet < ApplicationRecord
  validates :name, presence: true
  
  SPECIES = ["Dog", "Cat", "Bird"]

  validates :species, inclusion: { in: SPECIES }
end
