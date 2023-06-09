# RC (homework on development of deep learning systems)

Based on [Time-series-classification-and-clustering-with-Reservoir-Computing](https://github.com/FilippoMB/Time-series-classification-and-clustering-with-Reservoir-Computing)

## How to run Docker image 
My image on [DockerHub](https://hub.docker.com/repository/docker/kspurtova/rc/general)  

All you need to do is have Docker daemon running  

On some operating systems, like Ubuntu and Debian, the Docker daemon service starts automatically. Use the following command to start it manually:


```
sudo systemctl start docker
```

Then pull my image    

```
docker pull kspurtova/rc:latest
```

And run the container

```
docker run kspurtova/rc:latest
```

It will run a [test.py](./timeseriesrc/code/test.py) which will compare two txt-files (yours with what i got on my machine). 
If they are similar it will print "Test passed".

After that the container will stop and output files will be availiable.

```
docker ps -a
docker cp <container_id>:/home/docker_user/images/outputs ~/<your_folder>
```

## How to build Docker image
If you are brave enough you can try to build an image all by yourself.  

Firstly clone this repository recursively

```
git clone https://github.com/kspurtova/RC_dlearn.git --recursive
cd RC_dlearn
```
Make sure you have Docker installed and your Docker daemon is running  
Then build an image
```
docker build -t rc .
```

You can try to run it with 
```
docker run rc
```
