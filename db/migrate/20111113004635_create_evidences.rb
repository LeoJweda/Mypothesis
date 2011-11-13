class CreateEvidences < ActiveRecord::Migration
  def change
    create_table :evidences do |t|
      t.string :title
      t.text :content
      t.boolean :supporting
      t.integer :user_id

      t.timestamps
    end
  end
end
