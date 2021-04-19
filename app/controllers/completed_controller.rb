class CompletedController < ApplicationController
    def update
        @service = Service.find(params[:id])
        @service.completed = !@service.completed
        @service.save
    end
end
