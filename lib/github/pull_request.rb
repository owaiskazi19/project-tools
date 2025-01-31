# frozen_string_literal: true

module GitHub
  class PullRequest < SimpleDelegator
    def short_url
      html_url.split('/')[4..].join('/').gsub('/pull/', '#')
    end

    def to_s
      "#{html_url}: #{title} - [@#{user.login}]"
    end

    def self.wrap(collection)
      collection.map do |obj|
        new obj
      end
    end
  end
end
