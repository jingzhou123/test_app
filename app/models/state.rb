class State < Place
  has_many :counties
  has_many :cities, through: :counties
end
