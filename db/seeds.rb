# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Menyiapkan database"
puts ""
puts ""
puts "Membuat Peran"
peran_1 = Peran.create!({nama_peran: "Pemirsa"})
peran_2 = Peran.create!({nama_peran: "Guru Agama Katolik"})
peran_3 = Peran.create!({nama_peran: "Pegawai Pendakat"})
peran_4 = Peran.create!({nama_peran: "Penyelenggara Pendakat"})
peran_5 = Peran.create!({nama_peran: "Penyuluh Agama Katolik"})
peran_6 = Peran.create!({nama_peran: "Pegawai Urakat"})
peran_7 = Peran.create!({nama_peran: "Kasie Urakat"})
peran_8 = Peran.create!({nama_peran: "Admin"})
puts ""
puts "Berhasil membuat #{Peran.count} Peran"
puts ""
puts ""
puts "Membuat User"
user_1 = User.create!({nama_lengkap: "Guru Agama Katolik", email: "guru@pendakat-sumteng.go.id", password: "qwerty", password_confirmation: "qwerty", peran_id: peran_2.id})
user_2 = User.create!({nama_lengkap: "Pegawai Pendakat", email: "pegawai@pendakat-sumteng.go.id", password: "qwerty", password_confirmation: "qwerty", peran_id: peran_3.id})
user_3 = User.create!({nama_lengkap: "Penyelenggara Pendakat", email: "penyelenggara@pendakat-sumteng.go.id", password: "qwerty", password_confirmation: "qwerty", peran_id: peran_4.id})
user_4 = User.create!({nama_lengkap: "Penyuluh Agama Katolik", email: "penyuluh@urakat-sumteng.go.id", password: "qwerty", password_confirmation: "qwerty", peran_id: peran_5.id})
user_5 = User.create!({nama_lengkap: "Pegawai Urakat", email: "pegawai@urakat-sumteng.go.id", password: "qwerty", password_confirmation: "qwerty", peran_id: peran_6.id})
user_6 = User.create!({nama_lengkap: "Kasie Urakat", email: "kasie@urakat-sumteng.go.id", password: "qwerty", password_confirmation: "qwerty", peran_id: peran_7.id})
user_7 = User.create!({nama_lengkap: "Dummy User I", email: "du-1@kemenag-sumteng.go.id", password: "qwerty", password_confirmation: "qwerty", peran_id: peran_1.id})
user_8 = User.create!({nama_lengkap: "Dummy User II", email: "du-2@kemenag-sumteng.go.id", password: "qwerty", password_confirmation: "qwerty", peran_id: peran_1.id})
user_9 = User.create!({nama_lengkap: "Dummy User III", email: "du-3@kemenag-sumteng.go.id", password: "qwerty", password_confirmation: "qwerty", peran_id: peran_1.id})
user_10 = User.create!({nama_lengkap: "Dummy User IV", email: "du-4@kemenag-sumteng.go.id", password: "qwerty", password_confirmation: "qwerty", peran_id: peran_1.id})
user_11 = User.create!({nama_lengkap: "Dummy User V", email: "du-5@kemenag-sumteng.go.id", password: "qwerty", password_confirmation: "qwerty", peran_id: peran_1.id})
user_12 = User.create!({nama_lengkap: "Administrator", email: "admin@kemenag-sumteng.go.id", password: "qwerty", password_confirmation: "qwerty", peran_id: peran_8.id})
puts ""
puts "Berhasil membuat #{User.count} User"
puts ""
puts ""
puts "Membuat dummy Data Keagamaan Katolik"
DataKeagamaanKatolik.create!({judul: "Data Keagamaan Katolik I", keterangan: "Keterangan rinci tentang Data Keagamaan Katolik I", tautan: "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN", user_id: user_5.id})
DataKeagamaanKatolik.create!({judul: "Data Keagamaan Katolik II", keterangan: "Keterangan rinci tentang Data Keagamaan Katolik II", tautan: "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN", user_id: user_5.id})
DataKeagamaanKatolik.create!({judul: "Data Keagamaan Katolik III", keterangan: "Keterangan rinci tentang Data Keagamaan Katolik III", tautan: "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN", user_id: user_5.id})
DataKeagamaanKatolik.create!({judul: "Data Keagamaan Katolik IV", keterangan: "Keterangan rinci tentang Data Keagamaan Katolik IV", tautan: "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN", user_id: user_5.id})
DataKeagamaanKatolik.create!({judul: "Data Keagamaan Katolik V", keterangan: "Keterangan rinci tentang Data Keagamaan Katolik V", tautan: "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN", user_id: user_5.id})
puts ""
puts "Berhasil membuat #{DataKeagamaanKatolik.count} Data Keagamaan Katolik"
puts ""
puts ""
puts "Membuat dummy Laporan Penyuluh Agama Katolik"
LaporanPenyuluhAgamaKatolik.create!({judul: "Laporan Penyuluh Agama Katolik I", keterangan: "Keterangan rinci tentang Laporan Penyuluh Agama Katolik I", tautan: "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN", user_id: user_4.id})
LaporanPenyuluhAgamaKatolik.create!({judul: "Laporan Penyuluh Agama Katolik II", keterangan: "Keterangan rinci tentang Laporan Penyuluh Agama Katolik II", tautan: "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN", user_id: user_4.id})
LaporanPenyuluhAgamaKatolik.create!({judul: "Laporan Penyuluh Agama Katolik III", keterangan: "Keterangan rinci tentang Laporan Penyuluh Agama Katolik III", tautan: "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN", user_id: user_4.id})
LaporanPenyuluhAgamaKatolik.create!({judul: "Laporan Penyuluh Agama Katolik IV", keterangan: "Keterangan rinci tentang Laporan Penyuluh Agama Katolik IV", tautan: "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN", user_id: user_4.id})
LaporanPenyuluhAgamaKatolik.create!({judul: "Laporan Penyuluh Agama Katolik V", keterangan: "Keterangan rinci tentang Laporan Penyuluh Agama Katolik V", tautan: "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN", user_id: user_4.id})
puts ""
puts "Berhasil membuat #{LaporanPenyuluhAgamaKatolik.count} Laporan Penyuluh Agama Katolik"
puts ""
puts ""
puts "Membuat dummy Data Pendidikan Agama Katolik"
DataPendidikanAgamaKatolik.create!({judul: "Data Pendidikan Agama Katolik I", keterangan: "Keterangan rinci tentang Data Pendidikan Agama Katolik I", tautan: "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN", user_id: user_3.id})
DataPendidikanAgamaKatolik.create!({judul: "Data Pendidikan Agama Katolik II", keterangan: "Keterangan rinci tentang Data Pendidikan Agama Katolik II", tautan: "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN", user_id: user_3.id})
DataPendidikanAgamaKatolik.create!({judul: "Data Pendidikan Agama Katolik III", keterangan: "Keterangan rinci tentang Data Pendidikan Agama Katolik III", tautan: "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN", user_id: user_3.id})
DataPendidikanAgamaKatolik.create!({judul: "Data Pendidikan Agama Katolik IV", keterangan: "Keterangan rinci tentang Data Pendidikan Agama Katolik IV", tautan: "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN", user_id: user_3.id})
DataPendidikanAgamaKatolik.create!({judul: "Data Pendidikan Agama Katolik V", keterangan: "Keterangan rinci tentang Data Pendidikan Agama Katolik V", tautan: "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN", user_id: user_3.id})
puts ""
puts "Berhasil membuat #{DataPendidikanAgamaKatolik.count} Laporan Penyuluh Agama Katolik"
