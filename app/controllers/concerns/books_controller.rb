class BooksController < ApplicationController

  def show
    @book = Book.find(params[:id])
    @user = User.find(params[:user_id])
  end
  
end