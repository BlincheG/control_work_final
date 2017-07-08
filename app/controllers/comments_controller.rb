class CommentsController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @comment = @book.comments.create(comment_params)

    redirect_to @book
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :user_id, :book_id, :rating)
  end

end
