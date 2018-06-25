class PricesController < ApplicationController

  # GET /prices
  # GET /prices.json
  def index
    @prices = Price.all
  end

  # GET /prices/1
  # GET /prices/1.json
  def show
    @prices = Price.where(name: params[:id])
  end

  # GET /prices/new
  def new
    @prices = Price.update_prices!
  end

  # GET /prices/1/edit
  def edit
  end


  def create
    @prices = Price.update_prices!
    render :new
  end


  private



  # POST /prices
  # POST /prices.json
  # def create
  #   @price = Price.new(price_params)
  #
  #   respond_to do |format|
  #     if @price.save
  #       format.html { redirect_to @price, notice: 'Price was successfully created.' }
  #       format.json { render :show, status: :created, location: @price }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @price.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /prices/1
  # # PATCH/PUT /prices/1.json
  # def update
  #   respond_to do |format|
  #     if @price.update(price_params)
  #       format.html { redirect_to @price, notice: 'Price was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @price }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @price.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # DELETE /prices/1
  # # DELETE /prices/1.json
  # def destroy
  #   @price.destroy
  #   respond_to do |format|
  #     format.html { redirect_to prices_url, notice: 'Price was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private


  # Never trust parameters from the scary internet, only allow the white list through.
  def price_params
    params.require(:price).permit(:price, :name)
  end
end
