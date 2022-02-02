class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :url
      t.text :description
      t.string :techstack
      t.references :experience, null: false, foreign_key: true

      t.timestamps
    end
  end
end
