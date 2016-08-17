class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, :last_name,
            presence: true
  has_one :passbook

  after_create :new_passbook

  def new_passbook
    Passbook.create(user_id: User.last.id, currency: 0)
  end

end
