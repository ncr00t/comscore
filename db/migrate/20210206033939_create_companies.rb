class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :logo_url
      t.string :slug

      t.timestamps
    end
  end
end
