class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.references :user, null: false, foreign_key: true
      t.string :company
      t.date :begin_at
      t.date :finish_at
      t.text :desc

      t.timestamps
    end
  end
end
