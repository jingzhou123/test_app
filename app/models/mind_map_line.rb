class MindMapLine < ApplicationRecord
  belongs_to :mind_map_node
  belongs_to :other_node, class_name: "MindMapNode", foreign_key: "other_node_id"
end
