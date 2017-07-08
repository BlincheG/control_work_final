class BooksController < ApplicationController
	def index
		@books = Book.all
		@books = Book.paginate(:page => params[:page], per_page: 5).order(created_at: :desc)
		  respond_to do |format|
		    format.html
		    format.json { render json: @products }
			  format.js
  	  end
	end

	def create
  	@book = Book.new(book_params)

  	if @book.save(book_params)
  		flash[:success] = "Ваша книга опубликована"
  		redirect_to root_path
  	else
  		flash[:alert] = "Ваша книга не опубликована, проверьте заполнение формы"
  		render :new
  	end
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
  	@book = Book.new
    @authors = Author.all
    @categories = Category.all
  end

  private

  def book_params
  	params.require(:book).permit(:title, :desc, :user_id, author_ids: [])
  end
end
