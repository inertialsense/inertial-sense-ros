#include "inertial_sense_ros.h"

int main(int argc, char**argv)
{
    InertialSenseROS* thing;
    ros::init(argc, argv, "inertial_sense_node");
    if (argc > 1)
    {
        string paramYamlPath = argv[1];
        YAML::Node node;
        try
        {
            YAML::Node fileNode = YAML::LoadFile(paramYamlPath);
            node = fileNode["inertial_sense_ros"];
        }
        catch (const YAML::BadFile &bf)
        {
            std::cout << "Loading file \"" << paramYamlPath << "\" failed.  Using default parameters.\n\n";
        }

        thing = new InertialSenseROS(node);
    }
    else
    {
        thing = new InertialSenseROS;
    }

    while (ros::ok())
    {
        ros::spinOnce();
        thing->update();
    }
    return 0;
}