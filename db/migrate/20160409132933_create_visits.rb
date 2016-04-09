class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :count
      t.references :site, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
