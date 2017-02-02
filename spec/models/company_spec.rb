require 'rails_helper'

RSpec.describe Company, type: :model do
  let!(:company) { FactoryGirl.create(:company) }
  subject { company }

  it { is_expected.to belong_to :user }
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :address }
  it { is_expected.to validate_presence_of :restaurant_type }
  it { is_expected.to validate_presence_of :description }
end
