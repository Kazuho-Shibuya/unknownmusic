require './kakasi.so'
include Kakasi
require 'kakasi'
puts Kakasi.kakasi('-JK -HK', 'Rubyから案山子を呼び出せます。')

puts KAKASI_VERSION
puts kakasi('-oeuc -s -U -Ja -Ha', "\e$B0F;3;R$J$N$G$9\e(B") #=> "KAKASI nanodesu"
