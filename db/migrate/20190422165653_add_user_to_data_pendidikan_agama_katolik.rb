class AddUserToDataPendidikanAgamaKatolik < ActiveRecord::Migration[5.2]
  def change
    add_reference :data_pendidikan_agama_katolik, :user, foreign_key: true
  end
end
