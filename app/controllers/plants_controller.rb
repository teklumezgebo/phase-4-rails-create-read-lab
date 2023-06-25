class PlantsController < ApplicationController

    def index
        render json: Plant.all, status: :ok
    end

    def show
        render json: Plant.find(params[:id]), status: :ok
    end

    def create
        plant = Plant.create(plant_params)
        render json: plant, status: :created
    end

    private

    def plant_params
    params.permit(:name, :image, :price)
    end
end
