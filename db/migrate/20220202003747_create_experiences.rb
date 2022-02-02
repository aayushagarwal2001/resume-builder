class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.string :company
      t.string :position
      t.text :description
      t.date :start
      t.date :end
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
