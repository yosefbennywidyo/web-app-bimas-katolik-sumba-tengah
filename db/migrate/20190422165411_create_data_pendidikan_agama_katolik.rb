class CreateDataPendidikanAgamaKatolik < ActiveRecord::Migration[5.2]
  def change
    create_table :data_pendidikan_agama_katolik do |t|
      t.string :judul
      t.string :keterangan
      t.string :tautan

      t.timestamps
    end
  end
end
