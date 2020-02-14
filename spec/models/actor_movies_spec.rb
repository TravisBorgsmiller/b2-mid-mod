require 'rails_helper'

RSpec.describe ActorMovies, type: :model do
  describe 'validations' do
    it {should have_many :actors}
    it {should have_many :movies}
  end
end
