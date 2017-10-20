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

FactoryGirl.define do
  factory :report do
    report_id 1
    title "MyString"
    comment "MyText"
  end
end
