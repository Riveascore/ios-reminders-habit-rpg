require "json_serializer"
require 'curb'

module HandleHabitRPG

  # Key and user_id are static in environment
  API_KEY = ENV['HABIT_RPG_API_KEY']
  HABIT_RPG_USER_ID = ENV['HABIT_RPG_USER_ID']

  # Curl headers for http get/post, always interact via JSON
  HEADERS = {
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'x-api-user' => HABIT_RPG_USER_ID,
    'x-api-key' => API_KEY
  }

  # Base api url along with hash of HabitRPG API urls we can call
  API_PREFIX = "https://habitrpg.com:443/api/v2"
  SWAGGER_URLS = {
    :tasks => {
      :get => "/user/tasks",
      :create => "/user/tasks"
    }
  }

  def self.make_url(url_suffix)
    return "#{API_PREFIX}#{url_suffix}"
  end

  def self.add_task(options = {})
    options = {
      :type =>  'todo',
      :text => 'New todo from ruby!'
    }.merge(options)

    payload = options.to_json
    
    curl = Curl::Easy.new
    create_task_url = make_url(SWAGGER_URLS[:tasks][:get])

    curl.url = create_task_url
    curl.headers = HEADERS
    curl.http_post(payload)
  end
end