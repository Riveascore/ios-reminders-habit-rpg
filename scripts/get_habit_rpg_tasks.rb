require 'curb'
require 'highline/import'

# c = Curl::Easy.Perform(tasks_url)

# api_key = ask "Enter api key: "
api_key = ask "Enter api key: "

# tasks_url = "https://habitrpg.com:443/api/v2/user/tasks"
# habit_rpg_user_id = "1c26435e-906d-4f1f-8cd5-d7d9ab03e9c7"
# user_id_field = Curl::PostField.content('x-api-user', habit_rpg_user_id)
# c = Curl::Easy.http_get(tasks_url, user_id_field, api_key)



# curl -X GET -H "x-api-key:" -H "x-api-user:" https://habitrpg.com:443/api/v2/user/tasks