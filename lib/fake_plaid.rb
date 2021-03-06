require 'fake_plaid/configuration'
require 'fake_plaid/initializers/webmock'
require 'fake_plaid/stub_app'

module FakePlaid
  extend Configuration

  def self.stub_plaid
    # Plaid.env = 'sandbox'
    # Plaid.client_id = 'PLAID_CLIENT_ID'
    # Plaid.secret = 'PLAID_SECRET'
    # Plaid.public_key = 'PLAID_PUBLIC_KEY'
    #
    stub_request(:any, /plaid.com/).to_rack(FakePlaid::StubApp)
  end
end
