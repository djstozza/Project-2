class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]


  # GET /items
  # GET /items.json
  def index
    @items = @current_user.items
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  def api 
    @items = Item.all
    render json: @items
  end

  # POST /items
  # POST /items.json
  def create
 
    if params[:file] == nil
      item_details = item_params
      item_details[:image] = 'http://fillmurray.com/200/200'
      

    else
      response = Cloudinary::Uploader.upload params[:file]
      item_details = item_params
      item_details[:image] = response["url"]
      
      
    end   

    @item = Item.create item_details
    
    if @item.category_id == 1
      #if the category is community
      @item.price = 0
    
    elsif @item.category_id == 4
      #if the category is personals
      @item.price = 0
    
    elsif @item.category_id == 6
     #if the category is housing
     @item.price = 0 

    else
      @item.price
    
    end

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
        
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end


    @current_user.items << @item

  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end


  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:name, :price, :subcategory_id, :user_id, :description, :category_id, :image, :rooms, :private_room, :bathrooms, :parking, :laundry, :rent, :housing_type, :area, :available, :openhouse1, :openouse2, :openhouse3, :pets, :rooms, :bathrooms, :furnished, :smoking, :wheelchair, :sale)
    end
end
