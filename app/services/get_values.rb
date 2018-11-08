require 'rubygems'
require 'nokogiri'
require 'open-uri'


class GetValues
  def initialize
  end

  def get_the_crypto(url)
    doc = Nokogiri::HTML(open(url))
    hash ={}
    name = []
    value = []

    name_links = doc.css("a.currency-name-container")
    name_links.each{|link| name << link.text}

    value_links = doc.css("a.price")
    value_links.each{|link| value << link.text}

    0.upto(name.length) do |i|
      hash[name[i]]=value[i]
    end
    return hash
  end

end
