# class Link < ApplicationRecord
#   URL_REGX = /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix

#   validates :url, :description, presence: true
# end

DB = Sequel.connect('sqlite://development.db')
class Link < Sequel::Model
  URL_REGX = /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix
end