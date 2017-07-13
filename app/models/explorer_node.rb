class ExplorerNode < ApplicationRecord
    extend ActsAsTree::TreeView

    acts_as_tree order: 'name'

    enum node_type: [:file, :folder]
end
