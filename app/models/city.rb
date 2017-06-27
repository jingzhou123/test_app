class City < Place
  belongs_to :county
  has_one :state, through: :county
end
