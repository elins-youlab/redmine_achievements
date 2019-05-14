class Total < ActiveRecord::Base
  belongs_to :user

  after_create :create_admin

  def create_admin
    total = Total.new
    total.user_id = 1;
    total.save
  end
end