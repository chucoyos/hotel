class CompletedController < ApplicationController
    before_action :set_service

    def update
        @service.completed = !@service.completed
        @service.save
        redirect_to @service
    end

    def set_service
        @service = Service.find(params[:id])
    end
end
