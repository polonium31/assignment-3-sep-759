class ProductsController < ApplicationController
  def index
    @products = if params[:search]
                  Products.search_by_title(params[:search])
                else
                  Products.all
                end
  end

  def details
    @product = Products.product_details(params[:id])
  end
end
