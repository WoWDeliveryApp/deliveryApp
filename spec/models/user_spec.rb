require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryGirl.create(:user) }

  it { is_expected.to respond_to(:name) }
  it { is_expected.to respond_to(:address) }
  it { is_expected.to have_many(:companies) }
  it { is_expected.to have_many(:orders) }
  it { is_expected.to have_many(:deliveries).through(:orders) }
  
  it 'set the api_token' do
    expect(user.api_token).to be_present
  end
  
  describe 'setting roles' do
    before do
      user
    end

    it 'customer is the default role' do
      expect(user.role).to eq 'customer'
    end

    it 'set role to deliveryman' do
      user.update(role: 1)
      user.reload
      expect(user.role).to eq 'deliveryman'
    end
  end
end
