PROPAEDEUTIC_PROCEDURES = %w[
  Auscultation
  Medical\ inspection
  Palpation
  Percussion
  Vital\ signs\ measurement
]

DIAGNOSTIC_PROCEDURES = %w[
  Lab\ tests
  Biopsy\ test
  Blood\ test
  Stool\ test
  Urinalysis
  Cardiac\ stress\ test
  Electrocardiography
  Electrocorticography
  Electroencephalography
  Electromyography
  Electroneuronography
  Electronystagmography
  Electrooculography
  Electroretinography
  Endoluminal\ capsule\ monitoring
  Endoscopy
  Colonoscopy
  Colposcopy
  Cystoscopy
  Gastroscopy
  Laparoscopy
  Laryngoscopy
  Ophthalmoscopy
  Otoscopy
  Sigmoidoscopy
  Esophageal\ motility study
  Evoked\ potential
  Magnetoencephalography
  Medical\ imaging
  Angiography
  Aortography
  Cerebral\ angiography
  Coronary\ angiography
  Lymphangiography
  Pulmonary\ angiography
  Ventriculography
  Chest\ photofluorography
  Computed\ tomography
  Echocardiography
  Electrical\ impedance\ tomography
  Fluoroscopy
  Magnetic\ resonance\ imaging
  Diffuse\ optical\ imaging
  Diffusion\ tensor\ imaging
  Diffusion-weighted\ imaging
  Functional\ magnetic\ resonance\ imaging
  Positron\ emission\ tomography
  Radiography
  Scintillography
  SPECT
  Ultrasonography
  Contrast-enhanced\ ultrasound
  Gynecologic\ ultrasonography
  Intravascular\ ultrasound
  Obstetric\ ultrasonography
  Thermography
  Virtual\ colonoscopy
  Neuroimaging
  Posturography
]

THERAPEUTIC_PROCEDURES = %w[
  Therapy\ and\ List\ of\ surgical\ procedures
  Thrombosis\ prophylaxis
  Precordial\ thump
  Politzerization
  Hemodialysis
  Hemofiltration
  Plasmapheresis
  Apheresis
  Extracorporeal\ membrane\ oxygenation\ (ECMO)
  Cancer\ immunotherapy
  Cancer\ vaccine
  Cervical\ conization
  Chemotherapy
  Cytoluminescent\ therapy
  Insulin\ potentiation\ therapy
  Low-dose\ chemotherapy
  Monoclonal\ antibody\ therapy
  Photodynamic\ therapy
  Radiation\ therapy
  Targeted\ therapy
  Tracheal\ intubation
  Unsealed\ source\ radiotherapy
  Virtual\ reality\ therapy
  Physical\ therapy
  Physiotherapy
  Speech\ therapy
  Phototerapy
  Hydrotherapy
  Heat\ therapy
  Shock\ therapy
  Insulin\ shock\ therapy
  Electroconvulsive\ therapy
  Symptomatic\ treatment
  Fluid\ replacement\ therapy
  Palliative\ care
  Hyperbaric\ oxygen\ therapy
  Oxygen\ therapy
  Gene\ therapy
  Enzyme\ replacement\ therapy
  Intravenous\ therapy
  Phage\ therapy
  Respiratory\ therapy
  Vision\ therapy
  Electrotherapy
  Transcutaneous\ electrical\ nerve\ stimulation\ (TENS)
  Laser\ therapy
  Combination\ therapy
  Occupational\ therapy
  Immunization
  Vaccination
  Immunosuppressive\ therapy
  Psychotherapy
  Drug\ therapy
  Acupuncture
  Antivenom
  Magnetic\ therapy
  Craniosacral\ therapy
  Chelation\ therapy
  Hormonal\ therapy
  Hormone\ replacement\ therapy
  Opiate\ replacement\ therapy
  Cell\ therapy
  Stem\ cell\ treatments
  Intubation
  Nebulization
  Inhalation\ therapy
  Particle\ therapy
  Proton\ therapy
  Fluoride\ therapy
  Cold\ compression\ therapy
  Animal-Assisted\ Therapy
  Negative\ Pressure\ Wound\ Therapy
  Nicotine\ replacement\ therapy
  Oral\ rehydration\ therapy
]

PROPAEDEUTIC_PROCEDURES.each {|procedure_name| Api::V1::Procedure.create!(name: procedure_name, procedure_type: 'propaedeutic')}
THERAPEUTIC_PROCEDURES.each {|procedure_name| Api::V1::Procedure.create!(name: procedure_name, procedure_type: 'therapeutic')}
DIAGNOSTIC_PROCEDURES.each {|procedure_name| Api::V1::Procedure.create!(name: procedure_name, procedure_type: 'diagnostic')}
