class MindMapNodeSerializer < ActiveModel::Serializer
  attributes :id, :other_nodes
  has_many :other_nodes, through: :mind_map_lines
end
