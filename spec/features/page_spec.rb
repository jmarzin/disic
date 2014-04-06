require 'spec_helper'

describe 'La page' do
  before :each do
    visit 'users/sign_in'
  end

  it 'contient un header' do
    page.should have_selector('header#page_header')
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