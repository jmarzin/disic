require 'spec_helper'

describe 'La page' do
  before :each do
    visit 'users/sign_in'
  end

  it 'contient un header' do
    page.should have_selector('header#page_header')
  end
  it "ne contient pas de sign_in si aucun utilisateur n'est connecté" do
    page.should_not have_selector('nav#utility')
  end
  it "contient le sign_out si un utilisateur est connecté" do
    click_on 'Sign up'
    fill_in 'user_email', :with => 'user@example.com'
    fill_in 'user_password', :with => 'password'
    fill_in 'user_password_confirmation', :with => 'password'
    click_on 'Sign up'
    page.should have_selector('nav#utility')
    within('nav#utility') do
      page.should have_content('user@example.com')
    end
  end
  it 'contient un footer' do
    page.should have_selector('footer#page_footer')
  end
  it 'contient une sidebar' do
    page.should have_selector('section#sidebar')
  end
  it 'contient un menu' do
    page.should have_selector('nav#main_nav')
  end
end