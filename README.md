Repository to use Docker as ROSS development Tool
------

Within this Repository scrips and Dockerfiles will be stored to work with Docker.


# dockerutils

copy the files in your project and adapt them to your needs theay can be used to
start the ros images:

* docker_ros1_start_template
* docker_ros2_start_template


# Docker and GUI's

To work with a GUI in a Docker container the X-Server must be shared with the docker container. Dis can be done as discribed here:

http://wiki.ros.org/docker/Tutorials/GUI

Within this project until now the first method is used. Be aware that this method is not safest way.
