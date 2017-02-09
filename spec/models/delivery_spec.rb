require 'rails_helper'

RSpec.describe Delivery, type: :model do
  let(:delivery) { FactoryGirl.create(:delivery) }

  it { is_expected.to respond_to :accepted }
  it { is_expected.to respond_to :delivered }
  it { is_expected.to respond_to :refused }
  it { is_expected.to respond_to :description }
  it { is_expected.to belong_to :order }
end
