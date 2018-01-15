require 'nokogiri'
require 'open-uri'

require_relative './course.rb'

class Scraper

  attr_accessor :doc

  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end

  def get_page
    @doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
    @doc
  end

  def get_courses
    @doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
    @doc = @doc.css("h2")
  end

  def make_courses
    @doc.each
  end

end
