class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.integer :active 
      t.references :user, index: true
      t.references :service, index: true
    end
  end
end
