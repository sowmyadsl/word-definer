require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('/', {:type => :feature}) do
  it('displays the index page  when user goes to /')do
    visit('/')
    expect(page).to have_content('Add a word ')
  end

describe('/',{:type => :feature}) do
  it('user enters the word and click on the word button') do
    visit('/')
    fill_in('word', :with => 'Activity')
    click_on('Add Word')
    expect(page).to have_content('Activity')
  end

end
end
