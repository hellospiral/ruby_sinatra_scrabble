require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble path', {:type => :feature}) do
  it('processes a string and returns its scrabble score') do
    visit('/')
    fill_in('word', :with => 'faqir')
    click_button('Send')
    expect(page).to have_content('17')
    expect(page).to have_content('faqir')
  end
end
