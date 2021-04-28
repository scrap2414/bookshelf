class BooksController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :move_to_index, only: [:edit, :update, :destroy]
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to root_path
  end

  private

  def book_params
    params.require(:book).permit(
      :image, :name, :author, :date, :information, :category_id, :status_id
    ).merge(user_id: current_user.id)
  end

  def move_to_index
    @book = Book.find(params[:id])
    redirect_to action: :index unless user_signed_in? && current_user.id == @book.user_id
  end

  def set_book
    @book = Book.find(params[:id])
  end
end
