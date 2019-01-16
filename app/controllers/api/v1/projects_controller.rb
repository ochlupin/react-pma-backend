class Api::V1::ProjectsController < ApplicationController
    def index
        render json: Project.all
    end

    def show
        render json: Project.find(params[:id])
    end

    def create
        @project = Project.create(title: project_params[:title])
        render json: @project

    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def project_params
        params.require(:project).permit(:title)
    end
end
