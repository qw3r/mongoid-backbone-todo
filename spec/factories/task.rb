FactoryGirl.define do
  factory :task do
    sequence :title {|n| "this task ##{n}" }
    done false
  end
end