class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.belongs_to :event
      t.belongs_to :provider
      t.timestamp :timestamp
      t.float :value
      t.string :status
      t.text :raw_webhook
      t.string :customer_id

      t.timestamps
    end
  end
end
