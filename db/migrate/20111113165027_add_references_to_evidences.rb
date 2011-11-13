class AddReferencesToEvidences < ActiveRecord::Migration
  def change
    add_column :evidences, :references, :text
  end
end
