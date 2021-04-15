class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new
    # if @genre.save
      redirect_to root_path
    else
      render :new
    end
  end
end
