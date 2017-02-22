require 'rails_helper'

RSpec.describe RegistrationsController, type: :controller do
  let(:user) { FactoryGirl.create(:user, name: 'Javier', email: 'update@test.com') }

  describe "PUT #update" do
    context "set role when sign up" do
      before do
        @request.env["devise.mapping"] = Devise.mappings[:user]
        allow(controller).to receive(:authenticate_user!).and_return(true)
        allow(controller).to receive(:current_user).and_return(user)
        expect(user.role).to eq 'customer'
      end
      
      it 'set user role to deliveryman' do
        put :update, first_role: 'deliveryman'

        expect(response).to have_http_status(:redirect)
        expect(user.role).to eq 'deliveryman'
      end

      it 'set user role to restaurant' do
        put :update, first_role: 'restaurant'

        expect(response).to have_http_status(:redirect)
        expect(user.role).to eq 'restaurant'
      end
    end
  end
end
