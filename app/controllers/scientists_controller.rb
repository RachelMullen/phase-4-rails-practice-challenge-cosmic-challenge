class ScientistsController < ApplicationController
    # rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        render json: Scientist.all
    end

    def show 
        scientist = Scientist.find(params[:id])
        render json: scientist, serializer: ScientistwithplanetsSerializer
    end

    def create
        scientist = Scientist.create!(scientist_params)
        render json: scientist, status: :created
    end
    
    def update 
        scientist = Scientist.find(params[:id])
        scientist.update!(scientist_params)
        render json: scientist, status: :accepted
    end

    def destroy 
        scientist = Scientist.find(params[:id])
        scientist.destroy
        head :no_content
    end

    private

    def scientist_params
        params.permit(:name, :field_of_study, :avatar)
    end

    # def find_params
    #     Scientist.find(params[:id])
    # end
    
end