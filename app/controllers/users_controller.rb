class UsersController < ApplicationController

  before_action :authenticate_user!

  def show
    @user = current_user
    @currency = current_user.passbook.currency
    @transactions = current_user.passbook.transactions
  end
end
