require 'spec_helper'

describe 'La page' do

  it 'contient un header' do
    visit '/users/sign_in'
    page.should have_selector('header#page_header')
  end
  it 'contient un footer' do
    visit '/users/sign_in'
    page.should have_selector('footer#page_footer')
  end
end