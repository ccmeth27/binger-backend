class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :service do |t|
      t.string :service_name
    end
  end
end
