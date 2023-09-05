# spec/models/book_spec.rb

require 'rails_helper'

RSpec.describe Book, type: :model do
  # Valid author
  it 'is valid with a valid author' do
    book = Book.new(title: 'Sample Title', author: 'Sample Author', price: 20, published_date: Date.today)
    expect(book).to be_valid
  end

  # Invalid author (blank)
  it 'is not valid without an author' do
    book = Book.new(title: 'Sample Title', author: '', price: 20, published_date: Date.today)
    expect(book).not_to be_valid
  end

  # Valid price
  it 'is valid with a valid price' do
    book = Book.new(title: 'Sample Title', author: 'Sample Author', price: 20, published_date: Date.today)
    expect(book).to be_valid
  end

  # Invalid price (negative value)
  it 'is not valid with a negative price' do
    book = Book.new(title: 'Sample Title', author: 'Sample Author', price: -10.0, published_date: Date.today)
    expect(book).not_to be_valid
  end

  # Valid published_date
  it 'is valid with a valid published date' do
    book = Book.new(title: 'Sample Title', author: 'Sample Author', price: 20, published_date: Date.today)
    expect(book).to be_valid
  end

  # Invalid published_date (blank)
  it 'is not valid without a published date' do
    book = Book.new(title: 'Sample Title', author: 'Sample Author', price: 20, published_date: nil)
    expect(book).not_to be_valid
  end
end