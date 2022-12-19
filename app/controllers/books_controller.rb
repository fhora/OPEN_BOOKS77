class BooksController < ApplicationController
  before_action :set_book, only: [:show]
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to book_path(@book)
  end

  def show
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :category, :photo, :description, :delivery_price)
  end

  def set_book
    @book = Book.find(params[:id])
  end
end
