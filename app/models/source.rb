class Source < ActiveRecord::Base
  belongs_to :user
  has_many :items
  geocoded_by :address
  after_validation :geocode

  def distance_from_user(user)
    distance_from = self.distance_from([user.latitude, user.longitude])
    if distance_from
      distance_from.round(2)
    else
      "none"
    end
  end
end
