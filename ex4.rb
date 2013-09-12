# -*- encoding: UTF-8 -*-
#!/usr/bin/ruby -Ke
require "rubygems"
require "nokogiri"
require "open-uri"
require "kconv"

doc = Nokogiri.HTML(open("http://ja.wikipedia.org/wiki/%E6%97%A5%E6%9C%AC%E3%81%AE%E5%A5%B3%E5%84%AA%E4%B8%80%E8%A6%A7"))

puts "検索したい文字列を入力してください"

word = gets.chomp
doc.search("body").each do |l|
    result = l.include?(word)

if result
	puts "文字列" + word + "は存在します"
else
 	puts "該当する文字列は存在しません"

end
end