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
    @pass = Passbook.new
    @pass.number = @pass.id
    @pass.currency = 0
    @pass.user_id = User.last.id
    @pass.save
  end

end
