class BooksController < ApplicationController
  def new
  end

  def index
    @nickname = current_user.name
    @introduction = current_user.introduction
    @book = Book.new
    @books = Book.all

  end

  def show
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save!
    redirect_to books_path
  end



  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
