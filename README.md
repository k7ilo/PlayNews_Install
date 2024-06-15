# Non-Allstarlink/Asterisk PlayNews v1 - K7ILO 06/2024
Install script of PlayNews to broadcast ARN and ARRL News 

Make the install script executable: chmod +x install_PlayNews.sh
and to run the install script: ./install_PlayNews.sh


To play news immediately from the console, type:
/opt/PlayNews/playnews ARN NOW   (To play Amateur Radio Newsline)
/opt/PlayNews/playnews ARRL NOW  (To play American Radio Relay League news)

To play news at a certain time from the console, type:
/opt/PlayNews/playnews ARN 12:00   (Start ARN broadcast at 12pm with 10m and 5m announcements starting at 11:50am)
/opt/PlayNews/playnews ARRL 15:00  (Start ARRL broadcast at 3pm with 10m and 5m announcements starting at 2:50pm)

cron example's -

Start a cron job every Tuesday at 8:30 PM to play ARRL news at 9 PM on the same day.
10m and 5m announcements start at 8:50pm.
30 20 * * 2 /opt/PlayNews/playnews ARRL 21:00 &> /dev/null 2>&1

Start a cron job every Thursday at 6:30 PM to play ARN news at 7 PM on the same day
10m and 5m announcements start at 6:50pm.
30 18 * * 4 /opt/PlayNews/playnews ARN 19:00 &> /dev/null 2>&1
