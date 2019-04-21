class AddUserToDataKeagamaanKatolik < ActiveRecord::Migration[5.2]
  def change
    add_reference :data_keagamaan_katolik, :user, foreign_key: true
  end
end
