class User < ApplicationRecord
  belongs_to :peran
  has_many :data_keagamaan_katolik
end
