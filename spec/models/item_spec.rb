require 'rails_helper'

RSpec.describe Item, type: :model do

  describe 'validations' do
    it {is_expected.to validate_presence_of(:name) }
    it {is_expected.to validate_numericality_of(:price) }
  end

  describe '#good_count' do

  end

  describe '#fetch_reaction_id' do

  end


end
