class Place < ActiveRecord::Base
  belongs_to :admin, foreign_key: :admin_id, class_name: 'User'
  has_many :trips, dependent: :destroy

  def admin
    User.find(self.admin_id)
  end

end
