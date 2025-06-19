FactoryBot.define do
  factory :task do
    title { "Learn Figma" }
    description { "Practice UI design" }
    completed { false }

    trait :completed do
      completed { true }
    end

    trait :without_title do
      title { nil }
    end
  end
end
