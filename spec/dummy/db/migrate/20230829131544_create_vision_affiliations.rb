class CreateVisionAffiliations < ActiveRecord::Migration[6.0]
  def change
    create_table :vision_affiliations do |t|
      t.bigint :profile_id
      t.string :organization_name
      t.string :organization_name_en
      t.string :department_name
      t.string :department_name_en
      t.integer :order

      t.timestamps
    end
    add_index :vision_affiliations, [:profile_id, :order]
  end
end
