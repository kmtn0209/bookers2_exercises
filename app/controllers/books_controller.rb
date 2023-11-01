class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
    @book = Book.new
  end

  def show
  end

  def edit
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books/show'
  end



  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end