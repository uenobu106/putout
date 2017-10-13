class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.integer :report_id
      t.string :title
      t.text :comment

      t.timestamps
    end
  end
end
