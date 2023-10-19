class CreateVisionProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :vision_profiles do |t|
      t.bigint :user_id
      t.string :name
      t.string :name_en
      t.text :vision
      t.text :vision_en
      t.string :image
      t.boolean :published, default: false, null: false

      t.timestamps
    end
    add_index :vision_profiles, :user_id, unique: true
  end
end
