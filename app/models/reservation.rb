class Reservation < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  has_many   :venues,
             :class_name => "Restaurant",
             :foreign_key => "dish_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
