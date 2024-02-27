require 'httparty'

class Products
  include HTTParty
  # base_uri = "https://fakestoreapi.com"

  def self.all()
    get("https://fakestoreapi.com/products")
  end

  def self.product_details(id)
    get("https://fakestoreapi.com/products/#{id}")
  end

  def self.search_by_title(title)
    all_products = all
    parsed_products = JSON.parse(all_products.body)
    filtered_products = parsed_products.select { |product| product['title'].downcase.include?(title.downcase) }
    filtered_products
  end
end