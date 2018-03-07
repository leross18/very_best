class Restaurant < ApplicationRecord
  # Direct associations

  belongs_to :dish,
             :class_name => "Reservation"

  # Indirect associations

  # Validations

end
