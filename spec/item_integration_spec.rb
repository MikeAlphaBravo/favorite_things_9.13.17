require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

# adjust line 7 below
describe('the rectangle path', {:type => :feature}) do
  it('processes the user entry and returns total inputs as a list') do
    visit('/')
    fill_in('name', :with => '1')
    click_button('Go!')
    expect(page).to have_content('1')
  end

  it('processes the user entry and returns added input to list') do
    visit('/')
    fill_in('name', :with => '2')
    click_button('Go!')
    expect(page).to have_content('1')
    expect(page).to have_content('2')
  end

end
