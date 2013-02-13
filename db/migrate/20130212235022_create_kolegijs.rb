class CreateKolegijs < ActiveRecord::Migration
  def change
    create_table :kolegijs do |t|
      t.string :ime
      t.integer :ocjena

      t.timestamps
    end
  end
end
