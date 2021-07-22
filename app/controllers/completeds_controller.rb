class CompletedsController < ApplicationController
    before_action :set_service

    def update
        @service.completed = !@service.completed
        @service.save
    end

    def set_service
        @service = Service.find(params[:service_id])
    end
end
