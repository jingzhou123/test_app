class County < Place
  belongs_to :state
  has_many :cities
end
