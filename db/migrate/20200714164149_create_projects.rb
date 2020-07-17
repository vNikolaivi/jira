class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.text :notes
      t.string :performer
      t.string :status

      t.timestamps
    end
  end
end
