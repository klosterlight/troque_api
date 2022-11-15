class V1::ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: {
      data: ActiveModel::Serializer::CollectionSerializer.new(@products, serializer: ProductSerializer)
    }, status: 200
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render json: @product, status: :created
    else
      render json: { messages: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, images: [], product_labels_attributes: [:label_id])
  end
end
