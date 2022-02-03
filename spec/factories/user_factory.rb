FactoryBot.define do
  factory :user, aliases: [:author] do
    name { "Craig Buchek" }
    sequence(:email) { |n| "craig#{n}@buchek.com" }
    password { "insecure!" }
  end
end
