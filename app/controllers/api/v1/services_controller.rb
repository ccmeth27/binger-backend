class Api::V1::ServicesController < ApplicationController

    def index
        @services = Service.all
        if @services
        render json: {
            services: @services
        }
        else
        render json: {
            status: 500,
            errors: ['error']
        }
        end
    end

    def show_row
        services = Service.where(
            row_id: params[:row_id])
        render json: {
            services: services
        }
    end
           
end