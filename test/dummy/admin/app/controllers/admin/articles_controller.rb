require_dependency "admin/application_controller"

module Admin
  class ArticlesController < ApplicationController
    include Godmin::Resources::ResourceController
    def resource_params
      params.require(:article).permit(
        :title,
        :image
      )
    end
  end
end
