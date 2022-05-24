#include "inertial_sense_ros.h"

int main(int argc, char**argv)
{
    InertialSenseROS* thing;
    ros::init(argc, argv, "inertial_sense_node");
    if (argc > 1)
        thing = new InertialSenseROS(argv[1]);
    else
    thing = new InertialSenseROS;
    
    while (ros::ok())
    {
        ros::spinOnce();
        thing->update();
    }
    return 0;
}