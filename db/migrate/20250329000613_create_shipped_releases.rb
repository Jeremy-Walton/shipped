class CreateShippedReleases < ActiveRecord::Migration[8.0]
  def change
    create_table :shipped_releases do |t|
      t.string :commit_sha, null: false
      t.datetime :released_at, null: false
      t.text :notes

      t.timestamps
    end
  end
end
