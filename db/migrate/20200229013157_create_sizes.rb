class CreateSizes < ActiveRecord::Migration[6.0]
  def change
    create_table :sizes do |t|
    
      t.integer :size
      t.timestamps
    end
  end
end
