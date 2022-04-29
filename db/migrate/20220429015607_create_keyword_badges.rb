class CreateKeywordBadges < ActiveRecord::Migration[7.0]
  def change
    create_table :keyword_badges do |t|
      t.references :user, null: false, foreign_key: true
      t.text :keywords, array: true, default: []

      t.timestamps
    end
  end
end
