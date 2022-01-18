class WarehousesController < ApplicationController
  before_action :set_warehouse, only: %i[show edit update destroy]

  def index
    @warehouses = Warehouse.all
  end

  def show; end

  def new
    @warehouse = Warehouse.new
  end

  def create
    @warehouse = Warehouse.new(warehouse_params)

    if @warehouse.save
      redirect_to @warehouse
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @warehouse.update(warehouse_params)
      redirect_to @warehouse
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @warehouse.destroy

    redirect_to warehouses_path, status: :see_other
  end

  private

  def set_warehouse
    @warehouse = Warehouse.find(params[:id])
  end

  def warehouse_params
    params
      .require(:warehouse)
      .permit(
        :name,
        :address_1,
        :address_2,
        :city,
        :state_province,
        :zip_postal,
        :country,
      )
  end
end
