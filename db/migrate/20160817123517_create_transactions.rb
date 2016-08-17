class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.integer :operation, default: 0
      t.float :summ, default: 0
      t.belongs_to :passbook

      t.timestamps
    end
  end
end
