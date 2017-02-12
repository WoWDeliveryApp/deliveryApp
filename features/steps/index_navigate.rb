class Spinach::Features::IndexNavigate < Spinach::FeatureSteps
  
  step 'I am in the index page' do
    visit root_path
  end

  step 'I should see a great header' do 
    expect(page).to have_css('header')
    expect(page).to have_content('ToGoDelivery.com')
    expect(page).to have_content('¿Hambre?')
    expect(page).to have_content('¿Necesita Ayuda?')
    expect(page).to have_link('Login/SignUp')
    expect(page).to have_link('ToGO App')
  end

  step 'I should a message in the page center' do
    expect(page).to have_css('.container')
    expect(page).to have_content('delivery al alcance de tu mano')
  end

  step 'I should see a great footer' do 
    expect(page).to have_css('footer')
    expect(page).to have_link('Compañía')
    expect(page).to have_link('Términos y Condiciones')
    expect(page).to have_link('Contáctanos')
  end

  step 'I click Sign up link' do
    click_link 'Login/SignUp'
  end

  step 'I should see a form for log in' do
    expect(page).to have_content('Email')
    expect(page).to have_content('Password')
  end

  step 'I click the ToGo logo of header' do
    click_link 'ToGoDelivery.com'
  end

  step 'I should be in the index again' do
    expect(page).to have_content('delivery al alcance de tu mano')
  end
end
