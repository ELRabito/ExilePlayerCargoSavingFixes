# PlayerBackpackSavesWeaponsWithAttachments

This fixes weapons saving their attachments inside player worn backpacks/uniform/vest.
After relogging with fully kitted weapons stored inside player gear, the attachments are still attached to weapon instead of vanishing.

I marked the single line code changes with "// Change here" in both files. (There are multiple in each, just search for: Change here)

**Warning**: Since the data structure changes i advise to either clear the player table in the database or wait for a wipe as there could be issues while loading players.
Test it before you apply it to a live server and make backups! Imho a change best situated for a wipe!

This fix replaces my old fix, if you have that installed you can revert it!: https://github.com/ELRabito/Exile-Weapon-Cargo-Attachment-Saving.

![20760B~1](https://github.com/user-attachments/assets/74547654-17a9-451b-b854-0e0945101aa2)
