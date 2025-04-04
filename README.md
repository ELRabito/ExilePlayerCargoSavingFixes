# ExilePlayerCargoWeaponsWithAttachmentsSaving

This fixes weapons saving their attachments inside player worn backpacks/uniform/vests.
After relogging with fully kitted weapons stored inside player gear, the attachments are still attached to the weapon instead of vanishing.


# Warnings 
1. Since the data structure changes i advise to either clear the player table in the database or wait for a wipe as there could be issues while loading players.
Test it before you apply it to a live server and make backups! Imho a change best situated for a wipe!
2. This fix replaces my old fix!** If you have that installed you can revert it!: https://github.com/ELRabito/Exile-Weapon-Cargo-Attachment-Saving.

![20760B~1](https://github.com/user-attachments/assets/74547654-17a9-451b-b854-0e0945101aa2)

# Installation

1. You can do the changes manually, I marked all the single line code changes inside the two functions with "// Change here" (There are multiple in each, just search for: Change here)
2. Or if you use extDB3 and didn't do any changes to these two functions, you can just replace both files into ``@ExileServer\addons\exile_server\code`` and repack your exile_server.pbo or add them as CfgExileCustomCode to your mission.
3. Done ! Nothing more needed.
