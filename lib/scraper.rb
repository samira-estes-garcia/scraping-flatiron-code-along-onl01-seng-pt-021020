require 'nokogiri'
require 'open-uri'

require_relative './course.rb'

class Scraper
  
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end
  
  def get_page
    doc = Nokogiri::HTML(open('http://learn-co-curriculum.github.io/site-for-scraping/courses'))
     doc.css('.post') #collection of course offerings
    doc.css('.post').first.css("h2").text #title of course
    doc.css('.post').first.css(".date").text #schedule of course
    doc.css('.post').first.css("p").text #description of course
  end
  
  def get_courses
    doc = Nokogiri::HTML(open('http://learn-co-curriculum.github.io/site-for-scraping/courses'))
    doc.css('.post') #collection of course offerings
    doc.css('.post').first.css("h2").text #title of course
    doc.css('.post').first.css(".date").text #schedule of course
    doc.css('.post').first.css("p").text #description of course
    
  end
  
  def make_courses
    doc = Nokogiri::HTML(open('http://learn-co-curriculum.github.io/site-for-scraping/courses'))
    doc.css('.post').first.css("h2").text
  end

  def print_courses
  end
  
  
  
end



