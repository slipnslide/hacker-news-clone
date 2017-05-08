class CommentsController < ApplicationController

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(comment_params)
		@user = current_user

		if @comment.save
			format.html { redirect_to @comment, notice: 'Post was successfully created.' }
			format.json { render :show, status: :created, location: @comment }
		else
			format.html { render :new }
			format.json { render json: @comment.errors, status: :unprocessable_entity }
		end
	end

	private
	def comment_params
	end
end
