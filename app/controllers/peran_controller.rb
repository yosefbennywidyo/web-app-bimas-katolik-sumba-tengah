class PeranController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!

  # GET /peran
  # GET /peran.json
  def index
    @peran = Peran.all
  end

  # GET /peran/1
  # GET /peran/1.json
  def show
    if @peran.users.length == 0
      @user_terhubung = "Tidak ada yang terhubung"
    else
      @user_terhubung = @peran.users.map(&:nama_lengkap).join(", ")
    end
  end

  # GET /peran/new
  def new
  end

  # GET /peran/1/edit
  def edit
  end

  # POST /peran
  # POST /peran.json
  def create

    respond_to do |format|
      if @peran.save
        format.html { redirect_to @peran, notice: 'Peran was successfully created.' }
        format.json { render :show, status: :created, location: @peran }
      else
        format.html { render :new }
        format.json { render json: @peran.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /peran/1
  # PATCH/PUT /peran/1.json
  def update
    respond_to do |format|
      if @peran.update(peran_params)
        format.html { redirect_to @peran, notice: 'Peran was successfully updated.' }
        format.json { render :show, status: :ok, location: @peran }
      else
        format.html { render :edit }
        format.json { render json: @peran.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peran/1
  # DELETE /peran/1.json
  def destroy
    @peran.destroy
    respond_to do |format|
      format.html { redirect_to peran_index_url, notice: 'Peran was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
    def peran_params
      params.require(:peran).permit(:nama_peran, :keterangan)
    end
end
