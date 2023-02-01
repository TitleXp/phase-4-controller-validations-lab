class AuthorsController < ApplicationController
  
  def show
    author = Author.find(params[:id])

    render json: author
  end

  def create
    author = Author.create!(author_params), status: :created
    # if author.valid? # or author.id
    #   render json: author, status: :created
    # else
    #   render json: {errors: "Invalid data"}, status: :422 #unprocessable_entity

  # rescue ActiveRecord::RecordInvalid => invalid
  #   render json: {errors: invalid.record.errors.full_messages}, status: 422
  end

  private
  
  def author_params
    params.permit(:email, :name)
  end
  
end
