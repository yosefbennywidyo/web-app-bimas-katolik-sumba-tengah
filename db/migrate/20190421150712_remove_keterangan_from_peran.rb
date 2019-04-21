class RemoveKeteranganFromPeran < ActiveRecord::Migration[5.2]
  def change
    remove_column :peran, :keterangan, :string
  end
end
