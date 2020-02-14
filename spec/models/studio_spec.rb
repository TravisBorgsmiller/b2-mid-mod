require 'rails_helper'

RSpec.describe Studio, type: :model do
  describe 'validations' do
    it {should validate_prescence_of :name}
  end
end
