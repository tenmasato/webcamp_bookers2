class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
    @book = @user
  end

  def show
    @book = Book.find(params[:id])
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  private

  def book_params
    paramsa.permit(:title,:body)
  end
end
