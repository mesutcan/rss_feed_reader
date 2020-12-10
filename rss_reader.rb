require 'rss'
require 'open-uri'

puts "Enter your link:"

url = gets.chomp

open(url) do |rss|
  feed = RSS::Parser.parse(rss)
  puts "Title: #{feed.channel.title}"
  feed.items.each do |item|
    puts "Description: #{item.title}"
  end
  puts "Link: #{url}"
end
