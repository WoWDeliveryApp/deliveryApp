class Spinach::Features::SignupAccount < Spinach::FeatureSteps
  step 'I am on the sign up page' do
    visit new_user_registration_path
  end

  step 'I fill fields Name, email, password, Password confirmation' do
    fill_in 'user_name', with: 'bob'
    fill_in 'user_email', with: 'bob@test.com'
    fill_in 'user_password', with: 'test1234'
    fill_in 'user_password_confirmation', with: 'test1234'
  end

  step 'I click Sign up' do
    click_button 'Sign up'
  end

  step 'I should see a message that field address can\'t be blank' do
    expect(page).to have_content('Address can\'t be blank')
  end

  step 'I fill field address' do
    fill_in 'user_password', with: 'test1234'
    fill_in 'user_password_confirmation', with: 'test1234'
    fill_in 'user_address', with: 'Calle del hambre, #26, casa 6-D'
  end

  step 'I should see a message that say "Bienvenido! Te has registrado correctamente."' do
    expect(page).to have_content('Bienvenido! Te has registrado correctamente.')
  end
end
