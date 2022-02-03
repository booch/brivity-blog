FactoryBot.define do
  factory :post do
    sequence(:title) { |n| "Title ##{n}" }
    body { "This is the body of the post." }
    author

    factory :post_with_comments do
      comments { [association(:comment)] }
    end
  end
end
