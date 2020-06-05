class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def self.all
    @@all
  end

  def appointments
    Appointments.all.select do |appointment|
      appointment.patient
    end
  end

  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end




end
