class BlogController < ApplicationController
  def index
    @test = params[:test]
  end

  def show
    @id = params[:id]
  end
end