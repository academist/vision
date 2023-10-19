class CreateVisionResearchKeywords < ActiveRecord::Migration[6.0]
  def change
    create_table :vision_research_keywords do |t|
      t.bigint :profile_id
      t.string :name
      t.string :name_en
      t.integer :order

      t.timestamps
    end
    add_index :vision_research_keywords, [:profile_id, :order]
  end
end
