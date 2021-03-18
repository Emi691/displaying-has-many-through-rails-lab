class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def date_time
        dt = self.appointment_datetime
        @hour = dt.strftime("%H:%M")
        "#{Date::MONTHNAMES[dt.month]} #{dt.day}, #{dt.year} at #{@hour}"
    end
end
