class Teenager
  include Mongoid::Document
  field :name, type: String
  field :type, type: String
  field :stats, type: Hash
  field :powers, type: Array
  embeds_many :knacks
  field :traits, type: Array
  accepts_nested_attributes_for :knacks
end

class Knack
  include Mongoid::Document
  belongs_to :teenager
  field :name, type: String
  field :bonus, type: Integer
  field :stat, type: String
end