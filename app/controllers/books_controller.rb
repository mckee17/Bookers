class BooksController < ApplicationController

  def top
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    #不要
  end

  def create
    @book = Book.new(book_params)
    @books = Book.all
      if @book.save
        redirect_to SHOW_path(@book)
      else
        render :index
      end
  end

  def edit
   @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to books_path
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  #privete
  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
