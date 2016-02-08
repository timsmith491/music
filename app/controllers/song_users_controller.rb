class SongUsersController < ApplicationController
  before_action :set_song_user, only: [:show, :edit, :update, :destroy]

  # GET /song_users
  # GET /song_users.json
  def index
    @song_users = SongUser.all
  end

  # GET /song_users/1
  # GET /song_users/1.json
  def show
  end

  # GET /song_users/new
  def new
    @song_user = SongUser.new
  end

  # GET /song_users/1/edit
  def edit
  end

  # POST /song_users
  # POST /song_users.json
  def create
    @song_user = SongUser.new(song_user_params)

    respond_to do |format|
      if @song_user.save
        format.html { redirect_to @song_user, notice: 'Song user was successfully created.' }
        format.json { render :show, status: :created, location: @song_user }
      else
        format.html { render :new }
        format.json { render json: @song_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /song_users/1
  # PATCH/PUT /song_users/1.json
  def update
    respond_to do |format|
      if @song_user.update(song_user_params)
        format.html { redirect_to @song_user, notice: 'Song user was successfully updated.' }
        format.json { render :show, status: :ok, location: @song_user }
      else
        format.html { render :edit }
        format.json { render json: @song_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /song_users/1
  # DELETE /song_users/1.json
  def destroy
    @song_user.destroy
    respond_to do |format|
      format.html { redirect_to song_users_url, notice: 'Song user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song_user
      @song_user = SongUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def song_user_params
      params.require(:song_user).permit(:user_id, :song_id)
    end
end
