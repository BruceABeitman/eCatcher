.class public Lcom/pinguo/album/exif/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/album/exif/ExifInterface$ColorSpace;,
        Lcom/pinguo/album/exif/ExifInterface$ComponentsConfiguration;,
        Lcom/pinguo/album/exif/ExifInterface$Compression;,
        Lcom/pinguo/album/exif/ExifInterface$Contrast;,
        Lcom/pinguo/album/exif/ExifInterface$ExposureMode;,
        Lcom/pinguo/album/exif/ExifInterface$ExposureProgram;,
        Lcom/pinguo/album/exif/ExifInterface$FileSource;,
        Lcom/pinguo/album/exif/ExifInterface$Flash;,
        Lcom/pinguo/album/exif/ExifInterface$GainControl;,
        Lcom/pinguo/album/exif/ExifInterface$GpsAltitudeRef;,
        Lcom/pinguo/album/exif/ExifInterface$GpsDifferential;,
        Lcom/pinguo/album/exif/ExifInterface$GpsLatitudeRef;,
        Lcom/pinguo/album/exif/ExifInterface$GpsLongitudeRef;,
        Lcom/pinguo/album/exif/ExifInterface$GpsMeasureMode;,
        Lcom/pinguo/album/exif/ExifInterface$GpsSpeedRef;,
        Lcom/pinguo/album/exif/ExifInterface$GpsStatus;,
        Lcom/pinguo/album/exif/ExifInterface$GpsTrackRef;,
        Lcom/pinguo/album/exif/ExifInterface$LightSource;,
        Lcom/pinguo/album/exif/ExifInterface$MeteringMode;,
        Lcom/pinguo/album/exif/ExifInterface$Orientation;,
        Lcom/pinguo/album/exif/ExifInterface$PhotometricInterpretation;,
        Lcom/pinguo/album/exif/ExifInterface$PlanarConfiguration;,
        Lcom/pinguo/album/exif/ExifInterface$ResolutionUnit;,
        Lcom/pinguo/album/exif/ExifInterface$Saturation;,
        Lcom/pinguo/album/exif/ExifInterface$SceneCapture;,
        Lcom/pinguo/album/exif/ExifInterface$SceneType;,
        Lcom/pinguo/album/exif/ExifInterface$SensingMethod;,
        Lcom/pinguo/album/exif/ExifInterface$Sharpness;,
        Lcom/pinguo/album/exif/ExifInterface$SubjectDistance;,
        Lcom/pinguo/album/exif/ExifInterface$WhiteBalance;,
        Lcom/pinguo/album/exif/ExifInterface$YCbCrPositioning;
    }
.end annotation


# static fields
.field private static final DATETIME_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd kk:mm:ss"

.field public static final DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder; = null

.field public static final DEFINITION_NULL:I = 0x0

.field private static final GPS_DATE_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd"

.field public static final IFD_NULL:I = -0x1

.field private static final NULL_ARGUMENT_STRING:Ljava/lang/String; = "Argument is null"

#the value of this static final field might be set in the static constructor
.field public static final TAG_APERTURE_VALUE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_ARTIST:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_BITS_PER_SAMPLE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_BRIGHTNESS_VALUE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_CFA_PATTERN:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_COLOR_SPACE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_COMPONENTS_CONFIGURATION:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_COMPRESSION:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_CONTRAST:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_COPYRIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_CUSTOM_RENDERED:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_DATE_TIME:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_DATE_TIME_DIGITIZED:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_DATE_TIME_ORIGINAL:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_DEVICE_SETTING_DESCRIPTION:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_DIGITAL_ZOOM_RATIO:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_EXIF_IFD:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_EXIF_VERSION:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_EXPOSURE_BIAS_VALUE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_EXPOSURE_INDEX:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_EXPOSURE_MODE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_EXPOSURE_PROGRAM:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_EXPOSURE_TIME:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_FILE_SOURCE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_FLASH:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_FLASHPIX_VERSION:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_FLASH_ENERGY:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_FOCAL_LENGTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_FOCAL_LENGTH_IN_35_MM_FILE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_F_NUMBER:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GAIN_CONTROL:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_ALTITUDE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_ALTITUDE_REF:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_AREA_INFORMATION:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_DATE_STAMP:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_DEST_BEARING:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_DEST_BEARING_REF:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_DEST_DISTANCE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_DEST_DISTANCE_REF:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_DEST_LATITUDE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_DEST_LATITUDE_REF:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_DEST_LONGITUDE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_DEST_LONGITUDE_REF:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_DIFFERENTIAL:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_DOP:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_IFD:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_IMG_DIRECTION:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_IMG_DIRECTION_REF:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_LATITUDE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_LATITUDE_REF:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_LONGITUDE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_LONGITUDE_REF:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_MAP_DATUM:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_MEASURE_MODE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_PROCESSING_METHOD:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_SATTELLITES:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_SPEED:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_SPEED_REF:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_STATUS:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_TIME_STAMP:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_TRACK:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_TRACK_REF:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_GPS_VERSION_ID:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_IMAGE_DESCRIPTION:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_IMAGE_LENGTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_IMAGE_UNIQUE_ID:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_IMAGE_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_INTEROPERABILITY_IFD:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_INTEROPERABILITY_INDEX:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_ISO_SPEED_RATINGS:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_JPEG_INTERCHANGE_FORMAT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_LIGHT_SOURCE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_MAKE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_MAKER_NOTE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_MAX_APERTURE_VALUE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_METERING_MODE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final TAG_MODEL:I = 0x0

.field public static final TAG_NULL:I = -0x1

.field public static final TAG_OECF:I

.field public static final TAG_ORIENTATION:I

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:I

.field public static final TAG_PIXEL_X_DIMENSION:I

.field public static final TAG_PIXEL_Y_DIMENSION:I

.field public static final TAG_PLANAR_CONFIGURATION:I

.field public static final TAG_PRIMARY_CHROMATICITIES:I

.field public static final TAG_REFERENCE_BLACK_WHITE:I

.field public static final TAG_RELATED_SOUND_FILE:I

.field public static final TAG_RESOLUTION_UNIT:I

.field public static final TAG_ROWS_PER_STRIP:I

.field public static final TAG_SAMPLES_PER_PIXEL:I

.field public static final TAG_SATURATION:I

.field public static final TAG_SCENE_CAPTURE_TYPE:I

.field public static final TAG_SCENE_TYPE:I

.field public static final TAG_SENSING_METHOD:I

.field public static final TAG_SHARPNESS:I

.field public static final TAG_SHUTTER_SPEED_VALUE:I

.field public static final TAG_SOFTWARE:I

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:I

.field public static final TAG_SPECTRAL_SENSITIVITY:I

.field public static final TAG_STRIP_BYTE_COUNTS:I

.field public static final TAG_STRIP_OFFSETS:I

.field public static final TAG_SUBJECT_AREA:I

.field public static final TAG_SUBJECT_DISTANCE:I

.field public static final TAG_SUBJECT_DISTANCE_RANGE:I

.field public static final TAG_SUBJECT_LOCATION:I

.field public static final TAG_SUB_SEC_TIME:I

.field public static final TAG_SUB_SEC_TIME_DIGITIZED:I

.field public static final TAG_SUB_SEC_TIME_ORIGINAL:I

.field public static final TAG_TRANSFER_FUNCTION:I

.field public static final TAG_USER_COMMENT:I

.field public static final TAG_WHITE_BALANCE:I

.field public static final TAG_WHITE_POINT:I

.field public static final TAG_X_RESOLUTION:I

.field public static final TAG_Y_CB_CR_COEFFICIENTS:I

.field public static final TAG_Y_CB_CR_POSITIONING:I

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:I

.field public static final TAG_Y_RESOLUTION:I

.field protected static sBannedDefines:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private static sOffsetTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:Lcom/pinguo/album/exif/ExifData;

.field private final mDateTimeStampFormat:Ljava/text/DateFormat;

.field private final mGPSDateStampFormat:Ljava/text/DateFormat;

.field private final mGPSTimeStampCalendar:Ljava/util/Calendar;

.field private mTagInfo:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x2

    const/16 v0, 0x100

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    const/16 v0, 0x101

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    const/16 v0, 0x102

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    const/16 v0, 0x103

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_COMPRESSION:I

    const/16 v0, 0x106

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    const/16 v0, 0x10e

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    const/16 v0, 0x10f

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_MAKE:I

    const/16 v0, 0x110

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_MODEL:I

    const/16 v0, 0x111

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    const/16 v0, 0x112

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_ORIENTATION:I

    const/16 v0, 0x115

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    const/16 v0, 0x116

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    const/16 v0, 0x117

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    const/16 v0, 0x11a

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_X_RESOLUTION:I

    const/16 v0, 0x11b

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    const/16 v0, 0x11c

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    const/16 v0, 0x128

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    const/16 v0, 0x12d

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    const/16 v0, 0x131

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_SOFTWARE:I

    const/16 v0, 0x132

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_DATE_TIME:I

    const/16 v0, 0x13b

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_ARTIST:I

    const/16 v0, 0x13e

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_WHITE_POINT:I

    const/16 v0, 0x13f

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    const/16 v0, 0x211

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    const/16 v0, 0x212

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    const/16 v0, 0x213

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    const/16 v0, 0x214

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    const/16 v0, -0x7d68

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_COPYRIGHT:I

    const/16 v0, -0x7897

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_EXIF_IFD:I

    const/16 v0, -0x77db

    invoke-static {v3, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_IFD:I

    const/16 v0, 0x201

    invoke-static {v4, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    const/16 v0, 0x202

    invoke-static {v4, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    const/16 v0, -0x7d66

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    const/16 v0, -0x7d63

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_F_NUMBER:I

    const/16 v0, -0x77de

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    const/16 v0, -0x77dc

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    const/16 v0, -0x77d9

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    const/16 v0, -0x77d8

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_OECF:I

    const/16 v0, -0x7000

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_EXIF_VERSION:I

    const/16 v0, -0x6ffd

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    const/16 v0, -0x6ffc

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    const/16 v0, -0x6eff

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    const/16 v0, -0x6efe

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    const/16 v0, -0x6dff

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const/16 v0, -0x6dfe

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    const/16 v0, -0x6dfd

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    const/16 v0, -0x6dfc

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    const/16 v0, -0x6dfb

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    const/16 v0, -0x6dfa

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    const/16 v0, -0x6df9

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_METERING_MODE:I

    const/16 v0, -0x6df8

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    const/16 v0, -0x6df7

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_FLASH:I

    const/16 v0, -0x6df6

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    const/16 v0, -0x6dec

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    const/16 v0, -0x6d84

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_MAKER_NOTE:I

    const/16 v0, -0x6d7a

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_USER_COMMENT:I

    const/16 v0, -0x6d70

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    const/16 v0, -0x6d6f

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    const/16 v0, -0x6d6e

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    const/16 v0, -0x6000

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    const/16 v0, -0x5fff

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_COLOR_SPACE:I

    const/16 v0, -0x5ffe

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    const/16 v0, -0x5ffd

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    const/16 v0, -0x5ffc

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    const/16 v0, -0x5ffb

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    const/16 v0, -0x5df5

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    const/16 v0, -0x5df4

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    const/16 v0, -0x5df2

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    const/16 v0, -0x5df1

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    const/16 v0, -0x5df0

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    const/16 v0, -0x5dec

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    const/16 v0, -0x5deb

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    const/16 v0, -0x5de9

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_SENSING_METHOD:I

    const/16 v0, -0x5d00

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_FILE_SOURCE:I

    const/16 v0, -0x5cff

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_SCENE_TYPE:I

    const/16 v0, -0x5cfe

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_CFA_PATTERN:I

    const/16 v0, -0x5bff

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    const/16 v0, -0x5bfe

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    const/16 v0, -0x5bfd

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    const/16 v0, -0x5bfc

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    const/16 v0, -0x5bfb

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    const/16 v0, -0x5bfa

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    const/16 v0, -0x5bf9

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    const/16 v0, -0x5bf8

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_CONTRAST:I

    const/16 v0, -0x5bf7

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_SATURATION:I

    const/16 v0, -0x5bf6

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_SHARPNESS:I

    const/16 v0, -0x5bf5

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    const/16 v0, -0x5bf4

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    const/16 v0, -0x5be0

    invoke-static {v1, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    invoke-static {v2, v3}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    invoke-static {v2, v4}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    invoke-static {v2, v1}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-static {v2, v5}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    invoke-static {v2, v2}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    const/4 v0, 0x5

    invoke-static {v2, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    const/4 v0, 0x6

    invoke-static {v2, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    const/4 v0, 0x7

    invoke-static {v2, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/16 v0, 0x8

    invoke-static {v2, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    const/16 v0, 0x9

    invoke-static {v2, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_STATUS:I

    const/16 v0, 0xa

    invoke-static {v2, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    const/16 v0, 0xb

    invoke-static {v2, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_DOP:I

    const/16 v0, 0xc

    invoke-static {v2, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    const/16 v0, 0xd

    invoke-static {v2, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_SPEED:I

    const/16 v0, 0xe

    invoke-static {v2, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    const/16 v0, 0xf

    invoke-static {v2, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_TRACK:I

    const/16 v0, 0x10

    invoke-static {v2, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const/16 v0, 0x11

    invoke-static {v2, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    const/16 v0, 0x12

    invoke-static {v2, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    const/16 v0, 0x13

    invoke-static {v2, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    const/16 v0, 0x14

    invoke-static {v2, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    const/16 v0, 0x15

    invoke-static {v2, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE_REF:I

    const/16 v0, 0x16

    invoke-static {v2, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE:I

    const/16 v0, 0x17

    invoke-static {v2, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    const/16 v0, 0x18

    invoke-static {v2, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    const/16 v0, 0x19

    invoke-static {v2, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    const/16 v0, 0x1a

    invoke-static {v2, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    const/16 v0, 0x1b

    invoke-static {v2, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    const/16 v0, 0x1c

    invoke-static {v2, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    const/16 v0, 0x1d

    invoke-static {v2, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    const/16 v0, 0x1e

    invoke-static {v2, v0}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    invoke-static {v5, v4}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/pinguo/album/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget-object v0, Lcom/pinguo/album/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v1}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pinguo/album/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/pinguo/album/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v1}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pinguo/album/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/pinguo/album/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pinguo/album/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/pinguo/album/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v1}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pinguo/album/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/pinguo/album/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/pinguo/album/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/pinguo/album/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget-object v0, Lcom/pinguo/album/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pinguo/album/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/pinguo/album/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v1}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pinguo/album/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/pinguo/album/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/pinguo/album/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/pinguo/album/exif/ExifData;

    sget-object v1, Lcom/pinguo/album/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/pinguo/album/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mData:Lcom/pinguo/album/exif/ExifData;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd kk:mm:ss"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    const-string/jumbo v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method protected static closeSilently(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static convertLatOrLongToDouble([Lcom/pinguo/album/exif/Rational;Ljava/lang/String;)D
    .registers 15

    const/4 v9, 0x0

    :try_start_1
    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/pinguo/album/exif/Rational;->toDouble()D

    move-result-wide v0

    const/4 v9, 0x1

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/pinguo/album/exif/Rational;->toDouble()D

    move-result-wide v3

    const/4 v9, 0x2

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/pinguo/album/exif/Rational;->toDouble()D

    move-result-wide v7

    const-wide/high16 v9, 0x404e

    div-double v9, v3, v9

    add-double/2addr v9, v0

    const-wide v11, 0x40ac200000000000L

    div-double v11, v7, v11

    add-double v5, v9, v11

    const-string/jumbo v9, "S"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_35

    const-string/jumbo v9, "W"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_32} :catch_37

    move-result v9

    if-eqz v9, :cond_36

    :cond_35
    neg-double v5, v5

    :cond_36
    return-wide v5

    :catch_37
    move-exception v2

    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9
.end method

.method public static defineTag(IS)I
    .registers 4

    const v0, 0xffff

    and-int/2addr v0, p1

    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x400

    const/4 v3, 0x0

    new-array v0, v4, [B

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    :goto_9
    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    return-void

    :cond_d
    invoke-virtual {p2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_9
.end method

.method protected static getAllowedIfdFlagsFromInfo(I)I
    .registers 2

    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method protected static getAllowedIfdsFromInfo(I)[I
    .registers 11

    invoke-static {p0}, Lcom/pinguo/album/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v2

    invoke-static {}, Lcom/pinguo/album/exif/IfdData;->getIfds()[I

    move-result-object v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_e
    const/4 v8, 0x5

    if-lt v1, v8, :cond_19

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_2c

    const/4 v7, 0x0

    :cond_18
    return-object v7

    :cond_19
    shr-int v8, v2, v1

    and-int/lit8 v0, v8, 0x1

    const/4 v8, 0x1

    if-ne v0, v8, :cond_29

    aget v8, v3, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_2c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v7, v8, [I

    const/4 v4, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_37
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v5, v4, 0x1

    aput v1, v7, v4

    move v4, v5

    goto :goto_37
.end method

.method protected static getComponentCountFromInfo(I)I
    .registers 2

    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method protected static getFlagsFromAllowedIfds([I)I
    .registers 9

    const/4 v4, 0x0

    if-eqz p0, :cond_6

    array-length v5, p0

    if-nez v5, :cond_8

    :cond_6
    move v0, v4

    :cond_7
    return v0

    :cond_8
    const/4 v0, 0x0

    invoke-static {}, Lcom/pinguo/album/exif/IfdData;->getIfds()[I

    move-result-object v2

    const/4 v1, 0x0

    :goto_e
    const/4 v5, 0x5

    if-ge v1, v5, :cond_7

    array-length v6, p0

    move v5, v4

    :goto_13
    if-lt v5, v6, :cond_18

    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_18
    aget v3, p0, v5

    aget v7, v2, v1

    if-ne v7, v3, :cond_22

    const/4 v5, 0x1

    shl-int/2addr v5, v1

    or-int/2addr v0, v5

    goto :goto_15

    :cond_22
    add-int/lit8 v5, v5, 0x1

    goto :goto_13
.end method

.method public static getOrientationValueForRotation(I)S
    .registers 2

    rem-int/lit16 p0, p0, 0x168

    if-gez p0, :cond_6

    add-int/lit16 p0, p0, 0x168

    :cond_6
    const/16 v0, 0x5a

    if-ge p0, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/16 v0, 0xb4

    if-ge p0, v0, :cond_12

    const/4 v0, 0x6

    goto :goto_b

    :cond_12
    const/16 v0, 0x10e

    if-ge p0, v0, :cond_18

    const/4 v0, 0x3

    goto :goto_b

    :cond_18
    const/16 v0, 0x8

    goto :goto_b
.end method

.method public static getRotationForOrientationValue(S)I
    .registers 2

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_e

    :goto_4
    :pswitch_4
    return v0

    :pswitch_5
    const/16 v0, 0x5a

    goto :goto_4

    :pswitch_8
    const/16 v0, 0xb4

    goto :goto_4

    :pswitch_b
    const/16 v0, 0x10e

    goto :goto_4

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_b
    .end packed-switch
.end method

.method public static getTrueIfd(I)I
    .registers 2

    ushr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method public static getTrueTagKey(I)S
    .registers 2

    int-to-short v0, p0

    return v0
.end method

.method protected static getTypeFromInfo(I)S
    .registers 2

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private initTagInfo()V
    .registers 14

    const/4 v10, 0x2

    new-array v5, v10, [I

    const/4 v10, 0x1

    const/4 v11, 0x1

    aput v11, v5, v10

    invoke-static {v5}, Lcom/pinguo/album/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v6, v10, 0x18

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_MAKE:I

    const/high16 v12, 0x2

    or-int/2addr v12, v6

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    const/high16 v12, 0x4

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    const/high16 v12, 0x4

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    const/high16 v12, 0x3

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_COMPRESSION:I

    const/high16 v12, 0x3

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    const/high16 v12, 0x3

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_ORIENTATION:I

    const/high16 v12, 0x3

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    const/high16 v12, 0x3

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    const/high16 v12, 0x3

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    const/high16 v12, 0x3

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    const/high16 v12, 0x3

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_X_RESOLUTION:I

    const/high16 v12, 0x5

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    const/high16 v12, 0x5

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    const/high16 v12, 0x3

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    const/high16 v12, 0x4

    or-int/2addr v12, v6

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    const/high16 v12, 0x4

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    const/high16 v12, 0x4

    or-int/2addr v12, v6

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    const/high16 v12, 0x3

    or-int/2addr v12, v6

    or-int/lit16 v12, v12, 0x300

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_WHITE_POINT:I

    const/high16 v12, 0x5

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    const/high16 v12, 0x5

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x6

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    const/high16 v12, 0x5

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    const/high16 v12, 0x5

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x6

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_DATE_TIME:I

    const/high16 v12, 0x2

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x14

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    const/high16 v12, 0x2

    or-int/2addr v12, v6

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_MAKE:I

    const/high16 v12, 0x2

    or-int/2addr v12, v6

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_MODEL:I

    const/high16 v12, 0x2

    or-int/2addr v12, v6

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_SOFTWARE:I

    const/high16 v12, 0x2

    or-int/2addr v12, v6

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_ARTIST:I

    const/high16 v12, 0x2

    or-int/2addr v12, v6

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_COPYRIGHT:I

    const/high16 v12, 0x2

    or-int/2addr v12, v6

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_EXIF_IFD:I

    const/high16 v12, 0x4

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_IFD:I

    const/high16 v12, 0x4

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v10, 0x1

    new-array v4, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x1

    aput v11, v4, v10

    invoke-static {v4}, Lcom/pinguo/album/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v7, v10, 0x18

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    const/high16 v12, 0x4

    or-int/2addr v12, v7

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    const/high16 v12, 0x4

    or-int/2addr v12, v7

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v10, 0x1

    new-array v0, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x2

    aput v11, v0, v10

    invoke-static {v0}, Lcom/pinguo/album/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v1, v10, 0x18

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_EXIF_VERSION:I

    const/high16 v12, 0x7

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    const/high16 v12, 0x7

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_COLOR_SPACE:I

    const/high16 v12, 0x3

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    const/high16 v12, 0x7

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    const/high16 v12, 0x5

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    const/high16 v12, 0x4

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    const/high16 v12, 0x4

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_MAKER_NOTE:I

    const/high16 v12, 0x7

    or-int/2addr v12, v1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_USER_COMMENT:I

    const/high16 v12, 0x7

    or-int/2addr v12, v1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    const/high16 v12, 0x2

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0xd

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    const/high16 v12, 0x2

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x14

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    const/high16 v12, 0x2

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x14

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    const/high16 v12, 0x2

    or-int/2addr v12, v1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    const/high16 v12, 0x2

    or-int/2addr v12, v1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    const/high16 v12, 0x2

    or-int/2addr v12, v1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    const/high16 v12, 0x2

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x21

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    const/high16 v12, 0x5

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_F_NUMBER:I

    const/high16 v12, 0x5

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    const/high16 v12, 0x3

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    const/high16 v12, 0x2

    or-int/2addr v12, v1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    const/high16 v12, 0x3

    or-int/2addr v12, v1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_OECF:I

    const/high16 v12, 0x7

    or-int/2addr v12, v1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const/high16 v12, 0xa

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    const/high16 v12, 0x5

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    const/high16 v12, 0xa

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    const/high16 v12, 0xa

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    const/high16 v12, 0x5

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    const/high16 v12, 0x5

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_METERING_MODE:I

    const/high16 v12, 0x3

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    const/high16 v12, 0x3

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_FLASH:I

    const/high16 v12, 0x3

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    const/high16 v12, 0x5

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    const/high16 v12, 0x3

    or-int/2addr v12, v1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    const/high16 v12, 0x5

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    const/high16 v12, 0x7

    or-int/2addr v12, v1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    const/high16 v12, 0x5

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    const/high16 v12, 0x5

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    const/high16 v12, 0x3

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    const/high16 v12, 0x3

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    const/high16 v12, 0x5

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_SENSING_METHOD:I

    const/high16 v12, 0x3

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_FILE_SOURCE:I

    const/high16 v12, 0x7

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_SCENE_TYPE:I

    const/high16 v12, 0x7

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_CFA_PATTERN:I

    const/high16 v12, 0x7

    or-int/2addr v12, v1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    const/high16 v12, 0x3

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    const/high16 v12, 0x3

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    const/high16 v12, 0x3

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    const/high16 v12, 0x5

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    const/high16 v12, 0x3

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    const/high16 v12, 0x3

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    const/high16 v12, 0x5

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_CONTRAST:I

    const/high16 v12, 0x3

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_SATURATION:I

    const/high16 v12, 0x3

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_SHARPNESS:I

    const/high16 v12, 0x3

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    const/high16 v12, 0x7

    or-int/2addr v12, v1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    const/high16 v12, 0x3

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    const/high16 v12, 0x4

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v10, 0x1

    new-array v2, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x4

    aput v11, v2, v10

    invoke-static {v2}, Lcom/pinguo/album/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v3, v10, 0x18

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    const/high16 v12, 0x1

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    const/high16 v12, 0x2

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    const/high16 v12, 0x2

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    const/high16 v12, 0xa

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    const/high16 v12, 0xa

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    const/high16 v12, 0x1

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    const/high16 v12, 0x5

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/high16 v12, 0x5

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    const/high16 v12, 0x2

    or-int/2addr v12, v3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_STATUS:I

    const/high16 v12, 0x2

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    const/high16 v12, 0x2

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_DOP:I

    const/high16 v12, 0x5

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    const/high16 v12, 0x2

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_SPEED:I

    const/high16 v12, 0x5

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    const/high16 v12, 0x2

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_TRACK:I

    const/high16 v12, 0x5

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const/high16 v12, 0x2

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    const/high16 v12, 0x5

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    const/high16 v12, 0x2

    or-int/2addr v12, v3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    const/high16 v12, 0x2

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    const/high16 v12, 0x5

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    const/high16 v12, 0x2

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    const/high16 v12, 0x5

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    const/high16 v12, 0x2

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    const/high16 v12, 0x5

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    const/high16 v12, 0x7

    or-int/2addr v12, v3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    const/high16 v12, 0x7

    or-int/2addr v12, v3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    const/high16 v12, 0x2

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0xb

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    const/high16 v12, 0x3

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0xb

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v10, 0x1

    new-array v8, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x3

    aput v11, v8, v10

    invoke-static {v8}, Lcom/pinguo/album/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v9, v10, 0x18

    iget-object v10, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/pinguo/album/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    const/high16 v12, 0x2

    or-int/2addr v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method protected static isIfdAllowed(II)Z
    .registers 7

    const/4 v3, 0x1

    invoke-static {}, Lcom/pinguo/album/exif/IfdData;->getIfds()[I

    move-result-object v2

    invoke-static {p0}, Lcom/pinguo/album/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_a
    array-length v4, v2

    if-lt v0, v4, :cond_f

    const/4 v3, 0x0

    :cond_e
    return v3

    :cond_f
    aget v4, v2, v0

    if-ne p1, v4, :cond_19

    shr-int v4, v1, v0

    and-int/lit8 v4, v4, 0x1

    if-eq v4, v3, :cond_e

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method protected static isOffsetTag(S)Z
    .registers 3

    sget-object v0, Lcom/pinguo/album/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static toExifLatLong(D)[Lcom/pinguo/album/exif/Rational;
    .registers 12

    const-wide/16 v8, 0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    double-to-int v0, p0

    int-to-double v3, v0

    sub-double v3, p0, v3

    const-wide/high16 v5, 0x404e

    mul-double p0, v3, v5

    double-to-int v1, p0

    int-to-double v3, v1

    sub-double v3, p0, v3

    const-wide v5, 0x40b7700000000000L

    mul-double p0, v3, v5

    double-to-int v2, p0

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/pinguo/album/exif/Rational;

    const/4 v4, 0x0

    new-instance v5, Lcom/pinguo/album/exif/Rational;

    int-to-long v6, v0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/pinguo/album/exif/Rational;-><init>(JJ)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lcom/pinguo/album/exif/Rational;

    int-to-long v6, v1

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/pinguo/album/exif/Rational;-><init>(JJ)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Lcom/pinguo/album/exif/Rational;

    int-to-long v6, v2

    const-wide/16 v8, 0x64

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/pinguo/album/exif/Rational;-><init>(JJ)V

    aput-object v5, v3, v4

    return-object v3
.end method


# virtual methods
.method public addDateTimeStampTag(IJLjava/util/TimeZone;)Z
    .registers 9

    const/4 v1, 0x0

    sget v2, Lcom/pinguo/album/exif/ExifInterface;->TAG_DATE_TIME:I

    if-eq p1, v2, :cond_d

    sget v2, Lcom/pinguo/album/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    if-eq p1, v2, :cond_d

    sget v2, Lcom/pinguo/album/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    if-ne p1, v2, :cond_22

    :cond_d
    iget-object v2, p0, Lcom/pinguo/album/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v2, p4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v2, p0, Lcom/pinguo/album/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/pinguo/album/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/pinguo/album/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_23

    :cond_22
    :goto_22
    return v1

    :cond_23
    invoke-virtual {p0, v0}, Lcom/pinguo/album/exif/ExifInterface;->setTag(Lcom/pinguo/album/exif/ExifTag;)Lcom/pinguo/album/exif/ExifTag;

    const/4 v1, 0x1

    goto :goto_22
.end method

.method public addGpsDateTimeStampTag(J)Z
    .registers 14

    const/4 v2, 0x1

    const-wide/16 v9, 0x1

    const/4 v1, 0x0

    sget v3, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    iget-object v4, p0, Lcom/pinguo/album/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/pinguo/album/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/pinguo/album/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_17

    :cond_16
    :goto_16
    return v1

    :cond_17
    invoke-virtual {p0, v0}, Lcom/pinguo/album/exif/ExifInterface;->setTag(Lcom/pinguo/album/exif/ExifTag;)Lcom/pinguo/album/exif/ExifTag;

    iget-object v3, p0, Lcom/pinguo/album/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    sget v3, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/pinguo/album/exif/Rational;

    new-instance v5, Lcom/pinguo/album/exif/Rational;

    iget-object v6, p0, Lcom/pinguo/album/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v5, v6, v7, v9, v10}, Lcom/pinguo/album/exif/Rational;-><init>(JJ)V

    aput-object v5, v4, v1

    new-instance v5, Lcom/pinguo/album/exif/Rational;

    iget-object v6, p0, Lcom/pinguo/album/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v5, v6, v7, v9, v10}, Lcom/pinguo/album/exif/Rational;-><init>(JJ)V

    aput-object v5, v4, v2

    const/4 v5, 0x2

    new-instance v6, Lcom/pinguo/album/exif/Rational;

    iget-object v7, p0, Lcom/pinguo/album/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-long v7, v7

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/pinguo/album/exif/Rational;-><init>(JJ)V

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/pinguo/album/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/pinguo/album/exif/ExifTag;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, v0}, Lcom/pinguo/album/exif/ExifInterface;->setTag(Lcom/pinguo/album/exif/ExifTag;)Lcom/pinguo/album/exif/ExifTag;

    move v1, v2

    goto :goto_16
.end method

.method public addGpsTags(DD)Z
    .registers 13

    const-wide/16 v6, 0x0

    sget v4, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-static {p1, p2}, Lcom/pinguo/album/exif/ExifInterface;->toExifLatLong(D)[Lcom/pinguo/album/exif/Rational;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/pinguo/album/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/pinguo/album/exif/ExifTag;

    move-result-object v1

    sget v4, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-static {p3, p4}, Lcom/pinguo/album/exif/ExifInterface;->toExifLatLong(D)[Lcom/pinguo/album/exif/Rational;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/pinguo/album/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/pinguo/album/exif/ExifTag;

    move-result-object v3

    sget v5, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    cmpl-double v4, p1, v6

    if-ltz v4, :cond_3a

    const-string/jumbo v4, "N"

    :goto_1f
    invoke-virtual {p0, v5, v4}, Lcom/pinguo/album/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/pinguo/album/exif/ExifTag;

    move-result-object v0

    sget v5, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    cmpl-double v4, p3, v6

    if-ltz v4, :cond_3e

    const-string/jumbo v4, "E"

    :goto_2c
    invoke-virtual {p0, v5, v4}, Lcom/pinguo/album/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/pinguo/album/exif/ExifTag;

    move-result-object v2

    if-eqz v1, :cond_38

    if-eqz v3, :cond_38

    if-eqz v0, :cond_38

    if-nez v2, :cond_42

    :cond_38
    const/4 v4, 0x0

    :goto_39
    return v4

    :cond_3a
    const-string/jumbo v4, "S"

    goto :goto_1f

    :cond_3e
    const-string/jumbo v4, "W"

    goto :goto_2c

    :cond_42
    invoke-virtual {p0, v1}, Lcom/pinguo/album/exif/ExifInterface;->setTag(Lcom/pinguo/album/exif/ExifTag;)Lcom/pinguo/album/exif/ExifTag;

    invoke-virtual {p0, v3}, Lcom/pinguo/album/exif/ExifInterface;->setTag(Lcom/pinguo/album/exif/ExifTag;)Lcom/pinguo/album/exif/ExifTag;

    invoke-virtual {p0, v0}, Lcom/pinguo/album/exif/ExifInterface;->setTag(Lcom/pinguo/album/exif/ExifTag;)Lcom/pinguo/album/exif/ExifTag;

    invoke-virtual {p0, v2}, Lcom/pinguo/album/exif/ExifInterface;->setTag(Lcom/pinguo/album/exif/ExifTag;)Lcom/pinguo/album/exif/ExifTag;

    const/4 v4, 0x1

    goto :goto_39
.end method

.method public buildTag(IILjava/lang/Object;)Lcom/pinguo/album/exif/ExifTag;
    .registers 12

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-eqz v6, :cond_d

    if-nez p3, :cond_f

    :cond_d
    move-object v0, v7

    :cond_e
    :goto_e
    return-object v0

    :cond_f
    invoke-static {v6}, Lcom/pinguo/album/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v2

    invoke-static {v6}, Lcom/pinguo/album/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    if-eqz v3, :cond_22

    const/4 v5, 0x1

    :goto_1a
    invoke-static {v6, p2}, Lcom/pinguo/album/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result v1

    if-nez v1, :cond_24

    move-object v0, v7

    goto :goto_e

    :cond_22
    const/4 v5, 0x0

    goto :goto_1a

    :cond_24
    new-instance v0, Lcom/pinguo/album/exif/ExifTag;

    invoke-static {p1}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/album/exif/ExifTag;-><init>(SSIIZ)V

    invoke-virtual {v0, p3}, Lcom/pinguo/album/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    move-object v0, v7

    goto :goto_e
.end method

.method public buildTag(ILjava/lang/Object;)Lcom/pinguo/album/exif/ExifTag;
    .registers 5

    invoke-static {p1}, Lcom/pinguo/album/exif/ExifInterface;->getTrueIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/pinguo/album/exif/ExifInterface;->buildTag(IILjava/lang/Object;)Lcom/pinguo/album/exif/ExifTag;

    move-result-object v1

    return-object v1
.end method

.method protected buildUninitializedTag(I)Lcom/pinguo/album/exif/ExifTag;
    .registers 9

    invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-nez v6, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-static {v6}, Lcom/pinguo/album/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v2

    invoke-static {v6}, Lcom/pinguo/album/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    if-eqz v3, :cond_25

    const/4 v5, 0x1

    :goto_17
    invoke-static {p1}, Lcom/pinguo/album/exif/ExifInterface;->getTrueIfd(I)I

    move-result v4

    new-instance v0, Lcom/pinguo/album/exif/ExifTag;

    invoke-static {p1}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/album/exif/ExifTag;-><init>(SSIIZ)V

    goto :goto_b

    :cond_25
    const/4 v5, 0x0

    goto :goto_17
.end method

.method public clearExif()V
    .registers 3

    new-instance v0, Lcom/pinguo/album/exif/ExifData;

    sget-object v1, Lcom/pinguo/album/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/pinguo/album/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mData:Lcom/pinguo/album/exif/ExifData;

    return-void
.end method

.method public deleteTag(I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/pinguo/album/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/pinguo/album/exif/ExifInterface;->deleteTag(II)V

    return-void
.end method

.method public deleteTag(II)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mData:Lcom/pinguo/album/exif/ExifData;

    invoke-static {p1}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/pinguo/album/exif/ExifData;->removeTag(SI)V

    return-void
.end method

.method public forceRewriteExif(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifInterface;->getAllTags()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/pinguo/album/exif/ExifInterface;->forceRewriteExif(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public forceRewriteExif(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/pinguo/album/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/exif/ExifInterface;->rewriteExif(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_32

    iget-object v6, p0, Lcom/pinguo/album/exif/ExifInterface;->mData:Lcom/pinguo/album/exif/ExifData;

    new-instance v7, Lcom/pinguo/album/exif/ExifData;

    sget-object v8, Lcom/pinguo/album/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v7, v8}, Lcom/pinguo/album/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v7, p0, Lcom/pinguo/album/exif/ExifInterface;->mData:Lcom/pinguo/album/exif/ExifData;

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_13
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_38
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_33

    :try_start_18
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_3f
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_46

    :try_start_1d
    invoke-direct {p0, v5, v1}, Lcom/pinguo/album/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/pinguo/album/exif/ExifInterface;->readExif([B)V

    invoke-virtual {p0, p2}, Lcom/pinguo/album/exif/ExifInterface;->setTags(Ljava/util/Collection;)V

    invoke-virtual {p0, v3, p1}, Lcom/pinguo/album/exif/ExifInterface;->writeExif([BLjava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_42
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2d} :catch_49

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    iput-object v6, p0, Lcom/pinguo/album/exif/ExifInterface;->mData:Lcom/pinguo/album/exif/ExifData;

    :cond_32
    return-void

    :catch_33
    move-exception v2

    :goto_34
    :try_start_34
    invoke-static {v4}, Lcom/pinguo/album/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v2
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception v7

    :goto_39
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    iput-object v6, p0, Lcom/pinguo/album/exif/ExifInterface;->mData:Lcom/pinguo/album/exif/ExifData;

    throw v7

    :catchall_3f
    move-exception v7

    move-object v4, v5

    goto :goto_39

    :catchall_42
    move-exception v7

    move-object v0, v1

    move-object v4, v5

    goto :goto_39

    :catch_46
    move-exception v2

    move-object v4, v5

    goto :goto_34

    :catch_49
    move-exception v2

    move-object v0, v1

    move-object v4, v5

    goto :goto_34
.end method

.method public getActualTagCount(II)I
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/exif/ExifInterface;->getTag(II)Lcom/pinguo/album/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I

    move-result v1

    goto :goto_7
.end method

.method public getAllTags()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/album/exif/ExifTag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mData:Lcom/pinguo/album/exif/ExifData;

    invoke-virtual {v0}, Lcom/pinguo/album/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefinedTagCount(I)I
    .registers 4

    invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return v1

    :cond_c
    invoke-static {v0}, Lcom/pinguo/album/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v1

    goto :goto_b
.end method

.method public getDefinedTagDefaultIfd(I)I
    .registers 4

    invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v1, -0x1

    :goto_b
    return v1

    :cond_c
    invoke-static {p1}, Lcom/pinguo/album/exif/ExifInterface;->getTrueIfd(I)I

    move-result v1

    goto :goto_b
.end method

.method public getDefinedTagType(I)S
    .registers 4

    invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v1, -0x1

    :goto_b
    return v1

    :cond_c
    invoke-static {v0}, Lcom/pinguo/album/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v1

    goto :goto_b
.end method

.method public getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 5

    if-nez p1, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v0, Lcom/pinguo/album/exif/ExifOutputStream;

    invoke-direct {v0, p1, p0}, Lcom/pinguo/album/exif/ExifOutputStream;-><init>(Ljava/io/OutputStream;Lcom/pinguo/album/exif/ExifInterface;)V

    iget-object v1, p0, Lcom/pinguo/album/exif/ExifInterface;->mData:Lcom/pinguo/album/exif/ExifData;

    invoke-virtual {v0, v1}, Lcom/pinguo/album/exif/ExifOutputStream;->setExifData(Lcom/pinguo/album/exif/ExifData;)V

    return-object v0
.end method

.method public getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-nez p1, :cond_b

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Argument is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    const/4 v1, 0x0

    :try_start_c
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_11} :catch_16

    invoke-virtual {p0, v2}, Lcom/pinguo/album/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v3

    return-object v3

    :catch_16
    move-exception v0

    invoke-static {v1}, Lcom/pinguo/album/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public getLatLongAsDoubles()[D
    .registers 9

    const/4 v6, 0x3

    sget v5, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-virtual {p0, v5}, Lcom/pinguo/album/exif/ExifInterface;->getTagRationalValues(I)[Lcom/pinguo/album/exif/Rational;

    move-result-object v1

    sget v5, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    invoke-virtual {p0, v5}, Lcom/pinguo/album/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v2

    sget v5, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-virtual {p0, v5}, Lcom/pinguo/album/exif/ExifInterface;->getTagRationalValues(I)[Lcom/pinguo/album/exif/Rational;

    move-result-object v3

    sget v5, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    invoke-virtual {p0, v5}, Lcom/pinguo/album/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_27

    if-eqz v3, :cond_27

    if-eqz v2, :cond_27

    if-eqz v4, :cond_27

    array-length v5, v1

    if-lt v5, v6, :cond_27

    array-length v5, v3

    if-ge v5, v6, :cond_29

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return-object v0

    :cond_29
    const/4 v5, 0x2

    new-array v0, v5, [D

    const/4 v5, 0x0

    invoke-static {v1, v2}, Lcom/pinguo/album/exif/ExifInterface;->convertLatOrLongToDouble([Lcom/pinguo/album/exif/Rational;Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v0, v5

    const/4 v5, 0x1

    invoke-static {v3, v4}, Lcom/pinguo/album/exif/ExifInterface;->convertLatOrLongToDouble([Lcom/pinguo/album/exif/Rational;Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v0, v5

    goto :goto_28
.end method

.method public getTag(I)Lcom/pinguo/album/exif/ExifTag;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/pinguo/album/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/pinguo/album/exif/ExifInterface;->getTag(II)Lcom/pinguo/album/exif/ExifTag;

    move-result-object v1

    return-object v1
.end method

.method public getTag(II)Lcom/pinguo/album/exif/ExifTag;
    .registers 5

    invoke-static {p2}, Lcom/pinguo/album/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mData:Lcom/pinguo/album/exif/ExifData;

    invoke-static {p1}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/pinguo/album/exif/ExifData;->getTag(SI)Lcom/pinguo/album/exif/ExifTag;

    move-result-object v0

    goto :goto_7
.end method

.method public getTagByteValue(I)Ljava/lang/Byte;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/pinguo/album/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/pinguo/album/exif/ExifInterface;->getTagByteValue(II)Ljava/lang/Byte;

    move-result-object v1

    return-object v1
.end method

.method public getTagByteValue(II)Ljava/lang/Byte;
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/exif/ExifInterface;->getTagByteValues(II)[B

    move-result-object v0

    if-eqz v0, :cond_9

    array-length v1, v0

    if-gtz v1, :cond_b

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_a
.end method

.method public getTagByteValues(I)[B
    .registers 4

    invoke-virtual {p0, p1}, Lcom/pinguo/album/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/pinguo/album/exif/ExifInterface;->getTagByteValues(II)[B

    move-result-object v1

    return-object v1
.end method

.method public getTagByteValues(II)[B
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/exif/ExifInterface;->getTag(II)Lcom/pinguo/album/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lcom/pinguo/album/exif/ExifTag;->getValueAsBytes()[B

    move-result-object v1

    goto :goto_7
.end method

.method protected getTagDefinition(SI)I
    .registers 5

    invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-static {p2, p1}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method protected getTagDefinitionForTag(Lcom/pinguo/album/exif/ExifTag;)I
    .registers 6

    invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getDataType()S

    move-result v2

    invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getIfd()I

    move-result v1

    invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getTagId()S

    move-result v3

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/pinguo/album/exif/ExifInterface;->getTagDefinitionForTag(SSII)I

    move-result v3

    return v3
.end method

.method protected getTagDefinitionForTag(SSII)I
    .registers 20

    invoke-virtual/range {p0 .. p1}, Lcom/pinguo/album/exif/ExifInterface;->getTagDefinitionsForTagId(S)[I

    move-result-object v4

    if-nez v4, :cond_8

    const/4 v9, -0x1

    :cond_7
    :goto_7
    return v9

    :cond_8
    invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v7

    const/4 v9, -0x1

    array-length v13, v4

    const/4 v11, 0x0

    move v12, v11

    :goto_10
    if-ge v12, v13, :cond_7

    aget v5, v4, v12

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-static {v6}, Lcom/pinguo/album/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v3

    invoke-static {v6}, Lcom/pinguo/album/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v1

    invoke-static {v6}, Lcom/pinguo/album/exif/ExifInterface;->getAllowedIfdsFromInfo(I)[I

    move-result-object v2

    const/4 v10, 0x0

    array-length v14, v2

    const/4 v11, 0x0

    :goto_27
    if-lt v11, v14, :cond_37

    :goto_29
    if-eqz v10, :cond_42

    move/from16 v0, p2

    if-ne v0, v3, :cond_42

    move/from16 v0, p3

    if-eq v0, v1, :cond_35

    if-nez v1, :cond_42

    :cond_35
    move v9, v5

    goto :goto_7

    :cond_37
    aget v8, v2, v11

    move/from16 v0, p4

    if-ne v8, v0, :cond_3f

    const/4 v10, 0x1

    goto :goto_29

    :cond_3f
    add-int/lit8 v11, v11, 0x1

    goto :goto_27

    :cond_42
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto :goto_10
.end method

.method protected getTagDefinitionsForTagId(S)[I
    .registers 13

    const/4 v8, 0x0

    invoke-static {}, Lcom/pinguo/album/exif/IfdData;->getIfds()[I

    move-result-object v5

    array-length v7, v5

    new-array v3, v7, [I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v6

    array-length v9, v5

    move v7, v8

    move v1, v0

    :goto_10
    if-lt v7, v9, :cond_16

    if-nez v1, :cond_2a

    const/4 v7, 0x0

    :goto_15
    return-object v7

    :cond_16
    aget v4, v5, v7

    invoke-static {v4, p1}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    if-eqz v10, :cond_2f

    add-int/lit8 v0, v1, 0x1

    aput v2, v3, v1

    :goto_26
    add-int/lit8 v7, v7, 0x1

    move v1, v0

    goto :goto_10

    :cond_2a
    invoke-static {v3, v8, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v7

    goto :goto_15

    :cond_2f
    move v0, v1

    goto :goto_26
.end method

.method protected getTagInfo()Landroid/util/SparseIntArray;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    if-nez v0, :cond_e

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    invoke-direct {p0}, Lcom/pinguo/album/exif/ExifInterface;->initTagInfo()V

    :cond_e
    iget-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getTagIntValue(I)Ljava/lang/Integer;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/pinguo/album/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/pinguo/album/exif/ExifInterface;->getTagIntValue(II)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getTagIntValue(II)Ljava/lang/Integer;
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/exif/ExifInterface;->getTagIntValues(II)[I

    move-result-object v0

    if-eqz v0, :cond_9

    array-length v1, v0

    if-gtz v1, :cond_b

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_a
.end method

.method public getTagIntValues(I)[I
    .registers 4

    invoke-virtual {p0, p1}, Lcom/pinguo/album/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/pinguo/album/exif/ExifInterface;->getTagIntValues(II)[I

    move-result-object v1

    return-object v1
.end method

.method public getTagIntValues(II)[I
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/exif/ExifInterface;->getTag(II)Lcom/pinguo/album/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lcom/pinguo/album/exif/ExifTag;->getValueAsInts()[I

    move-result-object v1

    goto :goto_7
.end method

.method public getTagLongValue(I)Ljava/lang/Long;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/pinguo/album/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/pinguo/album/exif/ExifInterface;->getTagLongValue(II)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public getTagLongValue(II)Ljava/lang/Long;
    .registers 6

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/exif/ExifInterface;->getTagLongValues(II)[J

    move-result-object v0

    if-eqz v0, :cond_9

    array-length v1, v0

    if-gtz v1, :cond_b

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_a
.end method

.method public getTagLongValues(I)[J
    .registers 4

    invoke-virtual {p0, p1}, Lcom/pinguo/album/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/pinguo/album/exif/ExifInterface;->getTagLongValues(II)[J

    move-result-object v1

    return-object v1
.end method

.method public getTagLongValues(II)[J
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/exif/ExifInterface;->getTag(II)Lcom/pinguo/album/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lcom/pinguo/album/exif/ExifTag;->getValueAsLongs()[J

    move-result-object v1

    goto :goto_7
.end method

.method public getTagRationalValue(I)Lcom/pinguo/album/exif/Rational;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/pinguo/album/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/pinguo/album/exif/ExifInterface;->getTagRationalValue(II)Lcom/pinguo/album/exif/Rational;

    move-result-object v1

    return-object v1
.end method

.method public getTagRationalValue(II)Lcom/pinguo/album/exif/Rational;
    .registers 6

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/exif/ExifInterface;->getTagRationalValues(II)[Lcom/pinguo/album/exif/Rational;

    move-result-object v0

    if-eqz v0, :cond_9

    array-length v1, v0

    if-nez v1, :cond_b

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return-object v1

    :cond_b
    new-instance v1, Lcom/pinguo/album/exif/Rational;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Lcom/pinguo/album/exif/Rational;-><init>(Lcom/pinguo/album/exif/Rational;)V

    goto :goto_a
.end method

.method public getTagRationalValues(I)[Lcom/pinguo/album/exif/Rational;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/pinguo/album/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/pinguo/album/exif/ExifInterface;->getTagRationalValues(II)[Lcom/pinguo/album/exif/Rational;

    move-result-object v1

    return-object v1
.end method

.method public getTagRationalValues(II)[Lcom/pinguo/album/exif/Rational;
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/exif/ExifInterface;->getTag(II)Lcom/pinguo/album/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lcom/pinguo/album/exif/ExifTag;->getValueAsRationals()[Lcom/pinguo/album/exif/Rational;

    move-result-object v1

    goto :goto_7
.end method

.method public getTagStringValue(I)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/pinguo/album/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/pinguo/album/exif/ExifInterface;->getTagStringValue(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTagStringValue(II)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/exif/ExifInterface;->getTag(II)Lcom/pinguo/album/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lcom/pinguo/album/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public getTagValue(I)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/pinguo/album/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/pinguo/album/exif/ExifInterface;->getTagValue(II)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getTagValue(II)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/exif/ExifInterface;->getTag(II)Lcom/pinguo/album/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lcom/pinguo/album/exif/ExifTag;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_7
.end method

.method public getTagsForIfdId(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/album/exif/ExifTag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mData:Lcom/pinguo/album/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/pinguo/album/exif/ExifData;->getAllTagsForIfd(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTagsForTagId(S)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/album/exif/ExifTag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mData:Lcom/pinguo/album/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/pinguo/album/exif/ExifData;->getAllTagsForTagId(S)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail()[B
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mData:Lcom/pinguo/album/exif/ExifData;

    invoke-virtual {v0}, Lcom/pinguo/album/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .registers 4

    iget-object v1, p0, Lcom/pinguo/album/exif/ExifInterface;->mData:Lcom/pinguo/album/exif/ExifData;

    invoke-virtual {v1}, Lcom/pinguo/album/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/pinguo/album/exif/ExifInterface;->mData:Lcom/pinguo/album/exif/ExifData;

    invoke-virtual {v1}, Lcom/pinguo/album/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_14
    return-object v1

    :cond_15
    iget-object v1, p0, Lcom/pinguo/album/exif/ExifInterface;->mData:Lcom/pinguo/album/exif/ExifData;

    invoke-virtual {v1}, Lcom/pinguo/album/exif/ExifData;->hasUncompressedStrip()Z

    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getThumbnailBytes()[B
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mData:Lcom/pinguo/album/exif/ExifData;

    invoke-virtual {v0}, Lcom/pinguo/album/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mData:Lcom/pinguo/album/exif/ExifData;

    invoke-virtual {v0}, Lcom/pinguo/album/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mData:Lcom/pinguo/album/exif/ExifData;

    invoke-virtual {v0}, Lcom/pinguo/album/exif/ExifData;->hasUncompressedStrip()Z

    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getUserComment()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mData:Lcom/pinguo/album/exif/ExifData;

    invoke-virtual {v0}, Lcom/pinguo/album/exif/ExifData;->getUserComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasThumbnail()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mData:Lcom/pinguo/album/exif/ExifData;

    invoke-virtual {v0}, Lcom/pinguo/album/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    return v0
.end method

.method public isTagCountDefined(I)Z
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return v1

    :cond_c
    invoke-static {v0}, Lcom/pinguo/album/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v2

    if-eqz v2, :cond_b

    const/4 v1, 0x1

    goto :goto_b
.end method

.method public isThumbnailCompressed()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mData:Lcom/pinguo/album/exif/ExifData;

    invoke-virtual {v0}, Lcom/pinguo/album/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    return v0
.end method

.method public readExif(Ljava/io/InputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    const/4 v0, 0x0

    :try_start_c
    new-instance v2, Lcom/pinguo/album/exif/ExifReader;

    invoke-direct {v2, p0}, Lcom/pinguo/album/exif/ExifReader;-><init>(Lcom/pinguo/album/exif/ExifInterface;)V

    invoke-virtual {v2, p1}, Lcom/pinguo/album/exif/ExifReader;->read(Ljava/io/InputStream;)Lcom/pinguo/album/exif/ExifData;
    :try_end_14
    .catch Lcom/pinguo/album/exif/ExifInvalidFormatException; {:try_start_c .. :try_end_14} :catch_18

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mData:Lcom/pinguo/album/exif/ExifData;

    return-void

    :catch_18
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Invalid exif format : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readExif(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_b

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Argument is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    const/4 v1, 0x0

    :try_start_c
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_1d

    :try_start_16
    invoke-virtual {p0, v2}, Lcom/pinguo/album/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_22

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-void

    :catch_1d
    move-exception v0

    :goto_1e
    invoke-static {v1}, Lcom/pinguo/album/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catch_22
    move-exception v0

    move-object v1, v2

    goto :goto_1e
.end method

.method public readExif([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/pinguo/album/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    return-void
.end method

.method public removeCompressedThumbnail()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mData:Lcom/pinguo/album/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/album/exif/ExifData;->setCompressedThumbnail([B)V

    return-void
.end method

.method public removeTagDefinition(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    return-void
.end method

.method public resetTagDefinitions()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-void
.end method

.method public rewriteExif(Ljava/lang/String;Ljava/util/Collection;)Z
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/pinguo/album/exif/ExifTag;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v14, 0x0

    :try_start_2
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v15, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_49
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_17} :catch_7c

    const/16 v16, 0x0

    :try_start_19
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcom/pinguo/album/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/pinguo/album/exif/ExifInterface;)Lcom/pinguo/album/exif/ExifParser;
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_76
    .catch Lcom/pinguo/album/exif/ExifInvalidFormatException; {:try_start_19 .. :try_end_1e} :catch_4e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_58

    move-result-object v16

    :try_start_1f
    invoke-virtual/range {v16 .. v16}, Lcom/pinguo/album/exif/ExifParser;->getOffsetToExifEndFromSOF()I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_76
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_27} :catch_58

    const/4 v14, 0x0

    :try_start_28
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    move-object/from16 v0, v18

    invoke-direct {v11, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_49
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_32} :catch_7c

    :try_start_32
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    cmp-long v2, v12, v6

    if-gez v2, :cond_5b

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Filesize changed during operation"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_79
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_43} :catch_43

    :catch_43
    move-exception v9

    move-object v10, v11

    :goto_45
    :try_start_45
    invoke-static {v10}, Lcom/pinguo/album/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v9
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception v2

    :goto_4a
    invoke-static {v14}, Lcom/pinguo/album/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v2

    :catch_4e
    move-exception v9

    :try_start_4f
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid exif format : "

    invoke-direct {v2, v3, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_58
    .catchall {:try_start_4f .. :try_end_58} :catchall_76
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_58} :catch_58

    :catch_58
    move-exception v9

    move-object v14, v15

    goto :goto_45

    :cond_5b
    :try_start_5b
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v1}, Lcom/pinguo/album/exif/ExifInterface;->rewriteExif(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z
    :try_end_6e
    .catchall {:try_start_5b .. :try_end_6e} :catchall_79
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_6e} :catch_43

    move-result v17

    invoke-static {v14}, Lcom/pinguo/album/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    return v17

    :catchall_76
    move-exception v2

    move-object v14, v15

    goto :goto_4a

    :catchall_79
    move-exception v2

    move-object v10, v11

    goto :goto_4a

    :catch_7c
    move-exception v9

    goto :goto_45
.end method

.method public rewriteExif(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Collection",
            "<",
            "Lcom/pinguo/album/exif/ExifTag;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Lcom/pinguo/album/exif/ExifModifier;

    invoke-direct {v2, p1, p0}, Lcom/pinguo/album/exif/ExifModifier;-><init>(Ljava/nio/ByteBuffer;Lcom/pinguo/album/exif/ExifInterface;)V
    :try_end_6
    .catch Lcom/pinguo/album/exif/ExifInvalidFormatException; {:try_start_1 .. :try_end_6} :catch_37

    :try_start_6
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {v2}, Lcom/pinguo/album/exif/ExifModifier;->commit()Z

    move-result v4

    return v4

    :cond_15
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pinguo/album/exif/ExifTag;

    invoke-virtual {v2, v3}, Lcom/pinguo/album/exif/ExifModifier;->modifyTag(Lcom/pinguo/album/exif/ExifTag;)V
    :try_end_1e
    .catch Lcom/pinguo/album/exif/ExifInvalidFormatException; {:try_start_6 .. :try_end_1e} :catch_1f

    goto :goto_a

    :catch_1f
    move-exception v0

    move-object v1, v2

    :goto_21
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Invalid exif format : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_37
    move-exception v0

    goto :goto_21
.end method

.method public setCompressedThumbnail(Landroid/graphics/Bitmap;)Z
    .registers 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x0

    :goto_10
    return v1

    :cond_11
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pinguo/album/exif/ExifInterface;->setCompressedThumbnail([B)Z

    move-result v1

    goto :goto_10
.end method

.method public setCompressedThumbnail([B)Z
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mData:Lcom/pinguo/album/exif/ExifData;

    invoke-virtual {v0}, Lcom/pinguo/album/exif/ExifData;->clearThumbnailAndStrips()V

    iget-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mData:Lcom/pinguo/album/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/pinguo/album/exif/ExifData;->setCompressedThumbnail([B)V

    const/4 v0, 0x1

    return v0
.end method

.method public setExif(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/pinguo/album/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifInterface;->clearExif()V

    invoke-virtual {p0, p1}, Lcom/pinguo/album/exif/ExifInterface;->setTags(Ljava/util/Collection;)V

    return-void
.end method

.method public setTag(Lcom/pinguo/album/exif/ExifTag;)Lcom/pinguo/album/exif/ExifTag;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/exif/ExifInterface;->mData:Lcom/pinguo/album/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/pinguo/album/exif/ExifData;->addTag(Lcom/pinguo/album/exif/ExifTag;)Lcom/pinguo/album/exif/ExifTag;

    move-result-object v0

    return-object v0
.end method

.method public setTagDefinition(SISS[I)I
    .registers 19

    sget-object v10, Lcom/pinguo/album/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v8, -0x1

    :goto_d
    return v8

    :cond_e
    invoke-static/range {p3 .. p3}, Lcom/pinguo/album/exif/ExifTag;->isValidType(S)Z

    move-result v10

    if-eqz v10, :cond_72

    invoke-static {p2}, Lcom/pinguo/album/exif/ExifTag;->isValidIfd(I)Z

    move-result v10

    if-eqz v10, :cond_72

    invoke-static {p2, p1}, Lcom/pinguo/album/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_23

    const/4 v8, -0x1

    goto :goto_d

    :cond_23
    invoke-virtual {p0, p1}, Lcom/pinguo/album/exif/ExifInterface;->getTagDefinitionsForTagId(S)[I

    move-result-object v7

    invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v6

    const/4 v3, 0x0

    move-object/from16 v0, p5

    array-length v11, v0

    const/4 v10, 0x0

    :goto_30
    if-lt v10, v11, :cond_36

    if-nez v3, :cond_46

    const/4 v8, -0x1

    goto :goto_d

    :cond_36
    aget v4, p5, v10

    if-ne p2, v4, :cond_3b

    const/4 v3, 0x1

    :cond_3b
    invoke-static {v4}, Lcom/pinguo/album/exif/ExifTag;->isValidIfd(I)Z

    move-result v12

    if-nez v12, :cond_43

    const/4 v8, -0x1

    goto :goto_d

    :cond_43
    add-int/lit8 v10, v10, 0x1

    goto :goto_30

    :cond_46
    invoke-static/range {p5 .. p5}, Lcom/pinguo/album/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v5

    if-eqz v7, :cond_50

    array-length v11, v7

    const/4 v10, 0x0

    :goto_4e
    if-lt v10, v11, :cond_5f

    :cond_50
    invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v10

    shl-int/lit8 v11, v5, 0x18

    shl-int/lit8 v12, p3, 0x10

    or-int/2addr v11, v12

    or-int v11, v11, p4

    invoke-virtual {v10, v8, v11}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_d

    :cond_5f
    aget v2, v7, v10

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    invoke-static {v9}, Lcom/pinguo/album/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v1

    and-int v12, v5, v1

    if-eqz v12, :cond_6f

    const/4 v8, -0x1

    goto :goto_d

    :cond_6f
    add-int/lit8 v10, v10, 0x1

    goto :goto_4e

    :cond_72
    const/4 v8, -0x1

    goto :goto_d
.end method

.method public setTagValue(IILjava/lang/Object;)Z
    .registers 6

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/exif/ExifInterface;->getTag(II)Lcom/pinguo/album/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0, p3}, Lcom/pinguo/album/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_7
.end method

.method public setTagValue(ILjava/lang/Object;)Z
    .registers 5

    invoke-virtual {p0, p1}, Lcom/pinguo/album/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/pinguo/album/exif/ExifInterface;->setTagValue(IILjava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public setTags(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/pinguo/album/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b

    return-void

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/album/exif/ExifTag;

    invoke-virtual {p0, v0}, Lcom/pinguo/album/exif/ExifInterface;->setTag(Lcom/pinguo/album/exif/ExifTag;)Lcom/pinguo/album/exif/ExifTag;

    goto :goto_4
.end method

.method public writeExif(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-nez p2, :cond_d

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    invoke-virtual {p0, p2}, Lcom/pinguo/album/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public writeExif(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-nez p2, :cond_d

    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    const/4 v1, 0x0

    :try_start_e
    invoke-virtual {p0, p2}, Lcom/pinguo/album/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1c} :catch_20

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :catch_20
    move-exception v0

    invoke-static {v1}, Lcom/pinguo/album/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public writeExif(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-nez p2, :cond_d

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    invoke-virtual {p0, p2}, Lcom/pinguo/album/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/pinguo/album/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public writeExif(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-nez p2, :cond_d

    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    const/4 v1, 0x0

    :try_start_e
    invoke-virtual {p0, p2}, Lcom/pinguo/album/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/pinguo/album/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_1c

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :catch_1c
    move-exception v0

    invoke-static {v1}, Lcom/pinguo/album/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public writeExif(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-nez p2, :cond_d

    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Argument is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_d
    const/4 v1, 0x0

    :try_start_e
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_1a

    :try_start_13
    invoke-virtual {p0, v2, p2}, Lcom/pinguo/album/exif/ExifInterface;->writeExif(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_1f

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-void

    :catch_1a
    move-exception v0

    :goto_1b
    invoke-static {v1}, Lcom/pinguo/album/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catch_1f
    move-exception v0

    move-object v1, v2

    goto :goto_1b
.end method

.method public writeExif([BLjava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-nez p2, :cond_d

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    invoke-virtual {p0, p2}, Lcom/pinguo/album/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public writeExif([BLjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-nez p2, :cond_d

    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    const/4 v1, 0x0

    :try_start_e
    invoke-virtual {p0, p2}, Lcom/pinguo/album/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1a} :catch_1e

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :catch_1e
    move-exception v0

    invoke-static {v1}, Lcom/pinguo/album/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method
