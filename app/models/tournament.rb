class Tournament < ApplicationRecord
  belongs_to :federation, optional: true
  has_many :leagues, dependent: :destroy

  validates :name, presence: true
end

# == Schema Information
#
# Table name: tournaments
#
#  id            :bigint           not null, primary key
#  name          :string           default(""), not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  federation_id :bigint
#
# Indexes
#
#  index_tournaments_on_federation_id  (federation_id)
#
# Foreign Keys
#
#  fk_rails_...  (federation_id => federations.id)
#
