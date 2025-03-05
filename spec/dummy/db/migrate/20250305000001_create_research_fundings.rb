class CreateResearchFundings < ActiveRecord::Migration[7.0]
  def change
    create_table :research_fundings do |t|
      t.string :name, null: false
      t.string :funder
      t.integer :category, null: false, default: 0, limit: 1
      t.integer :amount, null: false, default: 0
      t.date :adopted_on, null: false
      t.date :ended_on
      t.string :url
      t.string :research_topic
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
