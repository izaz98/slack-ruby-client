# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Cli
    class App
      desc 'AdminAppsRequests methods.'
      command 'admin_apps_requests' do |g|
        g.desc 'Cancel app request for team'
        g.long_desc %( Cancel app request for team )
        g.command 'cancel' do |c|
          c.flag 'request_id', desc: 'The id of the request to cancel.'
          c.flag 'enterprise_id', desc: 'The ID of the enterprise where this request belongs.'
          c.flag 'team_id', desc: 'The ID of the workspace where this request belongs.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.admin_apps_requests_cancel(options))
          end
        end

        g.desc 'List app requests for a team/workspace.'
        g.long_desc %( List app requests for a team/workspace. )
        g.command 'list' do |c|
          c.flag 'certified', desc: 'Include requests for certified apps.'
          c.flag 'cursor', desc: 'Set cursor to next_cursor returned by the previous call to list items in the next page.'
          c.flag 'enterprise_id', desc: '.'
          c.flag 'limit', desc: 'The maximum number of items to return. Must be between 1 - 1000 both inclusive.'
          c.flag 'team_id', desc: '.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.admin_apps_requests_list(options))
          end
        end
      end
    end
  end
end
