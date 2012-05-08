require 'sinatra'
require 'tropo-webapi-ruby'
require 'typhoeus'
require 'json'

enable :sessions

get '/' do
  "Gitualvoicemail - It's like voicemail, but for your GitHub project"
end

post '/' do
  github_commits = JSON.parse(Typhoeus::Request.get('https://api.github.com/repos/czarneckid/test-repository/commits', 
    :params => {:per_page => 5}, 
    :timeout => 1000,
    :cache_timeout => 60
  ).body)
    
  tropo = Tropo::Generator.new do
    github_commits.each do |commit|
      say "#{commit['commit']['committer']['name']} committed #{commit['commit']['message']}"
    end
  end

  tropo.response
end
