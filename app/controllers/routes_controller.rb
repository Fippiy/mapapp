class RoutesController < ApplicationController
  def index
    @routes = Route.order("updated_at DESC")
  end
end
