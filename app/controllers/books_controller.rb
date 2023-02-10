class BooksController < ApplicationController
  before_action :set_book, only: %i[show edit update destroy]

  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR description ILIKE :query OR category ILIKE :query"
      @books = Book.where(sql_query, query: "%#{params[:query]}%")
    else
      @books = Book.all
    end
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

  def edit
  end

  def update
    @book.update(book_params)
    redirect_to book_path(@book)
  end

  def show
    @reservation = Reservation.new
    # chaque reservation est associé à la show dun livre
  end

  def destroy
    @book.destroy
    redirect_to book_path, status: :see_other
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :category, :photo, :description, :delivery_price)
  end

  def set_book
    @book = Book.find(params[:id])
  end
end
