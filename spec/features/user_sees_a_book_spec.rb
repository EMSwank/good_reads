require 'rails_helper'

describe "User Visits a book show page " do
  it " and sees a book title and list of reviews" do

  book = Book.create(title: "Foo")

  visit book_path(book)

  expect(page).to have_content("Foo")
  end

  it "and a list of reviews for that book" do
    book = Book.create(title: "Foo")
    user1 = book.users.create(name: "Bar", review: "Awesome", rating: 5)
    user2 = book.users.create(name: "Baz", review: "Terrible", rating: 1)

    visit book_path(book)

    expect(page).to have_content(user.name)
  end
  
end
