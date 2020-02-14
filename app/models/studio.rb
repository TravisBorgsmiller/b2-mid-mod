class Studio < ApplicationRecord
  validate_prescence_of :name
  has_many :movies
end
