require 'rails_helper'

RSpec.describe Menu, type: :model do
  let(:menu) { FactoryGirl.create(:menu) }

  it { is_expected.to respond_to :name }
  it { is_expected.to respond_to :price }
  it { is_expected.to respond_to :description }
  it { is_expected.to respond_to :time }
  it { is_expected.to belong_to :order }
  it { is_expected.to belong_to :company }
end
