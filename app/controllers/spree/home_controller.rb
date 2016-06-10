module Spree
  class HomeController < Spree::StoreController
    helper 'spree/products'
    respond_to :html

    def index
      @searcher = build_searcher(params.merge(include_images: true)) 
      @taxonomies = Spree::Taxonomy.includes(root: :children)
       @products = @searcher.retrieve_products.page(params[:page]).per(9)
          respond_to do |format|
            format.html
            format.js
          end     
    end
  end
end

