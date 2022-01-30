FactoryBot.define do
  factory :user, aliases: [:author] do
    name { "Craig Buchek" }
    email { "craig@buchek.com" }
    password { "insecure!" }
  end
end
