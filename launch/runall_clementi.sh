catkin_make -C /home/$USER/dev_ws ;
source /home/$USER/dev_ws/devel/setup.bash


# Get the current directory
CURR_DIR=$(pwd)
# Get the location of the viral package
roscd aloam
PACKAGE_DIR=$(pwd)
# Return to the current dir, print the directions
cd $CURR_DIR
echo CURRENT DIR: $CURR_DIR
echo VIRAL DIR:   $PACKAGE_DIR

export EPOC_DIR=/home/$USER/nucssd2/MATLAB_WS/RAL_VIRAL_SLAM/clementi_aloam
export DATASET_LOCATION=/home/$USER/DATASETS/clementi/
# export DATASET_LOCATION=/media/$USER/myHPSSD/NTU_VIRAL

export CAPTURE_SCREEN=false;
export LOG_DATA=true;

#region NO VIS, NO UWB ------------------------------------------------------------------------------------------------

wait;
./run_one_bag_clementi.sh $EPOC_DIR $DATASET_LOCATION $PACKAGE_DIR blk321_full    $CAPTURE_SCREEN $LOG_DATA 450 0 0 0.75 -1;
wait;
./run_one_bag_clementi.sh $EPOC_DIR $DATASET_LOCATION $PACKAGE_DIR blk323_earlier $CAPTURE_SCREEN $LOG_DATA 450 0 0 0.75 -1;
wait;
./run_one_bag_clementi.sh $EPOC_DIR $DATASET_LOCATION $PACKAGE_DIR blk323_later   $CAPTURE_SCREEN $LOG_DATA 450 0 0 0.75 -1;

#endregion NO VIS, NO UWB ---------------------------------------------------------------------------------------------


#region ## Poweroff ---------------------------------------------------------------------------------------------------

wait;
# poweroff;

#endregion ## Poweroff ------------------------------------------------------------------------------------------------