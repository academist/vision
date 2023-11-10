class CreateSnsLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :sns_links do |t|
      t.integer :link_type, null: false
      t.string :url, null: false
      t.string :sns_linkable_type, null: false
      t.bigint :sns_linkable_id, null: false

      t.timestamps
    end
    add_index :sns_links, [:sns_linkable_type, :sns_linkable_id]
  end
end
