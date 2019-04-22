class AddUserToLaporanPenyuluhAgamaKatolik < ActiveRecord::Migration[5.2]
  def change
    add_reference :laporan_penyuluh_agama_katolik, :user, foreign_key: true
  end
end
