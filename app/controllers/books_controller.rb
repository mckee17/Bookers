class BooksController < ApplicationController

  def top
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
  end

  def new
    #不要？
  end

  def create
    book = Book.new
    book.save

  end

  def edit
  end

  def update
  end

  def destroy
  end

  #privete
  private
  def book_params
    params.require(:Book).permit(:title,:body)
  end
end
