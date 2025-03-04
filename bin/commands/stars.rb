# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Cli
    class App
      desc 'Stars methods.'
      command 'stars' do |g|
        g.desc 'Save an item for later. Formerly known as _adding a star_.'
        g.long_desc %( Save an item for later. Formerly known as _adding a star_. )
        g.command 'add' do |c|
          c.flag 'channel', desc: 'Channel to add star to, or channel where the message to add star to was posted (used with timestamp).'
          c.flag 'file', desc: 'File to add star to.'
          c.flag 'file_comment', desc: 'File comment to add star to.'
          c.flag 'timestamp', desc: 'Timestamp of the message to add star to.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.stars_add(options))
          end
        end

        g.desc "List a user's saved items, formerly known as stars."
        g.long_desc %( List a user's saved items, formerly known as stars. )
        g.command 'list' do |c|
          c.flag 'cursor', desc: "Parameter for pagination. Set cursor equal to the next_cursor attribute returned by the previous request's response_metadata. This parameter is optional, but pagination is mandatory: the default value simply fetches the first 'page' of the collection. See pagination for more details."
          c.flag 'limit', desc: "The maximum number of items to return. Fewer than the requested number of items may be returned, even if the end of the list hasn't been reached."
          c.flag 'team_id', desc: 'encoded team id to list stars in, required if org token is used.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.stars_list(options))
          end
        end

        g.desc 'Removes a saved item (star) from an item.'
        g.long_desc %( Removes a saved item (star) from an item. )
        g.command 'remove' do |c|
          c.flag 'channel', desc: 'Channel to remove star from, or channel where the message to remove star from was posted (used with timestamp).'
          c.flag 'file', desc: 'File to remove star from.'
          c.flag 'file_comment', desc: 'File comment to remove star from.'
          c.flag 'timestamp', desc: 'Timestamp of the message to remove star from.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.stars_remove(options))
          end
        end
      end
    end
  end
end
