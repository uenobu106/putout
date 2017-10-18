class AddSourcToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :source, :string
  end
end
