class ChangeGifIdToSessionId < ActiveRecord::Migration
  def change
    change_table :jtables do |t|
      t.integer :session_id
    end
  end
end
