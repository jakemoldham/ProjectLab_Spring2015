class ProjectsController < ApplicationController

  def index
  end

  def show
  end

  def create
  end

  def read
  end

  def update
  end

  def destroy
  end
end

private

    def project_params
      params.require(:project).permit(:name, :description,
                                      :due_date)
    end
