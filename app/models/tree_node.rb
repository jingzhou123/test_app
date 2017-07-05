class TreeNode < ApplicationRecord
  belongs_to :parent, class_name: "TreeNode", foreign_key: "parent_id", optional: true
  has_many :children, class_name: "TreeNode", foreign_key: "parent_id"
end
