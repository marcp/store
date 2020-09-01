class GiftBag
  include Mongoid::Document
  field :sender, type: String
  field :recipient, type: String

  embeds_many :products
end
