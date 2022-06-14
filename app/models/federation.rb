class Federation < ApplicationRecord
  has_many :tournaments, dependent: :nullify

  validates :name, presence: true, uniqueness: true
end

# == Schema Information
#
# Table name: federations
#
#  id         :bigint           not null, primary key
#  name       :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_federations_on_name  (name) UNIQUE
#
