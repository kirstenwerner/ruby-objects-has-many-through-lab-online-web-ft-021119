class Doctor
  
  attr_accessor :name 
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end 
  
  def appointments
    Appointments.all.select {|appointment| appointment.doctor == self}
  end 
  
  def patients
    
  
end 