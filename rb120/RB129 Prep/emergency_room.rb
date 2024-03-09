class ER
  attr_reader :patients, :staff
  
  def initialize
    @patients = []
    @staff = []
  end
  
  def add_patient(patient)
    @patients << patient
  end
  
  def add_staff(staff)
    @staff << staff
  end
  
  def staff_list
    pp @staff
  end
end

class Patient
  attr_accessor :name, :medications, :doc

  def initialize(name, er)
    @name = name
    @medications = []
    @doc = ''
    add_to_ER(er)
  end
  
  def add_doctor(doctor)
    @doc = doctor.name
  end
  
  def <<(medication)
    medications << medication || medication.name
  end

  def to_s
    <<~statement
    ">>>>>>>>>>>>>>>>>>>>>>>>>
    Name: #{self.name}
    Role: #{self.class}
    Medication: #{self.medications.map(&:name).join(", ")}
    Responsible Staff: #{doc}
    <<<<<<<<<<<<<<<<<<<<<<<<<"
    statement
  end
  
  private
  
  def add_to_ER(er)
    er.add_patient(self)
  end
end

class Staff
  attr_accessor :name
  
  def initialize(name, er)
    @name = name
    add_to_ER(er)
  end
  
  private
  
  def add_to_ER(er)
    er.add_staff(self)
  end
end

class Doctor < Staff
  
  def initialize(name, er)
    @patients = []
    super
  end

  def prescribe_meds(patient, meds_arr)
    patient = find_patient(patient) if patient.is_a? String
    meds_arr = [meds_arr] if !meds_arr.is_a? Array
    
    meds_arr.each do |med|
      patient << ((med.is_a? String) ? Medicine.new(med) : med )
    end
  end

  def add_patient(patient)
    @patients << patient
    patient.add_doctor(self)
  end
  
  private
  
   def find_patient(name)
    @patients.find {|p| p.name.downcase == name.downcase}
  end
end

class Nurse < Staff
  def comfort_patient
  end

end

class NursesAssistant < Nurse
  def apply_casts
  end
end

class Medicine
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
end

er = ER.new
p patient = Patient.new("Amy", er)
p patient0 = Patient.new("Chris", er)

p nurse = Nurse.new("nancy", er)
p nurse2 = Nurse.new("mancy", er)
p nurse3 = Nurse.new("dancy", er)
p er.staff_list
doctor = Doctor.new("Edie", er)
doctor1 = Doctor.new("Ed", er)
doctor.add_patient(patient)
doctor1.add_patient(patient0)
doctor.prescribe_meds(patient, Medicine.new("Bayer"))
  
doctor1.prescribe_meds("Chris",["Entocort", "Opium"].map{|n| Medicine.new(n)})

puts "Doctor's name is #{doctor.name}"
puts patient0.medications
puts patient
puts patient0