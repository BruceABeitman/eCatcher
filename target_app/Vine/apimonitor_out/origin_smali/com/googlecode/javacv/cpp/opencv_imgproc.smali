.class public Lcom/googlecode/javacv/cpp/opencv_imgproc;
.super Ljava/lang/Object;
.source "opencv_imgproc.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Properties;
    inherit = {
        Lcom/googlecode/javacv/cpp/opencv_core;
    }
    value = {
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            include = {
                "<opencv2/imgproc/imgproc_c.h>",
                "<opencv2/imgproc/imgproc.hpp>"
            }
            link = {
                "opencv_imgproc@.2.4"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            link = {
                "opencv_imgproc246"
            }
            value = {
                "windows"
            }
        .end subannotation
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_imgproc$CLAHE;,
        Lcom/googlecode/javacv/cpp/opencv_imgproc$GeneralizedHough;,
        Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;,
        Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseFilter;,
        Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseColumnFilter;,
        Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseRowFilter;,
        Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;,
        Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;,
        Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;,
        Lcom/googlecode/javacv/cpp/opencv_imgproc$CvFeatureTree;,
        Lcom/googlecode/javacv/cpp/opencv_imgproc$CvConvexityDefect;,
        Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;,
        Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DPoint;,
        Lcom/googlecode/javacv/cpp/opencv_imgproc$CvQuadEdge2D;,
        Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DEdge;,
        Lcom/googlecode/javacv/cpp/opencv_imgproc$CvChainPtReader;,
        Lcom/googlecode/javacv/cpp/opencv_imgproc$CvContourScanner;,
        Lcom/googlecode/javacv/cpp/opencv_imgproc$CvDistanceFunction;,
        Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHuMoments;,
        Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;,
        Lcom/googlecode/javacv/cpp/opencv_imgproc$CvConnectedComp;
    }
.end annotation


# static fields
.field public static final BORDER_CONSTANT:I = 0x0

.field public static final BORDER_DEFAULT:I = 0x4

.field public static final BORDER_ISOLATED:I = 0x10

.field public static final BORDER_REFLECT:I = 0x2

.field public static final BORDER_REFLECT101:I = 0x4

.field public static final BORDER_REFLECT_101:I = 0x4

.field public static final BORDER_REPLICATE:I = 0x1

.field public static final BORDER_TRANSPARENT:I = 0x5

.field public static final BORDER_WRAP:I = 0x3

.field public static final CV_ADAPTIVE_THRESH_GAUSSIAN_C:I = 0x1

.field public static final CV_ADAPTIVE_THRESH_MEAN_C:I = 0x0

.field public static final CV_BGR2BGR555:I = 0x16

.field public static final CV_BGR2BGR565:I = 0xc

.field public static final CV_BGR2BGRA:I = 0x0

.field public static final CV_BGR2GRAY:I = 0x6

.field public static final CV_BGR2HLS:I = 0x34

.field public static final CV_BGR2HLS_FULL:I = 0x44

.field public static final CV_BGR2HSV:I = 0x28

.field public static final CV_BGR2HSV_FULL:I = 0x42

.field public static final CV_BGR2Lab:I = 0x2c

.field public static final CV_BGR2Luv:I = 0x32

.field public static final CV_BGR2RGB:I = 0x4

.field public static final CV_BGR2RGBA:I = 0x2

.field public static final CV_BGR2XYZ:I = 0x20

.field public static final CV_BGR2YCrCb:I = 0x24

.field public static final CV_BGR2YUV:I = 0x52

.field public static final CV_BGR2YUV_I420:I = 0x80

.field public static final CV_BGR2YUV_IYUV:I = 0x80

.field public static final CV_BGR2YUV_YV12:I = 0x84

.field public static final CV_BGR5552BGR:I = 0x18

.field public static final CV_BGR5552BGRA:I = 0x1c

.field public static final CV_BGR5552GRAY:I = 0x1f

.field public static final CV_BGR5552RGB:I = 0x19

.field public static final CV_BGR5552RGBA:I = 0x1d

.field public static final CV_BGR5652BGR:I = 0xe

.field public static final CV_BGR5652BGRA:I = 0x12

.field public static final CV_BGR5652GRAY:I = 0x15

.field public static final CV_BGR5652RGB:I = 0xf

.field public static final CV_BGR5652RGBA:I = 0x13

.field public static final CV_BGRA2BGR:I = 0x1

.field public static final CV_BGRA2BGR555:I = 0x1a

.field public static final CV_BGRA2BGR565:I = 0x10

.field public static final CV_BGRA2GRAY:I = 0xa

.field public static final CV_BGRA2RGB:I = 0x3

.field public static final CV_BGRA2RGBA:I = 0x5

.field public static final CV_BGRA2YUV_I420:I = 0x82

.field public static final CV_BGRA2YUV_IYUV:I = 0x82

.field public static final CV_BGRA2YUV_YV12:I = 0x86

.field public static final CV_BILATERAL:I = 0x4

.field public static final CV_BLUR:I = 0x1

.field public static final CV_BLUR_NO_SCALE:I = 0x0

.field public static final CV_BayerBG2BGR:I = 0x2e

.field public static final CV_BayerBG2BGR_VNG:I = 0x3e

.field public static final CV_BayerBG2GRAY:I = 0x56

.field public static final CV_BayerBG2RGB:I = 0x30

.field public static final CV_BayerBG2RGB_VNG:I = 0x40

.field public static final CV_BayerGB2BGR:I = 0x2f

.field public static final CV_BayerGB2BGR_VNG:I = 0x3f

.field public static final CV_BayerGB2GRAY:I = 0x57

.field public static final CV_BayerGB2RGB:I = 0x31

.field public static final CV_BayerGB2RGB_VNG:I = 0x41

.field public static final CV_BayerGR2BGR:I = 0x31

.field public static final CV_BayerGR2BGR_VNG:I = 0x41

.field public static final CV_BayerGR2GRAY:I = 0x59

.field public static final CV_BayerGR2RGB:I = 0x2f

.field public static final CV_BayerGR2RGB_VNG:I = 0x3f

.field public static final CV_BayerRG2BGR:I = 0x30

.field public static final CV_BayerRG2BGR_VNG:I = 0x40

.field public static final CV_BayerRG2GRAY:I = 0x58

.field public static final CV_BayerRG2RGB:I = 0x2e

.field public static final CV_BayerRG2RGB_VNG:I = 0x3e

.field public static final CV_CANNY_L2_GRADIENT:I = -0x80000000

.field public static final CV_CHAIN_APPROX_NONE:I = 0x1

.field public static final CV_CHAIN_APPROX_SIMPLE:I = 0x2

.field public static final CV_CHAIN_APPROX_TC89_KCOS:I = 0x4

.field public static final CV_CHAIN_APPROX_TC89_L1:I = 0x3

.field public static final CV_CHAIN_CODE:I = 0x0

.field public static final CV_CLOCKWISE:I = 0x1

.field public static final CV_COLORCVT_MAX:I = 0x87

.field public static final CV_COMP_BHATTACHARYYA:I = 0x3

.field public static final CV_COMP_CHISQR:I = 0x1

.field public static final CV_COMP_CORREL:I = 0x0

.field public static final CV_COMP_HELLINGER:I = 0x3

.field public static final CV_COMP_INTERSECT:I = 0x2

.field public static final CV_CONTOURS_MATCH_I1:I = 0x1

.field public static final CV_CONTOURS_MATCH_I2:I = 0x2

.field public static final CV_CONTOURS_MATCH_I3:I = 0x3

.field public static final CV_COUNTER_CLOCKWISE:I = 0x2

.field public static final CV_DIST_C:I = 0x3

.field public static final CV_DIST_FAIR:I = 0x5

.field public static final CV_DIST_HUBER:I = 0x7

.field public static final CV_DIST_L1:I = 0x1

.field public static final CV_DIST_L12:I = 0x4

.field public static final CV_DIST_L2:I = 0x2

.field public static final CV_DIST_LABEL_CCOMP:I = 0x0

.field public static final CV_DIST_LABEL_PIXEL:I = 0x1

.field public static final CV_DIST_MASK_3:I = 0x3

.field public static final CV_DIST_MASK_5:I = 0x5

.field public static final CV_DIST_MASK_PRECISE:I = 0x0

.field public static final CV_DIST_USER:I = -0x1

.field public static final CV_DIST_WELSCH:I = 0x6

.field public static final CV_FLOODFILL_FIXED_RANGE:I = 0x10000

.field public static final CV_FLOODFILL_MASK_ONLY:I = 0x20000

.field public static final CV_GAUSSIAN:I = 0x2

.field public static final CV_GAUSSIAN_5x5:I = 0x7

.field public static final CV_GRAY2BGR:I = 0x8

.field public static final CV_GRAY2BGR555:I = 0x1e

.field public static final CV_GRAY2BGR565:I = 0x14

.field public static final CV_GRAY2BGRA:I = 0x9

.field public static final CV_GRAY2RGB:I = 0x8

.field public static final CV_GRAY2RGBA:I = 0x9

.field public static final CV_HIST_ARRAY:I = 0x0

.field public static final CV_HIST_MAGIC_VAL:I = 0x42450000

.field public static final CV_HIST_RANGES_FLAG:I = 0x800

.field public static final CV_HIST_SPARSE:I = 0x1

.field public static final CV_HIST_TREE:I = 0x1

.field public static final CV_HIST_UNIFORM:I = 0x1

.field public static final CV_HIST_UNIFORM_FLAG:I = 0x400

.field public static final CV_HLS2BGR:I = 0x3c

.field public static final CV_HLS2BGR_FULL:I = 0x48

.field public static final CV_HLS2RGB:I = 0x3d

.field public static final CV_HLS2RGB_FULL:I = 0x49

.field public static final CV_HOUGH_GRADIENT:I = 0x3

.field public static final CV_HOUGH_MULTI_SCALE:I = 0x2

.field public static final CV_HOUGH_PROBABILISTIC:I = 0x1

.field public static final CV_HOUGH_STANDARD:I = 0x0

.field public static final CV_HSV2BGR:I = 0x36

.field public static final CV_HSV2BGR_FULL:I = 0x46

.field public static final CV_HSV2RGB:I = 0x37

.field public static final CV_HSV2RGB_FULL:I = 0x47

.field public static final CV_INTER_AREA:I = 0x3

.field public static final CV_INTER_CUBIC:I = 0x2

.field public static final CV_INTER_LANCZOS4:I = 0x4

.field public static final CV_INTER_LINEAR:I = 0x1

.field public static final CV_INTER_NN:I = 0x0

.field public static final CV_LBGR2Lab:I = 0x4a

.field public static final CV_LBGR2Luv:I = 0x4c

.field public static final CV_LINK_RUNS:I = 0x5

.field public static final CV_LRGB2Lab:I = 0x4b

.field public static final CV_LRGB2Luv:I = 0x4d

.field public static final CV_Lab2BGR:I = 0x38

.field public static final CV_Lab2LBGR:I = 0x4e

.field public static final CV_Lab2LRGB:I = 0x4f

.field public static final CV_Lab2RGB:I = 0x39

.field public static final CV_Luv2BGR:I = 0x3a

.field public static final CV_Luv2LBGR:I = 0x50

.field public static final CV_Luv2LRGB:I = 0x51

.field public static final CV_Luv2RGB:I = 0x3b

.field public static final CV_MAX_SOBEL_KSIZE:I = 0x7

.field public static final CV_MEDIAN:I = 0x3

.field public static final CV_MOP_BLACKHAT:I = 0x6

.field public static final CV_MOP_CLOSE:I = 0x3

.field public static final CV_MOP_DILATE:I = 0x1

.field public static final CV_MOP_ERODE:I = 0x0

.field public static final CV_MOP_GRADIENT:I = 0x4

.field public static final CV_MOP_OPEN:I = 0x2

.field public static final CV_MOP_TOPHAT:I = 0x5

.field public static final CV_NEXT_AROUND_DST:I = 0x22

.field public static final CV_NEXT_AROUND_LEFT:I = 0x13

.field public static final CV_NEXT_AROUND_ORG:I = 0x0

.field public static final CV_NEXT_AROUND_RIGHT:I = 0x31

.field public static final CV_POLY_APPROX_DP:I = 0x0

.field public static final CV_PREV_AROUND_DST:I = 0x33

.field public static final CV_PREV_AROUND_LEFT:I = 0x20

.field public static final CV_PREV_AROUND_ORG:I = 0x11

.field public static final CV_PREV_AROUND_RIGHT:I = 0x2

.field public static final CV_PTLOC_ERROR:I = -0x2

.field public static final CV_PTLOC_INSIDE:I = 0x0

.field public static final CV_PTLOC_ON_EDGE:I = 0x2

.field public static final CV_PTLOC_OUTSIDE_RECT:I = -0x1

.field public static final CV_PTLOC_VERTEX:I = 0x1

.field public static final CV_RETR_CCOMP:I = 0x2

.field public static final CV_RETR_EXTERNAL:I = 0x0

.field public static final CV_RETR_FLOODFILL:I = 0x4

.field public static final CV_RETR_LIST:I = 0x1

.field public static final CV_RETR_TREE:I = 0x3

.field public static final CV_RGB2BGR:I = 0x4

.field public static final CV_RGB2BGR555:I = 0x17

.field public static final CV_RGB2BGR565:I = 0xd

.field public static final CV_RGB2BGRA:I = 0x2

.field public static final CV_RGB2GRAY:I = 0x7

.field public static final CV_RGB2HLS:I = 0x35

.field public static final CV_RGB2HLS_FULL:I = 0x45

.field public static final CV_RGB2HSV:I = 0x29

.field public static final CV_RGB2HSV_FULL:I = 0x43

.field public static final CV_RGB2Lab:I = 0x2d

.field public static final CV_RGB2Luv:I = 0x33

.field public static final CV_RGB2RGBA:I = 0x0

.field public static final CV_RGB2XYZ:I = 0x21

.field public static final CV_RGB2YCrCb:I = 0x25

.field public static final CV_RGB2YUV:I = 0x53

.field public static final CV_RGB2YUV_I420:I = 0x7f

.field public static final CV_RGB2YUV_IYUV:I = 0x7f

.field public static final CV_RGB2YUV_YV12:I = 0x83

.field public static final CV_RGBA2BGR:I = 0x3

.field public static final CV_RGBA2BGR555:I = 0x1b

.field public static final CV_RGBA2BGR565:I = 0x11

.field public static final CV_RGBA2BGRA:I = 0x5

.field public static final CV_RGBA2GRAY:I = 0xb

.field public static final CV_RGBA2RGB:I = 0x1

.field public static final CV_RGBA2YUV_I420:I = 0x81

.field public static final CV_RGBA2YUV_IYUV:I = 0x81

.field public static final CV_RGBA2YUV_YV12:I = 0x85

.field public static final CV_RGBA2mRGBA:I = 0x7d

.field public static final CV_SCHARR:I = -0x1

.field public static final CV_SHAPE_CROSS:I = 0x1

.field public static final CV_SHAPE_CUSTOM:I = 0x64

.field public static final CV_SHAPE_ELLIPSE:I = 0x2

.field public static final CV_SHAPE_RECT:I = 0x0

.field public static final CV_SUBDIV2D_VIRTUAL_POINT_FLAG:I = 0x40000000

.field public static final CV_THRESH_BINARY:I = 0x0

.field public static final CV_THRESH_BINARY_INV:I = 0x1

.field public static final CV_THRESH_MASK:I = 0x7

.field public static final CV_THRESH_OTSU:I = 0x8

.field public static final CV_THRESH_TOZERO:I = 0x3

.field public static final CV_THRESH_TOZERO_INV:I = 0x4

.field public static final CV_THRESH_TRUNC:I = 0x2

.field public static final CV_TM_CCOEFF:I = 0x4

.field public static final CV_TM_CCOEFF_NORMED:I = 0x5

.field public static final CV_TM_CCORR:I = 0x2

.field public static final CV_TM_CCORR_NORMED:I = 0x3

.field public static final CV_TM_SQDIFF:I = 0x0

.field public static final CV_TM_SQDIFF_NORMED:I = 0x1

.field public static final CV_WARP_FILL_OUTLIERS:I = 0x8

.field public static final CV_WARP_INVERSE_MAP:I = 0x10

.field public static final CV_XYZ2BGR:I = 0x22

.field public static final CV_XYZ2RGB:I = 0x23

.field public static final CV_YCrCb2BGR:I = 0x26

.field public static final CV_YCrCb2RGB:I = 0x27

.field public static final CV_YUV2BGR:I = 0x54

.field public static final CV_YUV2BGRA_I420:I = 0x69

.field public static final CV_YUV2BGRA_IYUV:I = 0x69

.field public static final CV_YUV2BGRA_NV12:I = 0x5f

.field public static final CV_YUV2BGRA_NV21:I = 0x61

.field public static final CV_YUV2BGRA_UYNV:I = 0x70

.field public static final CV_YUV2BGRA_UYVY:I = 0x70

.field public static final CV_YUV2BGRA_Y422:I = 0x70

.field public static final CV_YUV2BGRA_YUNV:I = 0x78

.field public static final CV_YUV2BGRA_YUY2:I = 0x78

.field public static final CV_YUV2BGRA_YUYV:I = 0x78

.field public static final CV_YUV2BGRA_YV12:I = 0x67

.field public static final CV_YUV2BGRA_YVYU:I = 0x7a

.field public static final CV_YUV2BGR_I420:I = 0x65

.field public static final CV_YUV2BGR_IYUV:I = 0x65

.field public static final CV_YUV2BGR_NV12:I = 0x5b

.field public static final CV_YUV2BGR_NV21:I = 0x5d

.field public static final CV_YUV2BGR_UYNV:I = 0x6c

.field public static final CV_YUV2BGR_UYVY:I = 0x6c

.field public static final CV_YUV2BGR_Y422:I = 0x6c

.field public static final CV_YUV2BGR_YUNV:I = 0x74

.field public static final CV_YUV2BGR_YUY2:I = 0x74

.field public static final CV_YUV2BGR_YUYV:I = 0x74

.field public static final CV_YUV2BGR_YV12:I = 0x63

.field public static final CV_YUV2BGR_YVYU:I = 0x76

.field public static final CV_YUV2GRAY_420:I = 0x6a

.field public static final CV_YUV2GRAY_I420:I = 0x6a

.field public static final CV_YUV2GRAY_IYUV:I = 0x6a

.field public static final CV_YUV2GRAY_NV12:I = 0x6a

.field public static final CV_YUV2GRAY_NV21:I = 0x6a

.field public static final CV_YUV2GRAY_UYNV:I = 0x7b

.field public static final CV_YUV2GRAY_UYVY:I = 0x7b

.field public static final CV_YUV2GRAY_Y422:I = 0x7b

.field public static final CV_YUV2GRAY_YUNV:I = 0x7c

.field public static final CV_YUV2GRAY_YUY2:I = 0x7c

.field public static final CV_YUV2GRAY_YUYV:I = 0x7c

.field public static final CV_YUV2GRAY_YV12:I = 0x6a

.field public static final CV_YUV2GRAY_YVYU:I = 0x7c

.field public static final CV_YUV2RGB:I = 0x55

.field public static final CV_YUV2RGBA_I420:I = 0x68

.field public static final CV_YUV2RGBA_IYUV:I = 0x68

.field public static final CV_YUV2RGBA_NV12:I = 0x5e

.field public static final CV_YUV2RGBA_NV21:I = 0x60

.field public static final CV_YUV2RGBA_UYNV:I = 0x6f

.field public static final CV_YUV2RGBA_UYVY:I = 0x6f

.field public static final CV_YUV2RGBA_Y422:I = 0x6f

.field public static final CV_YUV2RGBA_YUNV:I = 0x77

.field public static final CV_YUV2RGBA_YUY2:I = 0x77

.field public static final CV_YUV2RGBA_YUYV:I = 0x77

.field public static final CV_YUV2RGBA_YV12:I = 0x66

.field public static final CV_YUV2RGBA_YVYU:I = 0x79

.field public static final CV_YUV2RGB_I420:I = 0x64

.field public static final CV_YUV2RGB_IYUV:I = 0x64

.field public static final CV_YUV2RGB_NV12:I = 0x5a

.field public static final CV_YUV2RGB_NV21:I = 0x5c

.field public static final CV_YUV2RGB_UYNV:I = 0x6b

.field public static final CV_YUV2RGB_UYVY:I = 0x6b

.field public static final CV_YUV2RGB_Y422:I = 0x6b

.field public static final CV_YUV2RGB_YUNV:I = 0x73

.field public static final CV_YUV2RGB_YUY2:I = 0x73

.field public static final CV_YUV2RGB_YUYV:I = 0x73

.field public static final CV_YUV2RGB_YV12:I = 0x62

.field public static final CV_YUV2RGB_YVYU:I = 0x75

.field public static final CV_YUV420p2BGR:I = 0x63

.field public static final CV_YUV420p2BGRA:I = 0x67

.field public static final CV_YUV420p2GRAY:I = 0x6a

.field public static final CV_YUV420p2RGB:I = 0x62

.field public static final CV_YUV420p2RGBA:I = 0x66

.field public static final CV_YUV420sp2BGR:I = 0x5d

.field public static final CV_YUV420sp2BGRA:I = 0x61

.field public static final CV_YUV420sp2GRAY:I = 0x6a

.field public static final CV_YUV420sp2RGB:I = 0x5c

.field public static final CV_YUV420sp2RGBA:I = 0x60

.field public static final CV_mRGBA2RGBA:I = 0x7e

.field public static final GC_BGD:I = 0x0

.field public static final GC_EVAL:I = 0x2

.field public static final GC_FGD:I = 0x1

.field public static final GC_INIT_WITH_MASK:I = 0x1

.field public static final GC_INIT_WITH_RECT:I = 0x0

.field public static final GC_PR_BGD:I = 0x2

.field public static final GC_PR_FGD:I = 0x3

.field public static final GHT_POSITION:I = 0x0

.field public static final GHT_ROTATION:I = 0x2

.field public static final GHT_SCALE:I = 0x1

.field public static final KERNEL_ASYMMETRICAL:I = 0x2

.field public static final KERNEL_GENERAL:I = 0x0

.field public static final KERNEL_INTEGER:I = 0x8

.field public static final KERNEL_SMOOTH:I = 0x4

.field public static final KERNEL_SYMMETRICAL:I = 0x1

.field public static final MORPH_BLACKHAT:I = 0x6

.field public static final MORPH_CLOSE:I = 0x3

.field public static final MORPH_DILATE:I = 0x1

.field public static final MORPH_ERODE:I = 0x0

.field public static final MORPH_GRADIENT:I = 0x4

.field public static final MORPH_OPEN:I = 0x2

.field public static final MORPH_TOPHAT:I = 0x5

.field public static final PROJ_SPHERICAL_EQRECT:I = 0x1

.field public static final PROJ_SPHERICAL_ORTHO:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CV_HIST_HAS_RANGES(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;->type()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static native CV_INIT_3X3_DELTAS([III)V
.end method

.method public static CV_IS_HIST(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Z
    .registers 4

    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    if-eqz p0, :cond_1a

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;->type()I

    move-result v1

    const/high16 v2, -0x1

    and-int/2addr v1, v2

    const/high16 v2, 0x4245

    if-ne v1, v2, :cond_1a

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;->bins()Lcom/googlecode/javacv/cpp/opencv_core$CvArr;

    move-result-object v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public static CV_IS_SPARSE_HIST(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;->bins()Lcom/googlecode/javacv/cpp/opencv_core$CvArr;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_core;->CV_IS_SPARSE_MAT(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Z

    move-result v0

    return v0
.end method

.method public static CV_IS_UNIFORM_HIST(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;->type()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static native CV_SUBDIV2D_NEXT_EDGE(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DEdge;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DEdge;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native Canny(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DDIZ)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native EMD(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;ILcom/googlecode/javacv/cpp/opencv_core$CvArr;[FLcom/googlecode/javacv/cpp/opencv_core$CvArr;)F
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native GaussianBlur(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;DDI)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native Laplacian(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;IIDDI)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native PSNR(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native Scharr(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;IIIDDI)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native Sobel(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;IIIIDDI)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native bilateralFilter(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;IDDI)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native blur(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native borderInterpolate(III)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native boxFilter(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;ILcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;ZI)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native createBoxFilter(IILcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;ZI)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public static native createCLAHE(DLcom/googlecode/javacv/cpp/opencv_core$CvSize;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CLAHE;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public static native createDerivFilter(IIIIII)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public static native createGaussianFilter(ILcom/googlecode/javacv/cpp/opencv_core$CvSize;DDI)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public static native createHanningWindow(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native createLinearFilter(IILcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;DIILcom/googlecode/javacv/cpp/opencv_core$CvScalar;)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public static native createMorphologyFilter(IILcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;IILcom/googlecode/javacv/cpp/opencv_core$CvScalar;)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public static native createSeparableLinearFilter(IILcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;DIILcom/googlecode/javacv/cpp/opencv_core$CvScalar;)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public static native cv2DRotationMatrix(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;DDLcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvAcc(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
.end method

.method public static native cvAdaptiveThreshold(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DIIID)V
.end method

.method public static native cvApproxChains(Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;IDII)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public static native cvApproxPoly(Lcom/googlecode/javacpp/Pointer;ILcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;IDI)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public static native cvArcLength(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$CvSlice;I)D
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvBoundingRect(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native cvBoxPoints(Lcom/googlecode/javacv/cpp/opencv_core$CvBox2D;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvBoxPoints(Lcom/googlecode/javacv/cpp/opencv_core$CvBox2D;[F)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "CvPoint2D32f*"
            }
        .end annotation
    .end parameter
.end method

.method public static native cvCalcArrBackProject(Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;)V
.end method

.method public static cvCalcArrBackProject([Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;)V
    .registers 4

    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;-><init>([Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    invoke-static {v0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCalcArrBackProject(Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;)V

    return-void
.end method

.method public static native cvCalcArrBackProjectPatch(Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;ID)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static cvCalcArrBackProjectPatch([Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;ID)V
    .registers 14
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;-><init>([Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCalcArrBackProjectPatch(Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;ID)V

    return-void
.end method

.method public static native cvCalcArrHist(Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;ILcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
.end method

.method public static cvCalcArrHist([Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;ILcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
    .registers 5

    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;-><init>([Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    invoke-static {v0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCalcArrHist(Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;ILcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    return-void
.end method

.method public static cvCalcBackProject(Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCalcArrBackProject(Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;)V

    return-void
.end method

.method public static cvCalcBackProject([Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;)V
    .registers 4

    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;-><init>([Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    invoke-static {v0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCalcBackProject(Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;)V

    return-void
.end method

.method public static cvCalcBackProjectPatch(Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;ID)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCalcArrBackProjectPatch(Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;ID)V

    return-void
.end method

.method public static cvCalcBackProjectPatch([Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;ID)V
    .registers 14
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;-><init>([Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCalcBackProjectPatch(Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;ID)V

    return-void
.end method

.method public static native cvCalcBayesianProb(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;ILcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvCalcEMD2(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;ILcom/googlecode/javacv/cpp/opencv_imgproc$CvDistanceFunction;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;[FLcom/googlecode/javacpp/Pointer;)F
.end method

.method public static cvCalcHist(Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;ILcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCalcArrHist(Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;ILcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    return-void
.end method

.method public static cvCalcHist([Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;ILcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
    .registers 5

    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;-><init>([Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    invoke-static {v0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCalcHist(Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;ILcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    return-void
.end method

.method public static native cvCalcProbDensity(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;D)V
.end method

.method public static native cvCanny(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DDI)V
.end method

.method public static native cvCheckContourConvexity(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)I
.end method

.method public static native cvClearHist(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;)V
.end method

.method public static native cvCompareHist(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;I)D
.end method

.method public static native cvContourArea(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvSlice;I)D
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static cvContourPerimeter(Lcom/googlecode/javacpp/Pointer;)D
    .registers 3

    sget-object v0, Lcom/googlecode/javacv/cpp/opencv_core;->CV_WHOLE_SEQ:Lcom/googlecode/javacv/cpp/opencv_core$CvSlice;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvArcLength(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$CvSlice;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static native cvConvertMaps(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
.end method

.method public static native cvConvexHull2(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacpp/Pointer;II)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public static native cvConvexityDefects(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public static native cvCopyHist(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvCopyMakeBorder(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;ILcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native cvCornerEigenValsAndVecs(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;II)V
.end method

.method public static native cvCornerHarris(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;IID)V
.end method

.method public static native cvCornerMinEigenVal(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;II)V
.end method

.method public static native cvCreateHist(I[IILcom/googlecode/javacpp/PointerPointer;I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "float**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static cvCreateHist(I[II[[FI)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;
    .registers 6

    if-nez p3, :cond_8

    const/4 v0, 0x0

    :goto_3
    invoke-static {p0, p1, p2, v0, p4}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCreateHist(I[IILcom/googlecode/javacpp/PointerPointer;I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;

    move-result-object v0

    return-object v0

    :cond_8
    new-instance v0, Lcom/googlecode/javacpp/PointerPointer;

    invoke-direct {v0, p3}, Lcom/googlecode/javacpp/PointerPointer;-><init>([[F)V

    goto :goto_3
.end method

.method public static native cvCreatePyramid(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;IDLcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;II)Lcom/googlecode/javacv/cpp/opencv_core$CvMatArray;
.end method

.method public static native cvCreateStructuringElementEx(IIIII[I)Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;
.end method

.method public static native cvCvtColor(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V
.end method

.method public static native cvDilate(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;I)V
.end method

.method public static native cvDistTransform(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;IILcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V
.end method

.method public static native cvEndFindContours(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvContourScanner;)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public static native cvEqualizeHist(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
.end method

.method public static native cvErode(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;I)V
.end method

.method public static native cvFilter2D(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static cvFindContours(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;III)I
    .registers 13
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    sget-object v6, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->ZERO:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvFindContours(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;IIILcom/googlecode/javacv/cpp/opencv_core$CvPoint;)I

    move-result v0

    return v0
.end method

.method public static native cvFindContours(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;IIILcom/googlecode/javacv/cpp/opencv_core$CvPoint;)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native cvFindCornerSubPix(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;ILcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native cvFindNextContour(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvContourScanner;)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native cvFitEllipse2(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Lcom/googlecode/javacv/cpp/opencv_core$CvBox2D;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native cvFitLine(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;IDDDLcom/googlecode/javacpp/FloatPointer;)V
.end method

.method public static native cvFitLine(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;IDDD[F)V
.end method

.method public static native cvFloodFill(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvConnectedComp;ILcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvGetAffineTransform(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public static native cvGetAffineTransform([F[FLcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "CvPoint2D32f*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "CvPoint2D32f*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvGetCentralMoment(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;II)D
.end method

.method public static native cvGetHuMoments(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHuMoments;)V
.end method

.method public static native cvGetMinMaxHistValue(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;[F[F[I[I)V
.end method

.method public static native cvGetNormalizedCentralMoment(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;II)D
.end method

.method public static native cvGetPerspectiveTransform(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public static native cvGetPerspectiveTransform([F[FLcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "CvPoint2D32f*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "CvPoint2D32f*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvGetQuadrangleSubPix(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
.end method

.method public static native cvGetRectSubPix(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native cvGetSpatialMoment(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;II)D
.end method

.method public static native cvGoodFeaturesToTrack(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;[IDDLcom/googlecode/javacv/cpp/opencv_core$CvArr;IID)V
.end method

.method public static native cvHoughCircles(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacpp/Pointer;IDDDDII)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public static native cvHoughLines2(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacpp/Pointer;IDDIDD)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public static native cvInitUndistortMap(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
.end method

.method public static native cvInitUndistortRectifyMap(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
.end method

.method public static native cvIntegral(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
.end method

.method public static native cvLaplace(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V
.end method

.method public static native cvLinearPolar(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;DI)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvLogPolar(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;DI)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvMakeHistHeaderForArray(I[ILcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;Lcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacpp/PointerPointer;I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "float**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static cvMakeHistHeaderForArray(I[ILcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;Lcom/googlecode/javacpp/FloatPointer;[[FI)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;
    .registers 12

    if-nez p4, :cond_d

    const/4 v4, 0x0

    :goto_3
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvMakeHistHeaderForArray(I[ILcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;Lcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacpp/PointerPointer;I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v4, Lcom/googlecode/javacpp/PointerPointer;

    invoke-direct {v4, p4}, Lcom/googlecode/javacpp/PointerPointer;-><init>([[F)V

    goto :goto_3
.end method

.method public static native cvMakeHistHeaderForArray(I[ILcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;[FLcom/googlecode/javacpp/PointerPointer;I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "float**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static cvMakeHistHeaderForArray(I[ILcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;[F[[FI)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;
    .registers 12

    if-nez p4, :cond_d

    const/4 v4, 0x0

    :goto_3
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvMakeHistHeaderForArray(I[ILcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;[FLcom/googlecode/javacpp/PointerPointer;I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v4, Lcom/googlecode/javacpp/PointerPointer;

    invoke-direct {v4, p4}, Lcom/googlecode/javacpp/PointerPointer;-><init>([[F)V

    goto :goto_3
.end method

.method public static native cvMatchShapes(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;ID)D
.end method

.method public static native cvMatchTemplate(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V
.end method

.method public static native cvMaxRect(Lcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native cvMinAreaRect2(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)Lcom/googlecode/javacv/cpp/opencv_core$CvBox2D;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native cvMinEnclosingCircle(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;[F)I
.end method

.method public static native cvMinEnclosingCircle(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;[F[F)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "CvPoint2D32f*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvMoments(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;I)V
.end method

.method public static native cvMorphologyEx(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;II)V
.end method

.method public static native cvMultiplyAcc(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
.end method

.method public static native cvNormalizeHist(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;D)V
.end method

.method public static native cvPointPolygonTest(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;I)D
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvPointSeqFromMat(ILcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvContour;Lcom/googlecode/javacv/cpp/opencv_core$CvSeqBlock;)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public static native cvPreCornerDetect(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V
.end method

.method public static native cvPyrDown(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V
.end method

.method public static native cvPyrMeanShiftFiltering(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DDILcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native cvPyrUp(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V
.end method

.method public static native cvReadChainPoint(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvChainPtReader;)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native cvReleaseHist(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvReleasePyramid(Lcom/googlecode/javacv/cpp/opencv_core$CvMatArray;I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvReleaseStructuringElement(Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvRemap(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;ILcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static cvResize(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvResize(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    return-void
.end method

.method public static native cvResize(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V
.end method

.method public static native cvRunningAvg(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
.end method

.method public static native cvSampleLine(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;Lcom/googlecode/javacpp/Pointer;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvSetHistBinRanges(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;Lcom/googlecode/javacpp/PointerPointer;I)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "float**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static cvSetHistBinRanges(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;[[FI)V
    .registers 4

    if-nez p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-static {p0, v0, p2}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvSetHistBinRanges(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;Lcom/googlecode/javacpp/PointerPointer;I)V

    return-void

    :cond_7
    new-instance v0, Lcom/googlecode/javacpp/PointerPointer;

    invoke-direct {v0, p1}, Lcom/googlecode/javacpp/PointerPointer;-><init>([[F)V

    goto :goto_3
.end method

.method public static cvSmooth(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;II)V
    .registers 13

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v7, v5

    invoke-static/range {v0 .. v8}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvSmooth(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;IIIDD)V

    return-void
.end method

.method public static native cvSmooth(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;IIIDD)V
.end method

.method public static native cvSobel(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;III)V
.end method

.method public static native cvSquareAcc(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
.end method

.method public static cvStartFindContours(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;III)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvContourScanner;
    .registers 11

    sget-object v5, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->ZERO:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvStartFindContours(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;IIILcom/googlecode/javacv/cpp/opencv_core$CvPoint;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvContourScanner;

    move-result-object v0

    return-object v0
.end method

.method public static native cvStartFindContours(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;IIILcom/googlecode/javacv/cpp/opencv_core$CvPoint;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvContourScanner;
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native cvStartReadChainPoints(Lcom/googlecode/javacv/cpp/opencv_core$CvChain;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvChainPtReader;)V
.end method

.method public static native cvSubstituteContour(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvContourScanner;Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvThreshHist(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;D)V
.end method

.method public static native cvThreshold(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DDI)D
.end method

.method public static cvUndistort2(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvUndistort2(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    return-void
.end method

.method public static native cvUndistort2(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
.end method

.method public static native cvUndistortPoints(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
.end method

.method public static cvWarpAffine(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
    .registers 5

    const/16 v0, 0x9

    sget-object v1, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->ZERO:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    invoke-static {p0, p1, p2, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvWarpAffine(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V

    return-void
.end method

.method public static native cvWarpAffine(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static cvWarpPerspective(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
    .registers 5

    const/16 v0, 0x9

    sget-object v1, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->ZERO:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    invoke-static {p0, p1, p2, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvWarpPerspective(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V

    return-void
.end method

.method public static native cvWarpPerspective(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native cvWatershed(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
.end method

.method public static native eigen2x2(Lcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacpp/FloatPointer;I)V
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native eigen2x2([F[FI)V
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native filter2D(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;ILcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;DI)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native getColumnSumFilter(IIIID)Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseColumnFilter;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public static native getDerivKernels(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;IIIZI)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native getGaborKernel(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;DDDDDI)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputMat;
    .end annotation
.end method

.method public static native getGaussianKernel(IDI)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputMat;
    .end annotation
.end method

.method public static native getKernelType(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native getLinearColumnFilter(IILcom/googlecode/javacv/cpp/opencv_core$CvMat;IIDI)Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseColumnFilter;
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public static native getLinearFilter(IILcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;DI)Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseFilter;
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public static native getLinearRowFilter(IILcom/googlecode/javacv/cpp/opencv_core$CvMat;II)Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseRowFilter;
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public static native getMorphologyColumnFilter(IIII)Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseColumnFilter;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public static native getMorphologyFilter(IILcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;)Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseFilter;
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public static native getMorphologyRowFilter(IIII)Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseRowFilter;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public static native getRowSumFilter(IIII)Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseRowFilter;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public static native grabCut(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;II)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native initWideAngleProjMap(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;IILcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;ID)F
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native intersectConvexConvex(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Z)F
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native isContourConvex(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Z
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native medianBlur(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native morphologyDefaultBorderValue()Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native phaseCorrelate(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Adapter;
        value = "Point2dAdapter"
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native phaseCorrelateRes(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;[D)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Adapter;
        value = "Point2dAdapter"
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native sepFilter2D(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;ILcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;DI)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static tryLoad()V
    .registers 0

    return-void
.end method
