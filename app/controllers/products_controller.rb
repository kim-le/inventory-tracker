class ProductsController < ApplicationController
  before_action :set_product, only: %i[show edit update destroy]

  def index
    @products = Product.all
  end

  def show; end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    product_params[:warehouse_ids].each do |w|
      @product.warehouses << Warehouse.find(w) if w.present?
    end

    if @product.save
      redirect_to @product
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    product_params[:warehouse_ids].each do |w|
      @product.warehouses << Warehouse.find(w) if w.present?
    end

    if @product.update(product_params)
      redirect_to @product
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @product.destroy

    redirect_to products_path, status: :see_other
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params
      .require(:product)
      .permit(:name, :UPC, :quantity, :description, warehouse_ids: [])
  end
end
