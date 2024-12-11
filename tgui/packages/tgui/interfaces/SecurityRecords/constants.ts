export const CRIMESTATUS2COLOR = {
  Anticitizen: 'bad',
  Discharged: 'blue',
  Incarcerated: 'average',
  Loyalist: 'good',
  Suspected: 'teal',
} as const;

export const CRIMESTATUS2DESC = {
  Anticitizen: 'Anticitizen. Target must have valid crimes to set this status.',
  Discharged: 'Discharged. Individual has been acquitted from wrongdoing.',
  Incarcerated: 'Incarcerated. Individual is currently serving a sentence.',
  Loyalist: 'Loyalist. Marked as a loyalist citizen.',
  Suspected: 'Suspected. Monitor closely for criminal activity.',
} as const;
