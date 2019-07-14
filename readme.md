Example to run test:
sudo docker run --rm -v /home/temp/serverspec:/serverspec -v /home/temp/tests/:/home/temp/ -e HOST="x.x.x.x" livingdevops/lidop.serverspec spec

