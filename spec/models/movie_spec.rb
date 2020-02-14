require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe 'validations' do
    it {should validate_prescence_of :name}
    it {should validate_prescence_of :creation_year}
    it {should validate_prescence_of :genre}
  end
  describe 'relationships' do
    it {should have_many :actor_movies}
    it {should have_many(:actors).through(:actor_movies)}
  end
end
