class Trip < ActiveRecord::Base
  belongs_to :place
  belongs_to :driver, foreign_key: :driver_id, class_name: 'User'
  belongs_to :admin, foreign_key: :admin_id, class_name: 'User'
  has_many :passengers, through: :tickets
  has_many :tickets
end
