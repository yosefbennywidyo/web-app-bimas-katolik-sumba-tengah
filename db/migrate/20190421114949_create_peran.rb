class CreatePeran < ActiveRecord::Migration[5.2]
  def change
    create_table :peran do |t|
      t.string :nama_peran
      t.string :keterangan

      t.timestamps
    end
  end
end
