class CreateNoteTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :note_topics do |t|
      t.integer :note_id
      t.integer :topic_id
      t.timestamps
    end
  end
end
