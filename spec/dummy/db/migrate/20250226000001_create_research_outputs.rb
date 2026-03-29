class CreateResearchOutputs < ActiveRecord::Migration[7.0]
  def change
    create_table :research_outputs do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :category, null: false, default: 0, limit: 1
      t.string :title, null: false
      t.string :authors
      t.date :published_on, null: false
      t.integer :review_status, null: false, default: 0, limit: 1
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
