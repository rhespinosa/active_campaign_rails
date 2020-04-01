# frozen_string_literal: true

RSpec.describe ActiveCampaignRails do
  it 'has a version number' do
    expect(ActiveCampaignRails::VERSION).not_to be nil
  end

  describe 'initialization' do
    it 'sets default value for the url attribute' do
      configuration = described_class.new
      expect(configuration.url).to eq('PLEASE PROVIDE VALID URL')
    end
  end
end
