class UsersController < ApplicationController
  before_action :check_if_logged_in, :only => [:show, :edit, :update]
  # before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :check_if_admin, :only => [:index]



  # GET /users
  # GET /users.json
  def index
    @users = User.all
    unless @current_user.present? && @current_user.admin?
      redirect_to root_path
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find params[:id]
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user = @current_user
  end

  # POST /users
  # POST /users.json
  def create

    user_details = user_params()
    
    
    @user = User.new(user_details)
    session[:user_id] = @user.id
    @user.address = "#{@user.address1}, #{@user.suburb}, #{@user.city}, #{@user.country}"
    latlng = Geocoder.coordinates(@user.address)
    @user.latitude = latlng[0]
    @user.longitude = latlng[1]
      if @user.save
        session[:user_id] = @user.id
        redirect_to root_path
      else
        render :new
     
    end

  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def wish
    @wish = @current_user.wish
  end

  def bookmark
  end

  def item
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_user
    #   @user = User.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :name, :surname, :password, :password_confirmation, :longitude , :latitude, :address, :address1, :suburb, :city, :state, :country)
    end

    def check_if_logged_in
      redirect_to root_path unless @current_user.present?
    end

    def check_if_admin
      redirect_to root_path unless @current_user.present? && @current_user.admin?
    end
end
