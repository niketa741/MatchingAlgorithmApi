class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :project_name
      t.float :latitude
      t.float :longitude
      t.integer :min_budget
      t.integer :max_budget
      t.boolean :design_service
      t.boolean :build_service
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
