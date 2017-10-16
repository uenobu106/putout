# coding: utf-8

require 'cognitivebing'

# アカウント情報にある「プライマリ アカウント キー」を入力
key = "550263e79ecf488989ccf0e442a2d67d"
query = "クトゥルフ神話"

bing = Bing.new(key, 10, 'News')
results = bing.search(query)

puts "#{results[0][:VideoTotal]} 件"

count = 1

results[0][:Video].each do |r|
  puts "#{count}"
  puts "%10s %s"%["Title:",r[:Title]]
  puts "%10s %s"%["URL:",r[:MediaUrl]]
  puts "%10s %s"%["Thumbnail:",r[:Thumbnail][:MediaUrl]]
  puts
  count += 1
end
