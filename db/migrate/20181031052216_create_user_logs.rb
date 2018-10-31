class CreateUserLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :user_logs do |t|
      t.references :user_account
      t.date       :last_login_date
      t.date       :last_job_apply_date
      t.timestamps
    end
  end
end
