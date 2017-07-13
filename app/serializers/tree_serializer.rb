class TreeSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :tree_nodes
end
