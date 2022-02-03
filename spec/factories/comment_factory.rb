FactoryBot.define do
  factory :comment do
    body { "MyText" }
    author
    post
  end
end
