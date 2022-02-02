RSpec.configure do |config|
  config.include Warden::Test::Helpers, type: :controller
  config.include Warden::Test::Helpers, type: :feature
  config.include Warden::Test::Helpers, type: :request
end
