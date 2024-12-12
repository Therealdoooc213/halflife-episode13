import { Antagonist, Category } from '../base';

export const TRAITOR_MECHANICAL_DESCRIPTION = `
      Start with an uplink to purchase your gear and take on your
      objectives. Ascend through the ranks and become an infamous legend.
   `;

const Traitor: Antagonist = {
  key: 'traitor',
  name: 'Rebel Spy',
  description: [
    `
      People join the resistance for many reasons. Some want to help others,
      some were forced into it, and some only want to see the combine burn. Whatever
      the reason, you're a spy for Lambda and are here to carry out their goals.
    `,
    TRAITOR_MECHANICAL_DESCRIPTION,
  ],
  category: Category.Roundstart,
  priority: -1,
};

export default Traitor;
