# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

require 'spec_helper'

RSpec.describe Slack::Web::Api::Endpoints::Dialog do
  let(:client) { Slack::Web::Client.new }
  context 'dialog_open' do
    it 'encodes dialog as json' do
      expect(client).to receive(:post).with('dialog.open', {dialog: %q[{"data":["data"]}], trigger_id: %q[]})
      client.dialog_open(dialog: {:data=>["data"]}, trigger_id: %q[])
    end
  end
end
