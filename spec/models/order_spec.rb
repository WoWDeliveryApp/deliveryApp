require 'rails_helper'

RSpec.describe Order, type: :model do
  let(:order) { FactoryGirl.create(:order) }

  it { is_expected.to belong_to :user }
  it { is_expected.to belong_to :company }
end
