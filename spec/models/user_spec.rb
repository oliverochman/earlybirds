require 'rails_helper'

RSpec.describe User, type: :model do
  describe "db columns" do 
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :encrypted_password }
  end
  describe FactoryBot do
    it 'should be valid' do
      expect(FactoryBot.create(:user)).to be_valid
    end
  end
end