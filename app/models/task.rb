class Task < ActiveRecord::Base
	scope :between, lambda {|start_time, end_time|
    {:conditions => ["? < started < ?", Task.format_date(start_time), Task.format_date(end_time)] }
  }

  # need to override the json view to return what full_calendar is expecting.
  # http://arshaw.com/fullcalendar/docs/event_data/Event_Object/
  def as_json(options = {})
    {
      :id => self.id,
      :title => self.title,
      :description => self.description || "",
      :started => started.rfc822,
      :finished => finished.rfc822,
      :allDay => self.allday,
      :recurring => false,
      :url => Rails.application.routes.url_helpers.task_path(id),
      #:color => "red"
    }

  end

  def self.format_date(date_time)
    Time.at(date_time.to_i).to_formatted_s(:db)
  end
end
