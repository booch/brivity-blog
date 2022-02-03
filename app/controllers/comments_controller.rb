class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_comment, only: %i[show edit update destroy]

  # GET /comments or /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1 or /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments or /comments.json
  def create
    @comment = Comment.new(comment_params.merge(author_id: current_user.id))

    if @comment.save
      redirect_to comment_url(@comment), notice: "Comment was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments/1 or /comments/1.json
  def update
    if @comment.update(comment_params)
      redirect_to comment_url(@comment), notice: "Comment was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /comments/1 or /comments/1.json
  def destroy
    @comment.destroy

    redirect_to comments_url, notice: "Comment was successfully destroyed."
  end

  # Use callbacks to share common setup or constraints between actions.
  private def set_comment
    @comment = Comment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  private def comment_params
    params.require(:comment).permit(:body, :post_id)
  end
end
