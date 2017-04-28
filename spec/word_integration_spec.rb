require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('/', {:type => :feature}) do
  it('displays the index page  when user goes to /')do
    visit('/')
    expect(page).to have_content('Add a word ')
  end

    it('user enters the word and click on the word button') do
      visit('/')
      fill_in('word', :with => 'Activity')
      click_on('Add Word')
      expect(page).to have_content('Activity')
    end
end

describe('/word/:id path', {:type => :feature}) do
  it('displays textarea for new definition') do
    visit('/word/1')
    fill_in('define', :with => 'definition')
    click_button('Add definition')
    expect(page).to have_content('definition')
  end
end
