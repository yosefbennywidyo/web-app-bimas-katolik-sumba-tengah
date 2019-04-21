class DataKeagamaanKatolik < ApplicationRecord
	validates :judul, length: { minimum: 5 }
	validates :keterangan, length: { minimum: 9 }
  belongs_to :user
end
