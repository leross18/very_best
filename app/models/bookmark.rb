class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :venue,
             :class_name => "Restaurant",
             :foreign_key => "restaurant_id"

  belongs_to :user

  belongs_to :dish,
             :class_name => "Reservation",
             :foreign_key => "reservation_id"

  # Indirect associations

  # Validations

end
