class CreatePassbooks < ActiveRecord::Migration[5.0]
  def change
    create_table :passbooks do |t|
      t.integer :number
      t.integer :currency, default: 0
      t.timestamps

      t.belongs_to :user
    end
  end
end
