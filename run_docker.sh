docker run -it --env COLUMNS=`tput cols` --env LINES=`tput lines` -v `pwd`/:/~ -w /~ panama-img:latest bash

