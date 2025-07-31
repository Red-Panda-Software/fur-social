# frozen_string_literal: true

# Factory that defines all possible User objects that can be created
# during testing.
::FactoryBot.define do
  factory(:user) do
    email { "#{::Faker::Name.first_name}.#{::Faker::Name.last_name}@example.com" }
    nickname { ::Faker::Alphanumeric.alpha(number: 10) }
  end
end
