#!/usr/bin/env ruby
# -*- ruby -*-
# encoding: utf8 

require 'nokogiri'
require 'open-uri'

BASE_URL="https://news.ycombinator.com"
page = Nokogiri::HTML(open(BASE_URL), nil, 'UTF-8')
my_table_rows = page.css('table tr')[3]
tds = my_table_rows.css('table tr td')
count = 0
results = tds.inject('') do |acc, item|
  if item.text==""
    acc+item.text
  else
    count+=1
    count % 3==0 ? acc+item.text+"\n" : acc+item.text+";"
  end
end
date = Time.new 
hn_file = "#{date.strftime("%Y%m%dT%H%M%S")}-hn_analyzer.txt"
File.open(hn_file, "w"){|file| file.puts results}
