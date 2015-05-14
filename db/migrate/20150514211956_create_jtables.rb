class CreateJtables < ActiveRecord::Migration
  def change
    create_table :jtables do |t|
      t.integer :event_id
      t.integer :gif_id
    end
  end
end
