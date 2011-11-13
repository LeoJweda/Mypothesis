class AddReferencesToHypotheses < ActiveRecord::Migration
  def change
    add_column :hypotheses, :references, :text
  end
end
