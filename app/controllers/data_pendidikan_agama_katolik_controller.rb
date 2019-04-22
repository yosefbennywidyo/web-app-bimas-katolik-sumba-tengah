class DataPendidikanAgamaKatolikController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]
  load_and_authorize_resource

  # GET /data_pendidikan_agama_katolik
  # GET /data_pendidikan_agama_katolik.json
  def index
    @data_pendidikan_agama_katolik = DataPendidikanAgamaKatolik.all
  end

  # GET /data_pendidikan_agama_katolik/1
  # GET /data_pendidikan_agama_katolik/1.json
  def show
  end

  # GET /data_pendidikan_agama_katolik/new
  def new
  end

  # GET /data_pendidikan_agama_katolik/1/edit
  def edit
  end

  # POST /data_pendidikan_agama_katolik
  # POST /data_pendidikan_agama_katolik.json
  def create
    @data_pendidikan_agama_katolik.user_id = current_user.id

    respond_to do |format|
      if @data_pendidikan_agama_katolik.save
        format.html { redirect_to @data_pendidikan_agama_katolik, notice: 'Data pendidikan agama katolik was successfully created.' }
        format.json { render :show, status: :created, location: @data_pendidikan_agama_katolik }
      else
        format.html { render :new }
        format.json { render json: @data_pendidikan_agama_katolik.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_pendidikan_agama_katolik/1
  # PATCH/PUT /data_pendidikan_agama_katolik/1.json
  def update
    respond_to do |format|
      if @data_pendidikan_agama_katolik.update(data_pendidikan_agama_katolik_params)
        format.html { redirect_to @data_pendidikan_agama_katolik, notice: 'Data pendidikan agama katolik was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_pendidikan_agama_katolik }
      else
        format.html { render :edit }
        format.json { render json: @data_pendidikan_agama_katolik.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_pendidikan_agama_katolik/1
  # DELETE /data_pendidikan_agama_katolik/1.json
  def destroy
    @data_pendidikan_agama_katolik.destroy
    respond_to do |format|
      format.html { redirect_to data_pendidikan_agama_katolik_index_url, notice: 'Data pendidikan agama katolik was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_pendidikan_agama_katolik_params
      params.require(:data_pendidikan_agama_katolik).permit(:judul, :keterangan, :tautan)
    end
end
