class TransactionsController < ApplicationController
  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(require_params)
  end

  def require_params
    params.require(:transaction).permit(:operation, :summ, :passbook_id)
  end
end
