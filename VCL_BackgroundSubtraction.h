#include <opencv2/core/core.hpp>
#include <opencv2/video/background_segm.hpp>
#include <opencv2/imgproc/imgproc.hpp>

namespace vcl
{
namespace bgs
{

bool motionDetect( cv::Mat newFrame, cv::Mat BG );


} // namespace bgs
} // namespace vcl