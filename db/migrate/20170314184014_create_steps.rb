class CreateSteps < ActiveRecord::Migration[5.0]
  def change
    create_table :steps do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.integer :next_step_id
      t.integer :prev_step_id
      t.integer :guide_id, null: false

      t.timestamps
    end
    add_index :steps, :guide_id
  end
end
