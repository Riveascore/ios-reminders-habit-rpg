require 'curb'
require 'highline/import'

api_key = ENV['HABIT_RPG_API_KEY']
habit_rpg_user_id = ENV['HABIT_RPG_USER_ID']

tasks_url = "https://habitrpg.com:443/api/v2/user/tasks"

@c = Curl::Easy.new(tasks_url) do |curl|
	curl.headers["x-api-user"] = habit_rpg_user_id
	curl.headers["x-api-key"] = api_key
end

@c.perform