# location: spec/feature/integration_spec.rb
require_relative '../rails_helper'
require_relative '../spec_helper'

# RSpec.describe 'Creating a book', type: :feature do
#   scenario 'valid inputs' do
#     visit new_book_path
#     fill_in "book[title]", with: 'harry potter'
#     click_on 'Create Book'
#     visit books_path
#     expect(page).to have_content('harry potter')
#   end
# end

RSpec.describe 'Adding a book', type: :feature do
  it 'displays a success flash notice when a book is added' do
    visit new_book_path
    fill_in 'Title', with: 'Sample Book Title'
    fill_in 'Author', with: 'Sample Author'
    fill_in 'Price', with: 20

    select '2023', from: 'book_published_date_1i' # Year
    select 'September', from: 'book_published_date_2i' # Month
    select '5', from: 'book_published_date_3i' # Day
    click_button 'Create Book'

    expect(page).to have_content('Book was successfully created.')
  end

  it 'displays an error flash notice when trying to add a book with a blank title' do
    visit new_book_path
    fill_in 'Title', with: ''
    fill_in 'Author', with: 'Sample Author'
    fill_in 'Price', with: 20

    select '2023', from: 'book_published_date_1i' # Year
    select 'September', from: 'book_published_date_2i' # Month
    select '5', from: 'book_published_date_3i' # Day
    click_button 'Create Book'

    expect(page).to have_content("Title can't be blank")
  end

end