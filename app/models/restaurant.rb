class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  belongs_to :dish,
             :class_name => "Reservation"

  # Indirect associations

  # Validations

end
