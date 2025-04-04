# ExilePlayerCargoSavingFixes

This fixes weapons saving their attachments inside player worn backpacks/uniform/vests, and saving of backpacks stored inside player worn backpacks on logout (By default both vanish on relog). 

# Warnings 
1. Since there could be issues while loading players, test it before you apply it to a live server and make backups!

2. This fix replaces my old fix - Exile-Weapon-Cargo-Attachment-Saving!
  - If you have that installed you can revert it!: https://github.com/ELRabito/Exile-Weapon-Cargo-Attachment-Saving.


# Installation

1. You can do the changes manually, I marked all the single line code changes inside the two functions with "// Change here" (There are multiple in each, just search for: Change here)
2. Or if you use extDB3 and didn't do any changes to these two functions, you can just replace both files into ``@ExileServer\addons\exile_server\code`` and repack your exile_server.pbo or add them as CfgExileCustomCode to your mission.
3. Edit the [loadPlayer] SQL query inside ``@ExileServer\sql_custom\exile.ini`` (extDB3 Example)

  From (extDB3 default)
  
    OUTPUT = 1,2-STRING,3-STRING,4,5,6,7,8,9,10,11,12,13,14,15,16-STRING,17,18,19,20-STRING,21-STRING,22,23-STRING,24-STRING,25-STRING,26,27-STRING,28,29-STRING,30,31-STRING,32,33,34,35-STRING,36,37,38,39,40,41,42,43,44-STRING,45,46,47

  Remove the -STRING for parameter 16, so it looks like below and save the file.
  
    OUTPUT = 1,2-STRING,3-STRING,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20-STRING,21-STRING,22,23-STRING,24-STRING,25-STRING,26,27-STRING,28,29-STRING,30,31-STRING,32,33,34,35-STRING,36,37,38,39,40,41,42,43,44-STRING,45,46,47

4. Change the datatype for the backpack field in the player table from VARCHAR to TEXT inside your SQL database.
 - This can be done by running this SQL query

        alter table player modify column backpack text;
  
- Or with HeidiSQL (https://www.heidisql.com/) etc (You can also just run the query there).
 
  ![grafik](https://github.com/user-attachments/assets/090038ea-b140-408f-b0e9-aa1390014bbc)

5. Run the SQL query (Depending on your MsSQL server version) from ExilePlayerCargoSaving_SQL_Fixes.sql to update the backpack column to the new data format.

6. Done ! Nothing more needed.
