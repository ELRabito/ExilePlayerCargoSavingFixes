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

3.Edit the [loadPlayer] querrie inside exile.ini (extDB3 Example)

From (extDB3 default)
OUTPUT = 1,2-STRING,3-STRING,4,5,6,7,8,9,10,11,12,13,14,15,16-STRING,17,18,19,20-STRING,21-STRING,22,23-STRING,24-STRING,25-STRING,26,27-STRING,28,29-STRING,30,31-STRING,32,33,34,35-STRING,36,37,38,39,40,41,42,43,44-STRING,45,46,47

Remove the -STRING for parameter 16, so it looks like below.
OUTPUT = 1,2-STRING,3-STRING,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20-STRING,21-STRING,22,23-STRING,24-STRING,25-STRING,26,27-STRING,28,29-STRING,30,31-STRING,32,33,34,35-STRING,36,37,38,39,40,41,42,43,44-STRING,45,46,47

4. Done ! Nothing more needed.
