#include "VCL_BackgroundSubtraction.h"

namespace vcl
{
namespace bgs
{

bool BG_simple( cv::Mat newFrame, cv::Mat BG )
{
    static cv::Mat diff;
    cv::Mat element;

    //-- Find difference between the current frame and the background and threshold the image
    cv::absdiff( newFrame, BG, diff );
    cv::threshold( diff, diff, 35, 255, cv::THRESH_BINARY );

    //-- first erosion
    //  element = cv::getStructuringElement( cv::MORPH_ELLIPSE, cv::Size(

    return true;
}

} // namespace bgs
} // namespace vcl