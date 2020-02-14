require 'rails_helper'

Rspec.describe Actor, type: :model do
  describe 'validations' do
    it {should validate_prescence_of :name}
    it {should validate_prescence_of :age}
  end
  describe 'relationships' do
    it {should have_many :actor_movies}
    it {should have_many(:movies).through(:actor_movies)}
  end
end
