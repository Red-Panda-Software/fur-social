# frozen_string_literal: true

# This migration will create the table for the User model,
# and ensure the required columns are in place for the model.
class CreateUsers < ::ActiveRecord::Migration[8.0]
  # Runs the migration in the desired direction,
  # applying or removing the table changes.
  def change
    create_table(:users, comment: 'Tracks all user data') do |t|
      t.string(:nickname, limit: 25, comment: 'The nickname to display for the user', null: false)
      t.string(:email, comment: 'The email of the user, unique in the system', null: false)
      t.string(:password_digest, comment: 'The encrypted password of the user', null: false)
      t.timestamps
    end

    add_index(:users, [:email], unique: true)
  end
end
