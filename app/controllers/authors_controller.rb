class AuthorsController < ApplicationController

	def new
		@author = Author.new
	end

	def create
  	@author = Author.new(author_params)

  	if @author.save(author_params)
  		flash[:success] = "Ваш автор опубликована"
  		redirect_to root_path
  	else
  		flash[:alert] = "Ваш автор не опубликована, проверьте заполнение формы"
  		render :new
  	end
  end

	private

	def author_params
  	params.require(:author).permit(:name, :description)
  end
end
