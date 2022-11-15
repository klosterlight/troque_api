class V1::ProductsController < ApplicationController
  def create
    @product = Product.new(product_params)
    if @product.save
      render json: @product, status: :created
    else
      render json: { messages: @product.error.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description)
  end
end
