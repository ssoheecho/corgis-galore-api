class AddCorgiIdtoComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :corgi_id, :string
  end
end
