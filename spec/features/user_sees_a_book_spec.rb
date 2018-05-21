require 'rails_helper'

describe "User Visits a book show page " do
  it " and sees a book title and list of reviews" do

  book = Book.create(title: "Foo")

  visit book_path(book)

  expect(page).to have_content("Foo")
  end
end
