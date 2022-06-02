class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  devise :database_authenticatable,
         :registerable,
         :jwt_authenticatable,
         jwt_revocation_strategy: self

  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, email: true
  validates :first_name, :last_name, presence: true
  validates :password,
            presence: true,
            length: { in: Devise.password_length },
            on: :create

  has_many :teams_players, dependent: :destroy
  has_one :games_squads_player, dependent: :destroy
end

# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  birthday               :date
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string           default(""), not null
#  jti                    :string           not null
#  last_name              :string           default(""), not null
#  name                   :string           not null
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_jti                   (jti) UNIQUE
#  index_users_on_name                  (name) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
