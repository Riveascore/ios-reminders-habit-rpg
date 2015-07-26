session = ICloud::Session.new("riveascorehabitrpg@gmail.com", "Gonna get some shit done1")

reminders = session.reminders

new_reminder = ICloud::Records::Reminder.new
new_reminder.title = "I'm a new title from ruby-icloud"

session.post_reminder(new_reminder)