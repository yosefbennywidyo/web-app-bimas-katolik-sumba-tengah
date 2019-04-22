class BerandaController < ApplicationController
  def index
  	@data_keagamaan_katolik = DataKeagamaanKatolik.all
  	@data_pendidikan_agama_katolik = DataPendidikanAgamaKatolik.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_pendidikan_agama_katolik
      params.require(:data_pendidikan_agama_katolik).permit(:judul, :keterangan, :tautan, :user_id)
    end
    def data_keagamaan_katolik_params
      params.require(:data_keagamaan_katolik).permit(:judul, :keterangan, :tautan, :user_id)
    end
end
