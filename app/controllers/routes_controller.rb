class RoutesController < ApplicationController
  def index
    @routes = Route.page(params[:page]).per(21).order("updated_at DESC")
  end

  def show
    @route = Route.find(params[:id])
  end
end
