require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    # @@songs << self
    super
  end

  extend Findable::ClassMethods
  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def self.all
    @@songs
  end

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  # def self.reset_all
  #   self.all.clear
  # end
  #
  # def self.count
  #   self.all.count
  # end

  def artist=(artist)
    @artist = artist
  end

  include Paramable
  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
