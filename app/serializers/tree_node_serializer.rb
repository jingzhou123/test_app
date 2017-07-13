class TreeNodeSerializer < ActiveModel::Serializer
  attributes :id, :parent_id, :children
  has_many :children, class_name: "TreeNode", foreign_key: "parent_id"
end
