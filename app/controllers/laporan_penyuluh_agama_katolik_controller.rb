class LaporanPenyuluhAgamaKatolikController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]
  load_and_authorize_resource

  # GET /laporan_penyuluh_agama_katolik
  # GET /laporan_penyuluh_agama_katolik.json
  def index
    @laporan_penyuluh_agama_katolik = LaporanPenyuluhAgamaKatolik.all
  end

  # GET /laporan_penyuluh_agama_katolik/1
  # GET /laporan_penyuluh_agama_katolik/1.json
  def show
  end

  # GET /laporan_penyuluh_agama_katolik/new
  def new
  end

  # GET /laporan_penyuluh_agama_katolik/1/edit
  def edit
  end

  # POST /laporan_penyuluh_agama_katolik
  # POST /laporan_penyuluh_agama_katolik.json
  def create
    @laporan_penyuluh_agama_katolik.user_id = current_user.id

    respond_to do |format|
      if @laporan_penyuluh_agama_katolik.save
        format.html { redirect_to @laporan_penyuluh_agama_katolik, notice: 'Laporan penyuluh agama katolik was successfully created.' }
        format.json { render :show, status: :created, location: @laporan_penyuluh_agama_katolik }
      else
        format.html { render :new }
        format.json { render json: @laporan_penyuluh_agama_katolik.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /laporan_penyuluh_agama_katolik/1
  # PATCH/PUT /laporan_penyuluh_agama_katolik/1.json
  def update
    respond_to do |format|
      if @laporan_penyuluh_agama_katolik.update(laporan_penyuluh_agama_katolik_params)
        format.html { redirect_to @laporan_penyuluh_agama_katolik, notice: 'Laporan penyuluh agama katolik was successfully updated.' }
        format.json { render :show, status: :ok, location: @laporan_penyuluh_agama_katolik }
      else
        format.html { render :edit }
        format.json { render json: @laporan_penyuluh_agama_katolik.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /laporan_penyuluh_agama_katolik/1
  # DELETE /laporan_penyuluh_agama_katolik/1.json
  def destroy
    @laporan_penyuluh_agama_katolik.destroy
    respond_to do |format|
      format.html { redirect_to laporan_penyuluh_agama_katolik_index_url, notice: 'Laporan penyuluh agama katolik was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
    def laporan_penyuluh_agama_katolik_params
      params.require(:laporan_penyuluh_agama_katolik).permit(:judul, :keterangan, :tautan, :user_id)
    end
end
