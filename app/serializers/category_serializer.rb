class CategorySerializer < ActiveModel::Serializer
  has_many :items
  attributes :id, :name, :items
end
