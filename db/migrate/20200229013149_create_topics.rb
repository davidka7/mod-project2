class CreateTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :topics do |t|
      t.string :label
    t.integer :person_id
      t.timestamps
    end
  end
end
