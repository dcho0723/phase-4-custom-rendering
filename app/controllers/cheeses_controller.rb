class CheesesController < ApplicationController

  # GET /cheeses
  def index
    cheeses = Cheese.all
    render json: cheeses, only: [:name, :id], methods: [:summary]
  end

  # GET /cheeses/:id
  def show
    cheese = Cheese.find_by(id: params[:id])
    if cheese 
      render json: cheese
    else
      render json: { error: "Cheese Not Found " }, status: 404
    end
  end

end
