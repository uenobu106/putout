# == Schema Information
#
# Table name: reports
#
#  id         :integer          not null, primary key
#  report_id  :integer
#  title      :string
#  comment    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Report < ApplicationRecord
  belongs_to :user
end
