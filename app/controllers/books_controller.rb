class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    # @book = Book.new(book_params)
    # @book.save
    # redirect_to book_path(@book)

    @new_book = Book.new
    @book = Book.new(book_params)
    @book.user = current_user

    if @book.save
      redirect_to book_path(@book)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :category, :photo, :description, :delivery_price)
  end

end
