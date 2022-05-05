# local r docker container running on port 80
# this command disables authentication so only use it on a private network

docker run -d -e DISABLE_AUTH=true --rm -p 127.0.0.1:3000:8787 -v C:/Users/andre/Dropbox/Dev/adaptive-management-docs:/home/rstudio/adaptive-management-docs amantaya/verse_adaptive_docs:4.1.3

# example docker commit command
# first you need an example containter hash

# get the containter hash by running
# docker ps

# result: 647dfb54e668

# then run docker commit command
# docker commit -m "install project packages" 647dfb54e668 amantaya/verse_grazing_pushbullet:4.0.5

# docker containers can be saved locally for backups using the command below
# note that this saves the image into your current working directory
# docker save --output verse_grazing_pacman.tar amantaya/verse_grazing_pacman
