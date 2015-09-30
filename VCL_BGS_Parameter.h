#include <stdio.h>
#include <iostream>

namespace vcl
{
namespace bgs
{

//--Parameters
class Parameters{
public:
	
	Parameters()
	{
		people_cascade_name = "C:/Dropbox/C++ Projects/Aerial Tracking/cascade_people_e3.xml";
		//people_cascade_name = "C:/Dropbox/C++ Projects/Virat_tracking_classification/cascade_virat_vehicle_haar.xml";
		alpha = 0.5;
		//input_video = "Y:/Hasan/Aerial Video/Virat outputs/09162008_1_5_1782_2257_3.avi";
		input_video = "Y:/Hasan/Aerial Video/VIRAT data/Stabilized Videos/09162008_1_5_1782_2257_stabilized.avi";
		overlap_percent = 0.5;
	}

	//--input video
	std::string input_video; 
	
	//--Motion detection related parameters.
	static const int min_motion_reg = 200;								//--Minimum width of the detected motion region.
	static const int max_motion_reg = 2000;								//--Maximum width of the detected motion region.
	float alpha; 														//--Update rate of the background model.
	static const int dilate_size = 16;									//--Motion region dilation.
	static const int erosion_size_1 = 1, erosion_size_2 = 12;			//--Motion regin erosion.

	//--Object classification related parameters.
	static const int min_object_size = 20;								//--Minimum width of the detected peoples
	static const int max_object_size = 50;								//--Maximum width of the detected peoples
	float overlap_percent;												//--Overlapping detections to be aggregated
	std::string people_cascade_name; 									//--Cascade classifier xml file

	//--Tracking related parameters.
	static const int start_frame = 0;									//--Starting frame in the video to initialize tracking
	static const int age_limit = 3;										//--Number of frames an object needed to be persist to initialize a tracker.
	static const int track_without_detection = 3;						//--Number of frames an object will be tracked without measurement.
	static const int N = 5;												//--Number of frames needed to compute initial background model for each video segment.
	static const int vid_seg = 50;										//--Size of the video segment.
	static const int offset_xl = 40, offset_xr = 40;					//--x offset boundary for each frame
	static const int offset_yt = 40, offset_yb = 40;					//--y offset boundary for each frame

	//--Visualization related parametres.
	static const bool show_frame = false;								//--Show video frame during program running
	static const bool show_foreground = false;							//--Show forground moving regions during program running;
	static const bool show_detection = true;							//--Show people detection result during program running;
	static const bool show_tracking = true;								//--Show tracking result during program running;
	static const bool show_boundary = false;							//--Show boundary
	static const bool save_video_frame = true;							//--Save video;

	static const bool built_in_homography = false;						//--Build homography with virat dataset is used or not
	static const int strategy = 2;										//--1:only motion, 2: only detection, 3: detection + salient motion region, 4: motion+detection
};

}// namespace bgs
}// namespace vcl