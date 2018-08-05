require 'rails_helper'

RSpec.describe ItemPurchaseLog, type: :model do

  describe 'validations' do
    it {is_expected.to validate_presence_of(:price)}
    it {is_expected.to validate_presence_of(:name)}
  end

  describe '.purchase!' do
    let(:user) {create(:user)}
    let(:item) {create(:item)}
    before do
      ItemPurchaseLog.purchase!(user,item)
    end
  end
end
