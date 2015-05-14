class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :date
      t.datetime :start
      t.datetime :end
      t.string :name
      t.string :track
    end
  end
end
