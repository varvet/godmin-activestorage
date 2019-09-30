module Admin
  class ArticleService
    include Godmin::Resources::ResourceService

    attrs_for_index :id, :title
    attrs_for_show :id, :title, :image

    filter :title
  end
end
