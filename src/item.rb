require 'date'
require_relative './modules/date_diffrence'

class Item
  attr_accessor :publish_date
  attr_reader :genre, :author, :label

  def initialize(new_genre, new_author, new_label, new_publish_date)
    @genre = new_genre
    @author = new_author
    @label = new_label
    @publish_date = Date.parse(new_publish_date)
    @id = Random.rand(0..1000)
    @archive = false
  end

  def genre=(genre)
    @genre = genre
    genre.items.push(self) unless genre.items.include?(self)
  end

  def author=(author)
    @author = author
    author.items.push(self) unless author.items.include?(self)
  end

  def label=(label)
    @label = label
    label.items.push(self) unless label.items.include?(self)
  end

  def move_to_archive()
    can_be_archived? ? @archive = true : false
  end

  private

  def can_be_archived?()
    input_date(@publish_date) > 10
  end
end
