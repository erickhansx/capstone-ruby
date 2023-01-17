require 'date'
require_relative './modules/date_diffrence'

class Item
  attr_accessor :genre, :author, :source, :label, :publish_date

  def initialize(genre, author, source, label, publish_date)
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = Date.parse(publish_date)
    @id = Random.rand(0..1000)
    @archive = false
  end
end
