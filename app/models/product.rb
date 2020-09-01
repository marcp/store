class Product
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :price, type: BigDecimal
  field :released_on, type: Date

  validates :name, :price, presence: true

  embeds_many :reviews
end
