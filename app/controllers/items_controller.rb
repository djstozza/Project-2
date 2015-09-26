class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  

  def search 
    if params[:search].present?
      @items = Item.search(params[:search])
    else 
      @items = Item.all
    end
  end

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

  # POST /items
  # POST /items.json
  def create
   
    
    if (params[:file] == nil)
      item_details = item_params
      item_details[:image] = 'http://fillmurray.com/200/200'
      

    else
      response = Cloudinary::Uploader.upload params[:file]
      item_details = item_params
      item_details[:image] = response["url"]
      
      
    end

    @item = Item.create item_details
    
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
      params.require(:item).permit(:name, :price, :subcategory_id, :user_id, :description, :category_id, :image)
    end
end
