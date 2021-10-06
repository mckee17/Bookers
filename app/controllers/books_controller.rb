class BooksController < ApplicationController
  
  def top
  end
  
  def index
    @books = Book.all
  end

  def show
  end

  def new
    #不要
  end
  
  def create
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  #privete
  
  
end
