class Spinach::Features::SignupAccount < Spinach::FeatureSteps
  step 'I am on the sign up page' do
    visit new_user_registration_path
  end

  step 'I fill fields Name, email, password, Password confirmation' do

  end

  step 'I click Sign up' do
  end

  step 'I should see a message that field address can\'t be blank' do
  end

  step 'I fill field address' do
  end

  step 'I should see a message that say "Bienvenido! Te has registrado correctamente."' do
  end
end
