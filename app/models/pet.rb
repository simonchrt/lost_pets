class Pet < ApplicationRecord
  SPECIES = ["dog", "cat", "bird"]

  validates :name, presence: true
  validates :species, inclusion: SPECIES
end
