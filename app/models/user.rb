class User < ApplicationRecord
  validates :nama_lengkap, length: { minimum: 6 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable
  belongs_to :peran
  has_many :data_keagamaan_katolik
  has_many :laporan_penyuluh_agama_katolik
  has_many :data_pendidikan_agama_katolik

  #before_create :set_default_role
  # or 
  before_validation :set_default_role

  private
  def set_default_role
    self.peran ||= Peran.find_by nama_peran: "Pemirsa" if self.peran.nil?
  end
end
