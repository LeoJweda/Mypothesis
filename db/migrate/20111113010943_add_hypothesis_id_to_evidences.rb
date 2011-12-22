class AddHypothesisIdToEvidences < ActiveRecord::Migration
  def change
    add_column :evidences, :hypothesis_id, :integer
  end
end
