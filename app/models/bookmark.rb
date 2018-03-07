class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :dish,
             :class_name => "Reservation",
             :foreign_key => "reservation_id"

  # Indirect associations

  # Validations

end
