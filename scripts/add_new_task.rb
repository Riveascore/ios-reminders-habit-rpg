require "json_serializer"
require 'curb'

api_key = ENV['HABIT_RPG_API_KEY']
habit_rpg_user_id = ENV['HABIT_RPG_USER_ID']

@c = Curl::Easy.new
create_task_url = "https://habitrpg.com:443/api/v2/user/tasks"
headers = {
	'Content-Type' => 'application/json',
	'Accept' => 'application/json',
	'x-api-user' => habit_rpg_user_id,
	'x-api-key' => api_key
}
# payload = "{\"key\":\"value\"}"
payload = {
	:object => "Stuffffffed crust pizza yo"
}.to_json

@c.url = create_task_url
@c.headers = headers
@c.verbose = true
@c.http_post(payload)