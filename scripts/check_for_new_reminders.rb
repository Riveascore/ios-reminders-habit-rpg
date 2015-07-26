require 'lib/handle_icloud_reminders'
require 'lib/tick_every'

# Check for new reminder every 20 seconds

initial_session = ICloud::Session.new(HandleICloudReminders::ICLOUD_USERNAME, HandleICloudReminders::ICLOUD_PASSWORD)
current_reminders_size = initial_session.reminders.size

# Time in seconds
time_interval = 20

thread = tick_every(time_interval) do
  # Have to get new session every time
  session = ICloud::Session.new(HandleICloudReminders::ICLOUD_USERNAME, HandleICloudReminders::ICLOUD_PASSWORD)
  reminders = session.reminders
  if reminders.size > current_reminders_size
    current_reminders_size = reminders.size
    sorted_reminders = reminders.sort_by { |rem| rem.created_date_extended }
    new_reminder = sorted_reminders.last
    puts "Title: #{new_reminder.title}"
  end
end