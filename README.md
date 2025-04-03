# PlayerBackpackSavesWeaponsWithAttachments

This fixes weapons saving their attachments inside player worn backpacks.
After relogging with fully kitted weapons in the backpack (Scopes etc), everything is still there. 

I marked the single line code changes with "// Change here" in both files.

Warning: Since the data structure changes you need to either clear the current alive players inside the player table, or set the to backpack_weapons to an empty array []

![20760B~1](https://github.com/user-attachments/assets/74547654-17a9-451b-b854-0e0945101aa2)
