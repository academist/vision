class CreateVisionResearchFields < ActiveRecord::Migration[6.0]
  def change
    create_table :vision_research_fields do |t|
      t.bigint :profile_id
      t.string :name
      t.string :name_en
      t.integer :order

      t.timestamps
    end
    add_index :vision_research_fields, [:profile_id, :order]
  end
end
