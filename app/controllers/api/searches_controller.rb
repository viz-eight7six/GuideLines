class Api::SearchesController < ApplicationController
  def show
    @guides = Guide.search(params[:q])
    render :show
  end
end
