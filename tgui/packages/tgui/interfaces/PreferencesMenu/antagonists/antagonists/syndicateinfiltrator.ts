import { Antagonist, Category } from '../base';
import { TRAITOR_MECHANICAL_DESCRIPTION } from './traitor';

const SyndicateInfiltrator: Antagonist = {
  key: 'syndicateinfiltrator',
  name: 'Rebel Infiltrator',
  description: [
    'A form of rebel insurgent that can activate when joining an ongoing shift.',
    TRAITOR_MECHANICAL_DESCRIPTION,
  ],
  category: Category.Latejoin,
  priority: -1,
};

export default SyndicateInfiltrator;
