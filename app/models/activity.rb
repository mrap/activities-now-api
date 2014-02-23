class Activity
  include Mongoid::Document
  include Mongoid::Search

  has_and_belongs_to_many :users

  field :title
  field :tags, default: []

  search_in :title, :tags

end
