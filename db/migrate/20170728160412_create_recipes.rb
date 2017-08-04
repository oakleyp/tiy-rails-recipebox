class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :plural_name

      t.timestamps
    end

    create_table :images do |t|
      t.string :caption
      t.string :url

      t.timestamps
    end

    create_table :recipes do |t|
      t.string :title
      t.string :author
      t.text :description
      t.text :steps
      t.references :ingredients
      t.references :images
      t.string :preptime
      t.string :cooktime
      t.integer :servings
      t.integer :calories
      t.string :source

      t.timestamps
    end
  end
end
