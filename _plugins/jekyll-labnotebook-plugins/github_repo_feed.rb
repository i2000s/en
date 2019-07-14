require 'feedjira' # atom/rss API
require 'octokit'   # Github API
require 'nokogiri'  # Parse HTML
require 'httparty' # To use feedjira v3.0

# Github repo commit feed based on feedzirra rather than the Github API.
# By Xiaodong Qi, based on the github_feed.rb plugin.

module Jekyll
  class GithubRepoFeed < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      input = text.split(/, */ )
      @user = input[0]
      @repo = input[1]
      @count = input[2]
      if input[2] == nil
        @count = 3
      end
    end
    def render(context)
      Feedjira.logger.level = Logger::FATAL # Hide log of warning. See https://github.com/feedjira/feedjira/issues/380 also the earlier warning message: https://travis-ci.org/i2000s/en/builds/207516706
      puts "Generating Github repo feed from rss using feedjira with github_repo_feed.rb"
      xml = HTTParty.get("https://github.com/" + @user + "/" + @repo + "/commits.atom").body # Updated for Feedjira 3.0
      feed = Feedjira.parse(xml) # This will call the rss from the repo's default branch.
      # consider formatting properly
      if defined?(feed.entries)
        out = "<ul>"
        for i in 0 ... @count.to_i
          doc = Nokogiri::HTML.parse(feed.entries[i].content) # parse the content
          # Print title, content
          out = out + "<li>" +
            feed.entries[i].title + ": " +
            "<em>" +
            doc.css('blockquote').text.gsub(/\n/, ' ').squeeze(' ').strip[0 .. 150] +
            "</em>" +
            " <a href=\"" + feed.entries[i].url + "\">" +
            feed.entries[i].published.strftime("%I:%M %Y/%m/%d") + "</a>" +
            "</li>"
        end
        out + "</ul>"
      else
        " "
      end
    end
  end
end ## end module Jekyll

Liquid::Template.register_tag('github_repo_feed', Jekyll::GithubRepoFeed)
