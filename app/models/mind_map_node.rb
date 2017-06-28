class MindMapNode < ApplicationRecord
  belongs_to :mind_map

  has_many :mind_map_lines
  has_many :other_nodes, through: :mind_map_lines
end
