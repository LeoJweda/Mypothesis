class CreateHypotheses < ActiveRecord::Migration
  def change
    create_table :hypotheses do |t|
      t.string :title
      t.text :content
      t.text :null_hypothesis
      t.integer :user_id
      t.string :subject

      t.timestamps
    end
    add_index :hypotheses, [:user_id]
  end
end
