require 'icloud'

module HandleICloudReminders

  # iCloud username and password from environment variables
  ICLOUD_USERNAME = ENV['ICLOUD_USERNAME']
  ICLOUD_PASSWORD = ENV['ICLOUD_PASSWORD']

  # TODO optionally pass session object in case we already have an ICloud session object
  def self.add_reminder(options = {})
    options = {
      :title => 'Default handle_ios_reminders'
    }.merge(options)

    session = ICloud::Session.new(ICLOUD_USERNAME, ICLOUD_PASSWORD)

    reminders = session.reminders

    new_reminder = ICloud::Records::Reminder.new
    new_reminder.title = options[:title]

    session.post_reminder(new_reminder)
  end
end