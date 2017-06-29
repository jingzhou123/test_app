class MindMapSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :mind_map_nodes
end
