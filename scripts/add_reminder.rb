require 'lib/icloud'
require 'lib/handle_icloud_reminders'

reminder_options = { :title => "Reminder generated from add_reminder.rb" }

HandleICloudReminders.add_reminder(reminder_options)