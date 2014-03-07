HN Home Page scrapper
=====================

A simple HackerNews Home page scrapper for fun

Usage
=====
ruby hn_scrapper.rb

or in crontab mode for example on an hourly basis :

0 * * * * ruby PATH_TO/hn_scrapper.rb >> /tmp/hn_cron.log 2>&1

where PATH_TO is the directory path to hn_scrapper.rb

Output 
======
CSV text format, may be processed for Data Analysis (in my TODO list)

Output Sample
=============
1.;Linus Torvalds on implementation of human-readable file system (plus.google.com) ;20 points by hebz0rl 40 minutes ago  | 1 comment

2.;F.lux updated (justgetflux.com) ;370 points by glennericksen 11 hours ago  | 183 comments

3.;WebFlow (webflow.com) ;17 points by squiggy22 1 hour ago  | 2 comments

Pre-requisite
=============
ruby, ruby-dev
Nokogiri gem 


