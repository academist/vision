class CreateVisionResearchPublicationLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :vision_research_publication_links do |t|
      t.bigint :profile_id
      t.string :url
      t.integer :order

      t.timestamps
    end
    add_index :vision_research_publication_links, [:profile_id, :order], name: 'vision_research_publication_links_index'
  end
end
