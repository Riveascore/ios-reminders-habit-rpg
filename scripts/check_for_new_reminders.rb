module Kernel
  def tick_every sec, &pr
    Thread.new do loop do
      pr.call
      t = Time.now.to_f
      frac = t.modulo(sec.to_f)
      sleep(sec - frac)
    end end
  end
end

# Time in seconds
time_interval = 20
initial_session = ICloud::Session.new("riveascorehabitrpg@gmail.com", "Gonna get some shit done1")
current_reminders_size = initial_session.reminders.size

thread = tick_every(time_interval) do
	# Have to get new session every time
  session = ICloud::Session.new("riveascorehabitrpg@gmail.com", "Gonna get some shit done1")
  reminders = session.reminders
  if reminders.size > current_reminders_size
    current_reminders_size = reminders.size
  	sorted_reminders = reminders.sort_by { |rem| rem.created_date_extended }
  	@new_reminder = sorted_reminders.last
  	puts "Title: #{@new_reminder.title}"
  end
end