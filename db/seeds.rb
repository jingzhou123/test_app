# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#####
city = City.create name: 'city'
city1 = City.create name: 'city1'
city2 = City.create name: 'city2'
city3 = City.create name: 'city3'
county = County.create name: 'county'
county1 = County.create name: 'county1'
county.cities<<city<<city1
county1.cities<<city2<<city3
state = State.create name: 'Califonia'
state.counties<<county<<county1
#####
mind_map = MindMap.create! name: 'mindMap'
mind_map_node1 = MindMapNode.create! content: 'node1', mind_map: mind_map
mind_map_node2 = MindMapNode.create! content: 'node2', mind_map: mind_map
mind_map_node3 = MindMapNode.create! content: 'node3', mind_map: mind_map
mind_map_line = MindMapLine.create! mind_map_node: mind_map_node1, other_node: mind_map_node2
mind_map_node2.other_nodes<<mind_map_node3
mind_map_node1.other_nodes<<mind_map_node3
#####
Teacher.create name: 'teacher'
Student.create name: 'student'
#####
manager = Employee.create name: 'manager'
subordinate = Employee.create name: 'subordinate'
manager.subordinates << subordinate
#####
n1 = TreeNode.create
n2 = TreeNode.create
n3 = TreeNode.create
n4 = TreeNode.create
tree = Tree.create name: "tree"
n2.children<<n4
n1.children<<n2<<n3
tree.tree_nodes<<n1
