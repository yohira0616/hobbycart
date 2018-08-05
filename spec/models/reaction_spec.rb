require 'rails_helper'

RSpec.describe Reaction, type: :model do
  let!(:user) {create(:user)}
  let!(:item) {create(:item)}


  describe 'validations' do
    it {is_expected.to validate_presence_of(:target_id)}
    it {is_expected.to validate_presence_of(:target_type)}
    it {is_expected.to validate_presence_of(:stamp_code)}
  end

  describe '.already_good?' do

  end

  describe '.good_to_item!' do

  end

  describe '.revoke_good_to_item!' do

  end
end
