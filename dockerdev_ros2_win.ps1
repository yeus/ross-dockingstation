#TODO:
# - check DNS
# - X-Server

$WS = "/home/ross/ross/ros2" #Workspace-Pfad speichern
$PTH = "$PWD"

echo $PTH

if  ("$(docker inspect --format='{{.State.Status }}' dockerdev 2>$null)" -eq "exited"){
    echo "reuse last docker container!!"
    docker start -i dockerdev
}

else {
    echo "create new container"
    docker run --privileged `
    --network=host `
    -v ${PTH}:${WS} `
    -w $WS -it `
    --name dockerdev gitlab-registry.tubit.tu-berlin.de/ross-lead-engineers/ross-docking-station:develop `
    /bin/bash -c "byobu"
    echo "create success!!"


    if ($? -eq 125){
        echo "dockerdev already running, creating new image...!"
        docker run --privileged `
        --network=host `
        -v ${PTH}:${WS} `
        -w $WS -it ``
        gitlab-registry.tubit.tu-berlin.de/ross-lead-engineers/ross-docking-station:develop `
        /bin/bash -c "byobu"
    }
}
