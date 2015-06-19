.class public Lcom/googlecode/javacv/cpp/avutil;
.super Ljava/lang/Object;
.source "avutil.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Properties;
    value = {
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            cinclude = {
                "<libavutil/avutil.h>",
                "<libavutil/error.h>",
                "<libavutil/mem.h>",
                "<libavutil/mathematics.h>",
                "<libavutil/rational.h>",
                "<libavutil/log.h>",
                "<libavutil/buffer.h>",
                "<libavutil/frame.h>",
                "<libavutil/pixfmt.h>",
                "<libavutil/samplefmt.h>",
                "<libavutil/channel_layout.h>",
                "<libavutil/cpu.h>",
                "<libavutil/dict.h>",
                "<libavutil/opt.h>",
                "<libavutil/audioconvert.h>",
                "<libavutil/pixdesc.h>",
                "<libavutil/imgutils.h>"
            }
            define = {
                "__STDC_CONSTANT_MACROS"
            }
            includepath = {
                "/usr/local/include/ffmpeg/",
                "/opt/local/include/ffmpeg/",
                "/usr/include/ffmpeg/"
            }
            link = {
                "avutil@.52"
            }
            options = {
                "default",
                "nodeprecated"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            includepath = {
                "C:/MinGW/local/include/ffmpeg/",
                "C:/MinGW/include/ffmpeg/",
                "src/main/resources/com/googlecode/javacv/cpp/"
            }
            preload = {
                "avutil-52"
            }
            value = {
                "windows"
            }
        .end subannotation
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;,
        Lcom/googlecode/javacv/cpp/avutil$AVComponentDescriptor;,
        Lcom/googlecode/javacv/cpp/avutil$AVOptionRanges;,
        Lcom/googlecode/javacv/cpp/avutil$AVOptionRange;,
        Lcom/googlecode/javacv/cpp/avutil$AVOption;,
        Lcom/googlecode/javacv/cpp/avutil$AVDictionary;,
        Lcom/googlecode/javacv/cpp/avutil$AVDictionaryEntry;,
        Lcom/googlecode/javacv/cpp/avutil$AVBPrint;,
        Lcom/googlecode/javacv/cpp/avutil$AVFrame;,
        Lcom/googlecode/javacv/cpp/avutil$AVFrameSideData;,
        Lcom/googlecode/javacv/cpp/avutil$Alloc_int;,
        Lcom/googlecode/javacv/cpp/avutil$AVBufferPool;,
        Lcom/googlecode/javacv/cpp/avutil$Free_Pointer_byte;,
        Lcom/googlecode/javacv/cpp/avutil$Free_Pointer_ByteBuffer;,
        Lcom/googlecode/javacv/cpp/avutil$Free_Pointer_BytePointer;,
        Lcom/googlecode/javacv/cpp/avutil$AVBufferRef;,
        Lcom/googlecode/javacv/cpp/avutil$AVBuffer;,
        Lcom/googlecode/javacv/cpp/avutil$Arg0_Pointer_int_String_Pointer;,
        Lcom/googlecode/javacv/cpp/avutil$Arg0_Pointer_int_BytePointer_Pointer;,
        Lcom/googlecode/javacv/cpp/avutil$AVClass;,
        Lcom/googlecode/javacv/cpp/avutil$AVRational;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final AVERROR_BSF_NOT_FOUND:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_BUFFER_TOO_SMALL:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_BUG:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_BUG2:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_DECODER_NOT_FOUND:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_DEMUXER_NOT_FOUND:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_ENCODER_NOT_FOUND:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_EOF:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_EXIT:I = 0x0

.field public static final AVERROR_EXPERIMENTAL:I = -0x2bb2afa8

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_EXTERNAL:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_FILTER_NOT_FOUND:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_INVALIDDATA:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_MUXER_NOT_FOUND:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_OPTION_NOT_FOUND:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_PATCHWELCOME:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_PROTOCOL_NOT_FOUND:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_STREAM_NOT_FOUND:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AVERROR_UNKNOWN:I = 0x0

.field public static final AVMEDIA_TYPE_ATTACHMENT:I = 0x4

.field public static final AVMEDIA_TYPE_AUDIO:I = 0x1

.field public static final AVMEDIA_TYPE_DATA:I = 0x2

.field public static final AVMEDIA_TYPE_NB:I = 0x5

.field public static final AVMEDIA_TYPE_SUBTITLE:I = 0x3

.field public static final AVMEDIA_TYPE_UNKNOWN:I = -0x1

.field public static final AVMEDIA_TYPE_VIDEO:I = 0x0

.field public static final AVPALETTE_COUNT:I = 0x100

.field public static final AVPALETTE_SIZE:I = 0x400

.field public static final AV_BUFFER_FLAG_READONLY:I = 0x1

.field public static final AV_CH_BACK_CENTER:I = 0x100

.field public static final AV_CH_BACK_LEFT:I = 0x10

.field public static final AV_CH_BACK_RIGHT:I = 0x20

.field public static final AV_CH_FRONT_CENTER:I = 0x4

.field public static final AV_CH_FRONT_LEFT:I = 0x1

.field public static final AV_CH_FRONT_LEFT_OF_CENTER:I = 0x40

.field public static final AV_CH_FRONT_RIGHT:I = 0x2

.field public static final AV_CH_FRONT_RIGHT_OF_CENTER:I = 0x80

.field public static final AV_CH_LAYOUT_2POINT1:I = 0xb

.field public static final AV_CH_LAYOUT_2_1:I = 0x103

.field public static final AV_CH_LAYOUT_2_2:I = 0x603

.field public static final AV_CH_LAYOUT_3POINT1:I = 0xf

.field public static final AV_CH_LAYOUT_4POINT0:I = 0x107

.field public static final AV_CH_LAYOUT_4POINT1:I = 0x10f

.field public static final AV_CH_LAYOUT_5POINT0:I = 0x607

.field public static final AV_CH_LAYOUT_5POINT0_BACK:I = 0x37

.field public static final AV_CH_LAYOUT_5POINT1:I = 0x60f

.field public static final AV_CH_LAYOUT_5POINT1_BACK:I = 0x3f

.field public static final AV_CH_LAYOUT_6POINT0:I = 0x707

.field public static final AV_CH_LAYOUT_6POINT0_FRONT:I = 0x6c3

.field public static final AV_CH_LAYOUT_6POINT1:I = 0x70f

.field public static final AV_CH_LAYOUT_6POINT1_BACK:I = 0x13f

.field public static final AV_CH_LAYOUT_6POINT1_FRONT:I = 0x6cb

.field public static final AV_CH_LAYOUT_7POINT0:I = 0x637

.field public static final AV_CH_LAYOUT_7POINT0_FRONT:I = 0x6c7

.field public static final AV_CH_LAYOUT_7POINT1:I = 0x63f

.field public static final AV_CH_LAYOUT_7POINT1_WIDE:I = 0x6cf

.field public static final AV_CH_LAYOUT_7POINT1_WIDE_BACK:I = 0xff

.field public static final AV_CH_LAYOUT_HEXAGONAL:I = 0x137

.field public static final AV_CH_LAYOUT_MONO:I = 0x4

.field public static final AV_CH_LAYOUT_NATIVE:J = -0x8000000000000000L

.field public static final AV_CH_LAYOUT_OCTAGONAL:I = 0x737

.field public static final AV_CH_LAYOUT_QUAD:I = 0x33

.field public static final AV_CH_LAYOUT_STEREO:I = 0x3

.field public static final AV_CH_LAYOUT_STEREO_DOWNMIX:I = 0x60000000

.field public static final AV_CH_LAYOUT_SURROUND:I = 0x7

.field public static final AV_CH_LOW_FREQUENCY:I = 0x8

.field public static final AV_CH_LOW_FREQUENCY_2:J = 0x800000000L

.field public static final AV_CH_SIDE_LEFT:I = 0x200

.field public static final AV_CH_SIDE_RIGHT:I = 0x400

.field public static final AV_CH_STEREO_LEFT:I = 0x20000000

.field public static final AV_CH_STEREO_RIGHT:I = 0x40000000

.field public static final AV_CH_SURROUND_DIRECT_LEFT:J = 0x200000000L

.field public static final AV_CH_SURROUND_DIRECT_RIGHT:J = 0x400000000L

.field public static final AV_CH_TOP_BACK_CENTER:I = 0x10000

.field public static final AV_CH_TOP_BACK_LEFT:I = 0x8000

.field public static final AV_CH_TOP_BACK_RIGHT:I = 0x20000

.field public static final AV_CH_TOP_CENTER:I = 0x800

.field public static final AV_CH_TOP_FRONT_CENTER:I = 0x2000

.field public static final AV_CH_TOP_FRONT_LEFT:I = 0x1000

.field public static final AV_CH_TOP_FRONT_RIGHT:I = 0x4000

.field public static final AV_CH_WIDE_LEFT:J = 0x80000000L

.field public static final AV_CH_WIDE_RIGHT:J = 0x100000000L

.field public static final AV_CLASS_CATEGORY_BITSTREAM_FILTER:I = 0x8

.field public static final AV_CLASS_CATEGORY_DECODER:I = 0x6

.field public static final AV_CLASS_CATEGORY_DEMUXER:I = 0x4

.field public static final AV_CLASS_CATEGORY_ENCODER:I = 0x5

.field public static final AV_CLASS_CATEGORY_FILTER:I = 0x7

.field public static final AV_CLASS_CATEGORY_INPUT:I = 0x1

.field public static final AV_CLASS_CATEGORY_MUXER:I = 0x3

.field public static final AV_CLASS_CATEGORY_NA:I = 0x0

.field public static final AV_CLASS_CATEGORY_NB:I = 0xb

.field public static final AV_CLASS_CATEGORY_OUTPUT:I = 0x2

.field public static final AV_CLASS_CATEGORY_SWRESAMPLER:I = 0xa

.field public static final AV_CLASS_CATEGORY_SWSCALER:I = 0x9

.field public static final AV_CPU_FLAG_3DNOW:I = 0x4

.field public static final AV_CPU_FLAG_3DNOWEXT:I = 0x20

.field public static final AV_CPU_FLAG_ALTIVEC:I = 0x1

.field public static final AV_CPU_FLAG_ARMV5TE:I = 0x1

.field public static final AV_CPU_FLAG_ARMV6:I = 0x2

.field public static final AV_CPU_FLAG_ARMV6T2:I = 0x4

.field public static final AV_CPU_FLAG_ATOM:I = 0x10000000

.field public static final AV_CPU_FLAG_AVX:I = 0x4000

.field public static final AV_CPU_FLAG_CMOV:I = 0x1001000

.field public static final AV_CPU_FLAG_FMA4:I = 0x800

.field public static final AV_CPU_FLAG_FORCE:I = -0x80000000

.field public static final AV_CPU_FLAG_MMX:I = 0x1

.field public static final AV_CPU_FLAG_MMX2:I = 0x2

.field public static final AV_CPU_FLAG_MMXEXT:I = 0x2

.field public static final AV_CPU_FLAG_NEON:I = 0x20

.field public static final AV_CPU_FLAG_SSE:I = 0x8

.field public static final AV_CPU_FLAG_SSE2:I = 0x10

.field public static final AV_CPU_FLAG_SSE2SLOW:I = 0x40000000

.field public static final AV_CPU_FLAG_SSE3:I = 0x40

.field public static final AV_CPU_FLAG_SSE3SLOW:I = 0x20000000

.field public static final AV_CPU_FLAG_SSE4:I = 0x100

.field public static final AV_CPU_FLAG_SSE42:I = 0x200

.field public static final AV_CPU_FLAG_SSSE3:I = 0x80

.field public static final AV_CPU_FLAG_VFP:I = 0x8

.field public static final AV_CPU_FLAG_VFPV3:I = 0x10

.field public static final AV_CPU_FLAG_XOP:I = 0x400

.field public static final AV_DICT_APPEND:I = 0x20

.field public static final AV_DICT_DONT_OVERWRITE:I = 0x10

.field public static final AV_DICT_DONT_STRDUP_KEY:I = 0x4

.field public static final AV_DICT_DONT_STRDUP_VAL:I = 0x8

.field public static final AV_DICT_IGNORE_SUFFIX:I = 0x2

.field public static final AV_DICT_MATCH_CASE:I = 0x1

.field public static final AV_ERROR_MAX_STRING_SIZE:I = 0x40

.field public static final AV_FRAME_DATA_PANSCAN:I = 0x0

.field public static final AV_LOG_DEBUG:I = 0x30

.field public static final AV_LOG_ERROR:I = 0x10

.field public static final AV_LOG_FATAL:I = 0x8

.field public static final AV_LOG_INFO:I = 0x20

.field public static final AV_LOG_MAX_OFFSET:I = 0x38

.field public static final AV_LOG_PANIC:I = 0x0

.field public static final AV_LOG_QUIET:I = -0x8

.field public static final AV_LOG_SKIP_REPEATED:I = 0x1

.field public static final AV_LOG_VERBOSE:I = 0x28

.field public static final AV_LOG_WARNING:I = 0x18

.field public static final AV_MATRIX_ENCODING_DOLBY:I = 0x1

.field public static final AV_MATRIX_ENCODING_DPLII:I = 0x2

.field public static final AV_MATRIX_ENCODING_NB:I = 0x3

.field public static final AV_MATRIX_ENCODING_NONE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AV_NOPTS_VALUE:J = 0x0L

.field public static final AV_OPT_FLAG_IMPLICIT_KEY:I = 0x1

.field public static final AV_OPT_SEARCH_CHILDREN:I = 0x1

.field public static final AV_OPT_SEARCH_FAKE_OBJ:I = 0x2

.field public static final AV_OPT_TYPE_BINARY:I = 0x7

#the value of this static final field might be set in the static constructor
.field public static final AV_OPT_TYPE_COLOR:I = 0x0

.field public static final AV_OPT_TYPE_CONST:I = 0x80

.field public static final AV_OPT_TYPE_DOUBLE:I = 0x3

#the value of this static final field might be set in the static constructor
.field public static final AV_OPT_TYPE_DURATION:I = 0x0

.field public static final AV_OPT_TYPE_FLAGS:I = 0x0

.field public static final AV_OPT_TYPE_FLOAT:I = 0x4

#the value of this static final field might be set in the static constructor
.field public static final AV_OPT_TYPE_IMAGE_SIZE:I = 0x0

.field public static final AV_OPT_TYPE_INT:I = 0x1

.field public static final AV_OPT_TYPE_INT64:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final AV_OPT_TYPE_PIXEL_FMT:I = 0x0

.field public static final AV_OPT_TYPE_RATIONAL:I = 0x6

#the value of this static final field might be set in the static constructor
.field public static final AV_OPT_TYPE_SAMPLE_FMT:I = 0x0

.field public static final AV_OPT_TYPE_STRING:I = 0x5

#the value of this static final field might be set in the static constructor
.field public static final AV_OPT_TYPE_VIDEO_RATE:I = 0x0

.field public static final AV_PICTURE_TYPE_B:I = 0x3

.field public static final AV_PICTURE_TYPE_BI:I = 0x7

.field public static final AV_PICTURE_TYPE_I:I = 0x1

.field public static final AV_PICTURE_TYPE_NONE:I = 0x0

.field public static final AV_PICTURE_TYPE_P:I = 0x2

.field public static final AV_PICTURE_TYPE_S:I = 0x4

.field public static final AV_PICTURE_TYPE_SI:I = 0x5

.field public static final AV_PICTURE_TYPE_SP:I = 0x6

.field public static final AV_PIX_FMT_0BGR:I = 0x129

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_0BGR32:I = 0x0

.field public static final AV_PIX_FMT_0RGB:I = 0x127

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_0RGB32:I = 0x0

.field public static final AV_PIX_FMT_ABGR:I = 0x1d

.field public static final AV_PIX_FMT_ARGB:I = 0x1b

.field public static final AV_PIX_FMT_BGR0:I = 0x12a

.field public static final AV_PIX_FMT_BGR24:I = 0x3

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_BGR32:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_BGR32_1:I = 0x0

.field public static final AV_PIX_FMT_BGR4:I = 0x14

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_BGR444:I = 0x0

.field public static final AV_PIX_FMT_BGR444BE:I = 0x41

.field public static final AV_PIX_FMT_BGR444LE:I = 0x40

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_BGR48:I = 0x0

.field public static final AV_PIX_FMT_BGR48BE:I = 0x43

.field public static final AV_PIX_FMT_BGR48LE:I = 0x44

.field public static final AV_PIX_FMT_BGR4_BYTE:I = 0x15

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_BGR555:I = 0x0

.field public static final AV_PIX_FMT_BGR555BE:I = 0x31

.field public static final AV_PIX_FMT_BGR555LE:I = 0x32

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_BGR565:I = 0x0

.field public static final AV_PIX_FMT_BGR565BE:I = 0x2f

.field public static final AV_PIX_FMT_BGR565LE:I = 0x30

.field public static final AV_PIX_FMT_BGR8:I = 0x13

.field public static final AV_PIX_FMT_BGRA:I = 0x1e

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_BGRA64:I = 0x0

.field public static final AV_PIX_FMT_BGRA64BE:I = 0x125

.field public static final AV_PIX_FMT_BGRA64LE:I = 0x126

.field public static final AV_PIX_FMT_DXVA2_VLD:I = 0x3d

.field public static final AV_PIX_FMT_FLAG_ALPHA:I = 0x80

.field public static final AV_PIX_FMT_FLAG_BE:I = 0x1

.field public static final AV_PIX_FMT_FLAG_BITSTREAM:I = 0x4

.field public static final AV_PIX_FMT_FLAG_HWACCEL:I = 0x8

.field public static final AV_PIX_FMT_FLAG_PAL:I = 0x2

.field public static final AV_PIX_FMT_FLAG_PLANAR:I = 0x10

.field public static final AV_PIX_FMT_FLAG_PSEUDOPAL:I = 0x40

.field public static final AV_PIX_FMT_FLAG_RGB:I = 0x20

.field public static final AV_PIX_FMT_GBR24P:I = 0x52

.field public static final AV_PIX_FMT_GBRAP:I = 0x13d

.field public static final AV_PIX_FMT_GBRAP16BE:I = 0x13e

.field public static final AV_PIX_FMT_GBRAP16LE:I = 0x13f

.field public static final AV_PIX_FMT_GBRP:I = 0x52

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_GBRP10:I = 0x0

.field public static final AV_PIX_FMT_GBRP10BE:I = 0x55

.field public static final AV_PIX_FMT_GBRP10LE:I = 0x56

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_GBRP12:I = 0x0

.field public static final AV_PIX_FMT_GBRP12BE:I = 0x139

.field public static final AV_PIX_FMT_GBRP12LE:I = 0x13a

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_GBRP14:I = 0x0

.field public static final AV_PIX_FMT_GBRP14BE:I = 0x13b

.field public static final AV_PIX_FMT_GBRP14LE:I = 0x13c

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_GBRP16:I = 0x0

.field public static final AV_PIX_FMT_GBRP16BE:I = 0x57

.field public static final AV_PIX_FMT_GBRP16LE:I = 0x58

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_GBRP9:I = 0x0

.field public static final AV_PIX_FMT_GBRP9BE:I = 0x53

.field public static final AV_PIX_FMT_GBRP9LE:I = 0x54

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_GRAY16:I = 0x0

.field public static final AV_PIX_FMT_GRAY16BE:I = 0x1f

.field public static final AV_PIX_FMT_GRAY16LE:I = 0x20

.field public static final AV_PIX_FMT_GRAY8:I = 0x8

.field public static final AV_PIX_FMT_GRAY8A:I = 0x42

.field public static final AV_PIX_FMT_MONOBLACK:I = 0xa

.field public static final AV_PIX_FMT_MONOWHITE:I = 0x9

.field public static final AV_PIX_FMT_NB:I = 0x141

.field public static final AV_PIX_FMT_NONE:I = -0x1

.field public static final AV_PIX_FMT_NV12:I = 0x19

.field public static final AV_PIX_FMT_NV21:I = 0x1a

.field public static final AV_PIX_FMT_PAL8:I = 0xb

.field public static final AV_PIX_FMT_RGB0:I = 0x128

.field public static final AV_PIX_FMT_RGB24:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_RGB32:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_RGB32_1:I = 0x0

.field public static final AV_PIX_FMT_RGB4:I = 0x17

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_RGB444:I = 0x0

.field public static final AV_PIX_FMT_RGB444BE:I = 0x3f

.field public static final AV_PIX_FMT_RGB444LE:I = 0x3e

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_RGB48:I = 0x0

.field public static final AV_PIX_FMT_RGB48BE:I = 0x29

.field public static final AV_PIX_FMT_RGB48LE:I = 0x2a

.field public static final AV_PIX_FMT_RGB4_BYTE:I = 0x18

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_RGB555:I = 0x0

.field public static final AV_PIX_FMT_RGB555BE:I = 0x2d

.field public static final AV_PIX_FMT_RGB555LE:I = 0x2e

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_RGB565:I = 0x0

.field public static final AV_PIX_FMT_RGB565BE:I = 0x2b

.field public static final AV_PIX_FMT_RGB565LE:I = 0x2c

.field public static final AV_PIX_FMT_RGB8:I = 0x16

.field public static final AV_PIX_FMT_RGBA:I = 0x1c

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_RGBA64:I = 0x0

.field public static final AV_PIX_FMT_RGBA64BE:I = 0x123

.field public static final AV_PIX_FMT_RGBA64LE:I = 0x124

.field public static final AV_PIX_FMT_UYVY422:I = 0x11

.field public static final AV_PIX_FMT_UYYVYY411:I = 0x12

.field public static final AV_PIX_FMT_VAAPI_IDCT:I = 0x34

.field public static final AV_PIX_FMT_VAAPI_MOCO:I = 0x33

.field public static final AV_PIX_FMT_VAAPI_VLD:I = 0x35

.field public static final AV_PIX_FMT_VDA_VLD:I = 0x51

.field public static final AV_PIX_FMT_VDPAU:I = 0x6d

.field public static final AV_PIX_FMT_VDPAU_H264:I = 0x24

.field public static final AV_PIX_FMT_VDPAU_MPEG1:I = 0x25

.field public static final AV_PIX_FMT_VDPAU_MPEG2:I = 0x26

.field public static final AV_PIX_FMT_VDPAU_MPEG4:I = 0x3c

.field public static final AV_PIX_FMT_VDPAU_VC1:I = 0x28

.field public static final AV_PIX_FMT_VDPAU_WMV3:I = 0x27

.field public static final AV_PIX_FMT_XVMC_MPEG2_IDCT:I = 0x10

.field public static final AV_PIX_FMT_XVMC_MPEG2_MC:I = 0xf

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_XYZ12:I = 0x0

.field public static final AV_PIX_FMT_XYZ12BE:I = 0x6f

.field public static final AV_PIX_FMT_XYZ12LE:I = 0x6e

.field public static final AV_PIX_FMT_Y400A:I = 0x42

.field public static final AV_PIX_FMT_YUV410P:I = 0x6

.field public static final AV_PIX_FMT_YUV411P:I = 0x7

.field public static final AV_PIX_FMT_YUV420P:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV420P10:I = 0x0

.field public static final AV_PIX_FMT_YUV420P10BE:I = 0x47

.field public static final AV_PIX_FMT_YUV420P10LE:I = 0x48

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV420P12:I = 0x0

.field public static final AV_PIX_FMT_YUV420P12BE:I = 0x12d

.field public static final AV_PIX_FMT_YUV420P12LE:I = 0x12e

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV420P14:I = 0x0

.field public static final AV_PIX_FMT_YUV420P14BE:I = 0x12f

.field public static final AV_PIX_FMT_YUV420P14LE:I = 0x130

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV420P16:I = 0x0

.field public static final AV_PIX_FMT_YUV420P16BE:I = 0x37

.field public static final AV_PIX_FMT_YUV420P16LE:I = 0x36

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV420P9:I = 0x0

.field public static final AV_PIX_FMT_YUV420P9BE:I = 0x45

.field public static final AV_PIX_FMT_YUV420P9LE:I = 0x46

.field public static final AV_PIX_FMT_YUV422P:I = 0x4

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV422P10:I = 0x0

.field public static final AV_PIX_FMT_YUV422P10BE:I = 0x49

.field public static final AV_PIX_FMT_YUV422P10LE:I = 0x4a

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV422P12:I = 0x0

.field public static final AV_PIX_FMT_YUV422P12BE:I = 0x131

.field public static final AV_PIX_FMT_YUV422P12LE:I = 0x132

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV422P14:I = 0x0

.field public static final AV_PIX_FMT_YUV422P14BE:I = 0x133

.field public static final AV_PIX_FMT_YUV422P14LE:I = 0x134

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV422P16:I = 0x0

.field public static final AV_PIX_FMT_YUV422P16BE:I = 0x39

.field public static final AV_PIX_FMT_YUV422P16LE:I = 0x38

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV422P9:I = 0x0

.field public static final AV_PIX_FMT_YUV422P9BE:I = 0x4f

.field public static final AV_PIX_FMT_YUV422P9LE:I = 0x50

.field public static final AV_PIX_FMT_YUV440P:I = 0x21

.field public static final AV_PIX_FMT_YUV444P:I = 0x5

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV444P10:I = 0x0

.field public static final AV_PIX_FMT_YUV444P10BE:I = 0x4d

.field public static final AV_PIX_FMT_YUV444P10LE:I = 0x4e

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV444P12:I = 0x0

.field public static final AV_PIX_FMT_YUV444P12BE:I = 0x135

.field public static final AV_PIX_FMT_YUV444P12LE:I = 0x136

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV444P14:I = 0x0

.field public static final AV_PIX_FMT_YUV444P14BE:I = 0x137

.field public static final AV_PIX_FMT_YUV444P14LE:I = 0x138

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV444P16:I = 0x0

.field public static final AV_PIX_FMT_YUV444P16BE:I = 0x3b

.field public static final AV_PIX_FMT_YUV444P16LE:I = 0x3a

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUV444P9:I = 0x0

.field public static final AV_PIX_FMT_YUV444P9BE:I = 0x4b

.field public static final AV_PIX_FMT_YUV444P9LE:I = 0x4c

.field public static final AV_PIX_FMT_YUVA420P:I = 0x23

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUVA420P10:I = 0x0

.field public static final AV_PIX_FMT_YUVA420P10BE:I = 0x61

.field public static final AV_PIX_FMT_YUVA420P10LE:I = 0x62

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUVA420P16:I = 0x0

.field public static final AV_PIX_FMT_YUVA420P16BE:I = 0x67

.field public static final AV_PIX_FMT_YUVA420P16LE:I = 0x68

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUVA420P9:I = 0x0

.field public static final AV_PIX_FMT_YUVA420P9BE:I = 0x5b

.field public static final AV_PIX_FMT_YUVA420P9LE:I = 0x5c

.field public static final AV_PIX_FMT_YUVA422P:I = 0x12c

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUVA422P10:I = 0x0

.field public static final AV_PIX_FMT_YUVA422P10BE:I = 0x63

.field public static final AV_PIX_FMT_YUVA422P10LE:I = 0x64

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUVA422P16:I = 0x0

.field public static final AV_PIX_FMT_YUVA422P16BE:I = 0x69

.field public static final AV_PIX_FMT_YUVA422P16LE:I = 0x6a

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUVA422P9:I = 0x0

.field public static final AV_PIX_FMT_YUVA422P9BE:I = 0x5d

.field public static final AV_PIX_FMT_YUVA422P9LE:I = 0x5e

.field public static final AV_PIX_FMT_YUVA422P_LIBAV:I = 0x59

.field public static final AV_PIX_FMT_YUVA444P:I = 0x12b

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUVA444P10:I = 0x0

.field public static final AV_PIX_FMT_YUVA444P10BE:I = 0x65

.field public static final AV_PIX_FMT_YUVA444P10LE:I = 0x66

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUVA444P16:I = 0x0

.field public static final AV_PIX_FMT_YUVA444P16BE:I = 0x6b

.field public static final AV_PIX_FMT_YUVA444P16LE:I = 0x6c

#the value of this static final field might be set in the static constructor
.field public static final AV_PIX_FMT_YUVA444P9:I = 0x0

.field public static final AV_PIX_FMT_YUVA444P9BE:I = 0x5f

.field public static final AV_PIX_FMT_YUVA444P9LE:I = 0x60

.field public static final AV_PIX_FMT_YUVA444P_LIBAV:I = 0x5a

.field public static final AV_PIX_FMT_YUVJ411P:I = 0x140

.field public static final AV_PIX_FMT_YUVJ420P:I = 0xc

.field public static final AV_PIX_FMT_YUVJ422P:I = 0xd

.field public static final AV_PIX_FMT_YUVJ440P:I = 0x22

.field public static final AV_PIX_FMT_YUVJ444P:I = 0xe

.field public static final AV_PIX_FMT_YUYV422:I = 0x1

.field public static final AV_ROUND_DOWN:I = 0x2

.field public static final AV_ROUND_INF:I = 0x1

.field public static final AV_ROUND_NEAR_INF:I = 0x5

.field public static final AV_ROUND_PASS_MINMAX:I = 0x2000

.field public static final AV_ROUND_UP:I = 0x3

.field public static final AV_ROUND_ZERO:I = 0x0

.field public static final AV_SAMPLE_FMT_DBL:I = 0x4

.field public static final AV_SAMPLE_FMT_DBLP:I = 0x9

.field public static final AV_SAMPLE_FMT_FLT:I = 0x3

.field public static final AV_SAMPLE_FMT_FLTP:I = 0x8

.field public static final AV_SAMPLE_FMT_NB:I = 0xa

.field public static final AV_SAMPLE_FMT_NONE:I = -0x1

.field public static final AV_SAMPLE_FMT_S16:I = 0x1

.field public static final AV_SAMPLE_FMT_S16P:I = 0x6

.field public static final AV_SAMPLE_FMT_S32:I = 0x2

.field public static final AV_SAMPLE_FMT_S32P:I = 0x7

.field public static final AV_SAMPLE_FMT_U8:I = 0x0

.field public static final AV_SAMPLE_FMT_U8P:I = 0x5

.field public static final AV_TIME_BASE:I = 0xf4240

.field public static final FF_LAMBDA_MAX:I = 0x7fff

.field public static final FF_LAMBDA_SCALE:I = 0x80

.field public static final FF_LAMBDA_SHIFT:I = 0x7

.field public static final FF_OPT_TYPE_BINARY:I = 0x7

.field public static final FF_OPT_TYPE_CONST:I = 0x80

.field public static final FF_OPT_TYPE_DOUBLE:I = 0x3

.field public static final FF_OPT_TYPE_FLAGS:I = 0x0

.field public static final FF_OPT_TYPE_FLOAT:I = 0x4

.field public static final FF_OPT_TYPE_INT:I = 0x1

.field public static final FF_OPT_TYPE_INT64:I = 0x2

.field public static final FF_OPT_TYPE_RATIONAL:I = 0x6

.field public static final FF_OPT_TYPE_STRING:I = 0x5

.field public static final FF_QP2LAMBDA:I = 0x76

.field public static final FF_QUALITY_SCALE:I = 0x80

#the value of this static final field might be set in the static constructor
.field public static final INFINITY:I = 0x0

.field public static final M_E:D = 2.718281828459045

.field public static final M_LN10:D = 2.302585092994046

.field public static final M_LN2:D = 0.6931471805599453

.field public static final M_LOG2_10:D = 3.321928094887362

.field public static final M_PHI:D = 1.618033988749895

.field public static final M_PI:D = 3.141592653589793

.field public static final M_SQRT1_2:D = 0.7071067811865476

.field public static final M_SQRT2:D = 1.4142135623730951

#the value of this static final field might be set in the static constructor
.field public static final NAN:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PIX_FMT_0BGR32:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PIX_FMT_0RGB32:I = 0x0

.field public static final PIX_FMT_ALPHA:I = 0x80

.field public static final PIX_FMT_BE:I = 0x1

#the value of this static final field might be set in the static constructor
.field public static final PIX_FMT_BGR32:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PIX_FMT_BGR32_1:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PIX_FMT_BGR444:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PIX_FMT_BGR48:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PIX_FMT_BGR555:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PIX_FMT_BGR565:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PIX_FMT_BGRA64:I = 0x0

.field public static final PIX_FMT_BITSTREAM:I = 0x4

.field public static final PIX_FMT_GBR24P:I = 0x52

#the value of this static final field might be set in the static constructor
.field public static final PIX_FMT_GBRP10:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PIX_FMT_GBRP12:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PIX_FMT_GBRP14:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PIX_FMT_GBRP16:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PIX_FMT_GBRP9:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PIX_FMT_GRAY16:I = 0x0

.field public static final PIX_FMT_HWACCEL:I = 0x8

.field public static final PIX_FMT_PAL:I = 0x2

.field public static final PIX_FMT_PLANAR:I = 0x10

.field public static final PIX_FMT_PSEUDOPAL:I = 0x40

.field public static final PIX_FMT_RGB:I = 0x20

#the value of this static final field might be set in the static constructor
.field public static final PIX_FMT_RGB32:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PIX_FMT_RGB32_1:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PIX_FMT_RGB444:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PIX_FMT_RGB48:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PIX_FMT_RGB555:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PIX_FMT_RGB565:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PIX_FMT_RGBA64:I = 0x0

.field public static final PIX_FMT_Y400A:I = 0x42

.field public static final PIX_FMT_YUV420P10:I

.field public static final PIX_FMT_YUV420P12:I

.field public static final PIX_FMT_YUV420P14:I

.field public static final PIX_FMT_YUV420P16:I

.field public static final PIX_FMT_YUV420P9:I

.field public static final PIX_FMT_YUV422P10:I

.field public static final PIX_FMT_YUV422P12:I

.field public static final PIX_FMT_YUV422P14:I

.field public static final PIX_FMT_YUV422P16:I

.field public static final PIX_FMT_YUV422P9:I

.field public static final PIX_FMT_YUV444P10:I

.field public static final PIX_FMT_YUV444P12:I

.field public static final PIX_FMT_YUV444P14:I

.field public static final PIX_FMT_YUV444P16:I

.field public static final PIX_FMT_YUV444P9:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_NOPTS_VALUE()J

    move-result-wide v0

    sput-wide v0, Lcom/googlecode/javacv/cpp/avutil;->AV_NOPTS_VALUE:J

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_BSF_NOT_FOUND()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_BSF_NOT_FOUND:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_BUG()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_BUG:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_BUFFER_TOO_SMALL()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_BUFFER_TOO_SMALL:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_DECODER_NOT_FOUND()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_DECODER_NOT_FOUND:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_DEMUXER_NOT_FOUND()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_DEMUXER_NOT_FOUND:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_ENCODER_NOT_FOUND()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_ENCODER_NOT_FOUND:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_EOF()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_EOF:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_EXIT()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_EXIT:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_EXTERNAL()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_EXTERNAL:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_FILTER_NOT_FOUND()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_FILTER_NOT_FOUND:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_INVALIDDATA()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_INVALIDDATA:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_MUXER_NOT_FOUND()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_MUXER_NOT_FOUND:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_OPTION_NOT_FOUND()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_OPTION_NOT_FOUND:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_PATCHWELCOME()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_PATCHWELCOME:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_PROTOCOL_NOT_FOUND()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_PROTOCOL_NOT_FOUND:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_STREAM_NOT_FOUND()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_STREAM_NOT_FOUND:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_BUG2()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_BUG2:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_UNKNOWN()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AVERROR_UNKNOWN:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->NAN()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->NAN:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->INFINITY()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->INFINITY:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGB32()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGB32:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGB32_1()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGB32_1:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGR32()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGR32:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGR32_1()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGR32_1:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_0RGB32()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_0RGB32:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_0BGR32()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_0BGR32:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_GRAY16()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_GRAY16:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGB48()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGB48:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGB565()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGB565:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGB555()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGB555:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGB444()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGB444:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGR48()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGR48:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGR565()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGR565:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGR555()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGR555:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGR444()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGR444:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV420P9()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV420P9:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV422P9()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV422P9:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV444P9()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV444P9:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV420P10()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV420P10:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV422P10()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV422P10:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV444P10()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV444P10:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV420P12()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV420P12:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV422P12()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV422P12:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV444P12()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV444P12:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV420P14()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV420P14:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV422P14()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV422P14:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV444P14()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV444P14:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV420P16()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV420P16:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV422P16()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV422P16:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV444P16()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV444P16:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGBA64()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGBA64:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGRA64()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGRA64:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_GBRP9()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_GBRP9:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_GBRP10()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_GBRP10:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_GBRP12()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_GBRP12:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_GBRP14()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_GBRP14:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_GBRP16()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_GBRP16:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUVA420P9()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUVA420P9:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUVA422P9()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUVA422P9:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUVA444P9()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUVA444P9:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUVA420P10()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUVA420P10:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUVA422P10()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUVA422P10:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUVA444P10()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUVA444P10:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUVA420P16()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUVA420P16:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUVA422P16()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUVA422P16:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUVA444P16()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUVA444P16:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_XYZ12()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_XYZ12:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGB32:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_RGB32:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGB32_1:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_RGB32_1:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGR32:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_BGR32:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGR32_1:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_BGR32_1:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_0RGB32:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_0RGB32:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_0BGR32:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_0BGR32:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_GRAY16:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_GRAY16:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGB48:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_RGB48:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGB565:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_RGB565:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGB555:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_RGB555:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGB444:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_RGB444:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGR48:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_BGR48:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGR565:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_BGR565:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGR555:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_BGR555:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGR444:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_BGR444:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV420P9:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_YUV420P9:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV422P9:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_YUV422P9:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV444P9:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_YUV444P9:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV420P10:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_YUV420P10:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV422P10:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_YUV422P10:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV444P10:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_YUV444P10:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV420P12:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_YUV420P12:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV422P12:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_YUV422P12:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV444P12:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_YUV444P12:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV420P14:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_YUV420P14:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV422P14:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_YUV422P14:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV444P14:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_YUV444P14:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV420P16:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_YUV420P16:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV422P16:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_YUV422P16:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_YUV444P16:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_YUV444P16:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGBA64:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_RGBA64:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_BGRA64:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_BGRA64:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_GBRP9:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_GBRP9:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_GBRP10:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_GBRP10:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_GBRP12:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_GBRP12:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_GBRP14:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_GBRP14:I

    sget v0, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_GBRP16:I

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->PIX_FMT_GBRP16:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_OPT_TYPE_IMAGE_SIZE()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_OPT_TYPE_IMAGE_SIZE:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_OPT_TYPE_PIXEL_FMT()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_OPT_TYPE_PIXEL_FMT:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_OPT_TYPE_SAMPLE_FMT()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_OPT_TYPE_SAMPLE_FMT:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_OPT_TYPE_VIDEO_RATE()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_OPT_TYPE_VIDEO_RATE:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_OPT_TYPE_DURATION()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_OPT_TYPE_DURATION:I

    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_OPT_TYPE_COLOR()I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avutil;->AV_OPT_TYPE_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native AVERROR_BSF_NOT_FOUND()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AVERROR_BUFFER_TOO_SMALL()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AVERROR_BUG()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AVERROR_BUG2()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AVERROR_DECODER_NOT_FOUND()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AVERROR_DEMUXER_NOT_FOUND()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AVERROR_ENCODER_NOT_FOUND()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AVERROR_EOF()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AVERROR_EXIT()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AVERROR_EXTERNAL()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AVERROR_FILTER_NOT_FOUND()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AVERROR_INVALIDDATA()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AVERROR_MUXER_NOT_FOUND()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AVERROR_OPTION_NOT_FOUND()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AVERROR_PATCHWELCOME()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AVERROR_PROTOCOL_NOT_FOUND()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AVERROR_STREAM_NOT_FOUND()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AVERROR_UNKNOWN()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_NOPTS_VALUE()J
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_OPT_TYPE_COLOR()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_OPT_TYPE_DURATION()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_OPT_TYPE_IMAGE_SIZE()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_OPT_TYPE_PIXEL_FMT()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_OPT_TYPE_SAMPLE_FMT()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_OPT_TYPE_VIDEO_RATE()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_0BGR32()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_0RGB32()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_BGR32()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_BGR32_1()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_BGR444()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_BGR48()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_BGR555()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_BGR565()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_BGRA64()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_GBRP10()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_GBRP12()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_GBRP14()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_GBRP16()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_GBRP9()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_GRAY16()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_RGB32()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_RGB32_1()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_RGB444()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_RGB48()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_RGB555()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_RGB565()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_RGBA64()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_XYZ12()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_YUV420P10()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_YUV420P12()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_YUV420P14()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_YUV420P16()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_YUV420P9()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_YUV422P10()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_YUV422P12()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_YUV422P14()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_YUV422P16()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_YUV422P9()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_YUV444P10()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_YUV444P12()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_YUV444P14()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_YUV444P16()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_YUV444P9()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_YUVA420P10()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_YUVA420P16()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_YUVA420P9()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_YUVA422P10()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_YUVA422P16()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_YUVA422P9()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_YUVA444P10()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_YUVA444P16()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native AV_PIX_FMT_YUVA444P9()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native INFINITY()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native NAN()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native av_add_q(Lcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native av_bprint_channel_layout(Lcom/googlecode/javacv/cpp/avutil$AVBPrint;IJ)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_buffer_alloc(I)Lcom/googlecode/javacv/cpp/avutil$AVBufferRef;
.end method

.method public static native av_buffer_allocz(I)Lcom/googlecode/javacv/cpp/avutil$AVBufferRef;
.end method

.method public static native av_buffer_create(Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacv/cpp/avutil$Free_Pointer_BytePointer;Lcom/googlecode/javacpp/Pointer;I)Lcom/googlecode/javacv/cpp/avutil$AVBufferRef;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
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
.end method

.method public static native av_buffer_create(Ljava/nio/ByteBuffer;ILcom/googlecode/javacv/cpp/avutil$Free_Pointer_ByteBuffer;Lcom/googlecode/javacpp/Pointer;I)Lcom/googlecode/javacv/cpp/avutil$AVBufferRef;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
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
.end method

.method public static native av_buffer_create([BILcom/googlecode/javacv/cpp/avutil$Free_Pointer_byte;Lcom/googlecode/javacpp/Pointer;I)Lcom/googlecode/javacv/cpp/avutil$AVBufferRef;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
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
.end method

.method public static native av_buffer_default_free(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_buffer_default_free(Lcom/googlecode/javacpp/Pointer;Ljava/nio/ByteBuffer;)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_buffer_default_free(Lcom/googlecode/javacpp/Pointer;[B)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_buffer_get_opaque(Lcom/googlecode/javacv/cpp/avutil$AVBufferRef;)Lcom/googlecode/javacpp/Pointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_buffer_get_ref_count(Lcom/googlecode/javacv/cpp/avutil$AVBufferRef;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_buffer_is_writable(Lcom/googlecode/javacv/cpp/avutil$AVBufferRef;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_buffer_make_writable(Lcom/googlecode/javacpp/PointerPointer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVBufferRef**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_buffer_make_writable(Lcom/googlecode/javacv/cpp/avutil$AVBufferRef;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native av_buffer_pool_get(Lcom/googlecode/javacv/cpp/avutil$AVBufferPool;)Lcom/googlecode/javacv/cpp/avutil$AVBufferRef;
.end method

.method public static native av_buffer_pool_init(ILcom/googlecode/javacv/cpp/avutil$Alloc_int;)Lcom/googlecode/javacv/cpp/avutil$AVBufferPool;
.end method

.method public static native av_buffer_pool_uninit(Lcom/googlecode/javacpp/PointerPointer;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVBufferPool**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_buffer_pool_uninit(Lcom/googlecode/javacv/cpp/avutil$AVBufferPool;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native av_buffer_realloc(Lcom/googlecode/javacpp/PointerPointer;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVBufferRef**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_buffer_realloc(Lcom/googlecode/javacv/cpp/avutil$AVBufferRef;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_buffer_ref(Lcom/googlecode/javacv/cpp/avutil$AVBufferRef;)Lcom/googlecode/javacv/cpp/avutil$AVBufferRef;
.end method

.method public static native av_buffer_unref(Lcom/googlecode/javacpp/PointerPointer;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVBufferRef**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_buffer_unref(Lcom/googlecode/javacv/cpp/avutil$AVBufferRef;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native av_calloc(JJ)Lcom/googlecode/javacpp/Pointer;
.end method

.method public static native av_channel_layout_extract_channel(JI)J
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint64_t"
        }
    .end annotation
.end method

.method public static native av_cmp_q(Lcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native av_compare_mod(JJJ)J
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_compare_ts(JLcom/googlecode/javacv/cpp/avutil$AVRational;JLcom/googlecode/javacv/cpp/avutil$AVRational;)I
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

.method public static native av_cpu_count()I
.end method

.method public static native av_d2q(DI)Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native av_default_get_category(Lcom/googlecode/javacpp/Pointer;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVClassCategory"
        }
    .end annotation
.end method

.method public static native av_default_item_name(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation
.end method

.method public static native av_dict_copy(Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVDictionary**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_dict_copy(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_dict_count(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_dict_free(Lcom/googlecode/javacpp/PointerPointer;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVDictionary**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_dict_free(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native av_dict_get(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacv/cpp/avutil$AVDictionaryEntry;I)Lcom/googlecode/javacv/cpp/avutil$AVDictionaryEntry;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_dict_get(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Ljava/lang/String;Lcom/googlecode/javacv/cpp/avutil$AVDictionaryEntry;I)Lcom/googlecode/javacv/cpp/avutil$AVDictionaryEntry;
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_dict_parse_string(Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVDictionary**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_dict_parse_string(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_dict_parse_string(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
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
    .end parameter
.end method

.method public static native av_dict_set(Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVDictionary**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_dict_set(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_dict_set(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Ljava/lang/String;Ljava/lang/String;I)I
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
.end method

.method public static native av_div_q(Lcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native av_dynarray2_add(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/IntPointer;JLcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacpp/Pointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "void**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_dynarray2_add(Lcom/googlecode/javacpp/Pointer;Ljava/nio/IntBuffer;JLjava/nio/ByteBuffer;)Lcom/googlecode/javacpp/Pointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "void**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_dynarray2_add(Lcom/googlecode/javacpp/Pointer;[IJ[B)Lcom/googlecode/javacpp/Pointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "void**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_dynarray2_add(Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;JLcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacpp/Pointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "void**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_dynarray_add(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/Pointer;)V
.end method

.method public static native av_dynarray_add(Lcom/googlecode/javacpp/Pointer;Ljava/nio/IntBuffer;Lcom/googlecode/javacpp/Pointer;)V
.end method

.method public static native av_dynarray_add(Lcom/googlecode/javacpp/Pointer;[ILcom/googlecode/javacpp/Pointer;)V
.end method

.method public static native av_find_nearest_q_idx(Lcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_find_opt(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;II)Lcom/googlecode/javacv/cpp/avutil$AVOption;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_find_opt(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Ljava/lang/String;II)Lcom/googlecode/javacv/cpp/avutil$AVOption;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_force_cpu_flags(I)V
.end method

.method public static native av_frame_alloc()Lcom/googlecode/javacv/cpp/avutil$AVFrame;
.end method

.method public static native av_frame_clone(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)Lcom/googlecode/javacv/cpp/avutil$AVFrame;
.end method

.method public static native av_frame_copy_props(Lcom/googlecode/javacv/cpp/avutil$AVFrame;Lcom/googlecode/javacv/cpp/avutil$AVFrame;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_frame_free(Lcom/googlecode/javacpp/PointerPointer;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVFrame**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_frame_free(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native av_frame_get_best_effort_timestamp(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)J
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_frame_get_buffer(Lcom/googlecode/javacv/cpp/avutil$AVFrame;I)I
.end method

.method public static native av_frame_get_channel_layout(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)J
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_frame_get_channels(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_frame_get_decode_error_flags(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_frame_get_metadata(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)Lcom/googlecode/javacv/cpp/avutil$AVDictionary;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_frame_get_pkt_duration(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)J
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_frame_get_pkt_pos(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)J
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_frame_get_pkt_size(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_frame_get_plane_buffer(Lcom/googlecode/javacv/cpp/avutil$AVFrame;I)Lcom/googlecode/javacv/cpp/avutil$AVBufferRef;
.end method

.method public static native av_frame_get_qp_table(Lcom/googlecode/javacv/cpp/avutil$AVFrame;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacpp/BytePointer;
.end method

.method public static native av_frame_get_qp_table(Lcom/googlecode/javacv/cpp/avutil$AVFrame;Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)Ljava/nio/ByteBuffer;
.end method

.method public static native av_frame_get_qp_table(Lcom/googlecode/javacv/cpp/avutil$AVFrame;[I[I)[B
.end method

.method public static native av_frame_get_sample_rate(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_frame_get_side_data(Lcom/googlecode/javacv/cpp/avutil$AVFrame;I)Lcom/googlecode/javacv/cpp/avutil$AVFrameSideData;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVFrameSideDataType"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_frame_is_writable(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)I
.end method

.method public static native av_frame_make_writable(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)I
.end method

.method public static native av_frame_move_ref(Lcom/googlecode/javacv/cpp/avutil$AVFrame;Lcom/googlecode/javacv/cpp/avutil$AVFrame;)V
.end method

.method public static native av_frame_new_side_data(Lcom/googlecode/javacv/cpp/avutil$AVFrame;II)Lcom/googlecode/javacv/cpp/avutil$AVFrameSideData;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVFrameSideDataType"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_frame_ref(Lcom/googlecode/javacv/cpp/avutil$AVFrame;Lcom/googlecode/javacv/cpp/avutil$AVFrame;)I
.end method

.method public static native av_frame_set_best_effort_timestamp(Lcom/googlecode/javacv/cpp/avutil$AVFrame;J)V
.end method

.method public static native av_frame_set_channel_layout(Lcom/googlecode/javacv/cpp/avutil$AVFrame;J)V
.end method

.method public static native av_frame_set_channels(Lcom/googlecode/javacv/cpp/avutil$AVFrame;I)V
.end method

.method public static native av_frame_set_decode_error_flags(Lcom/googlecode/javacv/cpp/avutil$AVFrame;I)V
.end method

.method public static native av_frame_set_metadata(Lcom/googlecode/javacv/cpp/avutil$AVFrame;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)V
.end method

.method public static native av_frame_set_pkt_duration(Lcom/googlecode/javacv/cpp/avutil$AVFrame;J)V
.end method

.method public static native av_frame_set_pkt_pos(Lcom/googlecode/javacv/cpp/avutil$AVFrame;J)V
.end method

.method public static native av_frame_set_pkt_size(Lcom/googlecode/javacv/cpp/avutil$AVFrame;I)V
.end method

.method public static native av_frame_set_qp_table(Lcom/googlecode/javacv/cpp/avutil$AVFrame;Lcom/googlecode/javacv/cpp/avutil$AVBufferRef;II)I
.end method

.method public static native av_frame_set_sample_rate(Lcom/googlecode/javacv/cpp/avutil$AVFrame;I)V
.end method

.method public static native av_frame_unref(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)V
.end method

.method public static native av_free(Lcom/googlecode/javacpp/Pointer;)V
.end method

.method public static native av_freep(Lcom/googlecode/javacpp/Pointer;)V
.end method

.method public static native av_gcd(JJ)J
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native av_get_alt_sample_fmt(II)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVSampleFormat"
        }
    .end annotation
.end method

.method public static native av_get_bits_per_pixel(Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_get_bits_per_sample_fmt(I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_get_bytes_per_sample(I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_get_channel_description(J)Lcom/googlecode/javacpp/BytePointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation
.end method

.method public static native av_get_channel_layout(Lcom/googlecode/javacpp/BytePointer;)J
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint64_t"
        }
    .end annotation
.end method

.method public static native av_get_channel_layout(Ljava/lang/String;)J
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint64_t"
        }
    .end annotation
.end method

.method public static native av_get_channel_layout_channel_index(JJ)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_get_channel_layout_nb_channels(J)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_get_channel_layout_string(Lcom/googlecode/javacpp/BytePointer;IIJ)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_get_channel_layout_string(Ljava/nio/ByteBuffer;IIJ)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_get_channel_layout_string([BIIJ)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_get_channel_name(J)Lcom/googlecode/javacpp/BytePointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation
.end method

.method public static native av_get_cpu_flags()I
.end method

.method public static native av_get_default_channel_layout(I)J
.end method

.method public static native av_get_double(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/PointerPointer;)D
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const AVOption**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_get_double(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;)D
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_get_double(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Lcom/googlecode/javacv/cpp/avutil$AVOption;)D
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_get_int(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/PointerPointer;)J
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const AVOption**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_get_int(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;)J
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_get_int(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Lcom/googlecode/javacv/cpp/avutil$AVOption;)J
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_get_media_type_string(I)Lcom/googlecode/javacpp/BytePointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVMediaType"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation
.end method

.method public static native av_get_packed_sample_fmt(I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVSampleFormat"
        }
    .end annotation
.end method

.method public static native av_get_padded_bits_per_pixel(Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_get_picture_type_char(I)B
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPictureType"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char"
        }
    .end annotation
.end method

.method public static native av_get_pix_fmt(Lcom/googlecode/javacpp/BytePointer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVPixelFormat"
        }
    .end annotation
.end method

.method public static native av_get_pix_fmt(Ljava/lang/String;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVPixelFormat"
        }
    .end annotation
.end method

.method public static native av_get_pix_fmt_name(I)Lcom/googlecode/javacpp/BytePointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation
.end method

.method public static native av_get_pix_fmt_string(Lcom/googlecode/javacpp/BytePointer;II)Lcom/googlecode/javacpp/BytePointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public static native av_get_pix_fmt_string(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public static native av_get_pix_fmt_string([BII)[B
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public static native av_get_planar_sample_fmt(I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVSampleFormat"
        }
    .end annotation
.end method

.method public static native av_get_q(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/PointerPointer;)Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const AVOption**"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native av_get_q(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;)Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native av_get_q(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Lcom/googlecode/javacv/cpp/avutil$AVOption;)Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native av_get_sample_fmt(Lcom/googlecode/javacpp/BytePointer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVSampleFormat"
        }
    .end annotation
.end method

.method public static native av_get_sample_fmt(Ljava/lang/String;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVSampleFormat"
        }
    .end annotation
.end method

.method public static native av_get_sample_fmt_name(I)Lcom/googlecode/javacpp/BytePointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation
.end method

.method public static native av_get_sample_fmt_string(Lcom/googlecode/javacpp/BytePointer;II)Lcom/googlecode/javacpp/BytePointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public static native av_get_sample_fmt_string(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public static native av_get_sample_fmt_string([BII)[B
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public static native av_get_standard_channel_layout(ILcom/googlecode/javacpp/LongPointer;Lcom/googlecode/javacpp/BytePointer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_get_standard_channel_layout(ILcom/googlecode/javacpp/LongPointer;Lcom/googlecode/javacpp/PointerPointer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_get_standard_channel_layout(ILjava/nio/LongBuffer;Ljava/nio/ByteBuffer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_get_standard_channel_layout(I[J[B)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_get_string(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/BytePointer;I)Lcom/googlecode/javacpp/BytePointer;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const AVOption**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_get_string(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Lcom/googlecode/javacpp/BytePointer;I)Lcom/googlecode/javacpp/BytePointer;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_get_string(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Ljava/nio/ByteBuffer;I)Lcom/googlecode/javacpp/BytePointer;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_get_string(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;[BI)Lcom/googlecode/javacpp/BytePointer;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_get_string(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Lcom/googlecode/javacv/cpp/avutil$AVOption;Lcom/googlecode/javacpp/BytePointer;I)Ljava/lang/String;
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_get_string(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Lcom/googlecode/javacv/cpp/avutil$AVOption;Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_get_string(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Lcom/googlecode/javacv/cpp/avutil$AVOption;[BI)Ljava/lang/String;
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_image_alloc(Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/IntPointer;IIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
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
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_alloc(Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;IIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
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
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_alloc(Ljava/nio/ByteBuffer;Ljava/nio/IntBuffer;IIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
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
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_alloc([B[IIIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
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
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_check_size(IIILcom/googlecode/javacpp/Pointer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_copy(Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/IntPointer;III)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_copy(Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;III)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_copy(Ljava/nio/ByteBuffer;Ljava/nio/IntBuffer;Ljava/nio/ByteBuffer;Ljava/nio/IntBuffer;III)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_copy([B[I[B[IIII)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_copy_plane(Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/BytePointer;III)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_copy_plane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_copy_plane([BI[BIII)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_copy_to_buffer(Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/IntPointer;IIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t*const*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_copy_to_buffer(Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;IIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t*const*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_copy_to_buffer(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;Ljava/nio/IntBuffer;IIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t*const*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_copy_to_buffer([BI[B[IIIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t*const*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_fill_arrays(Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/BytePointer;IIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_fill_arrays(Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/BytePointer;IIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_fill_arrays(Ljava/nio/ByteBuffer;Ljava/nio/IntBuffer;Ljava/nio/ByteBuffer;IIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_fill_arrays([B[I[BIIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_fill_linesizes(Lcom/googlecode/javacpp/IntPointer;II)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_fill_linesizes(Ljava/nio/IntBuffer;II)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_fill_linesizes([III)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_fill_max_pixsteps(Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_image_fill_max_pixsteps(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_image_fill_max_pixsteps([I[ILcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_image_fill_pointers(Lcom/googlecode/javacpp/BytePointer;IILcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/IntPointer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_image_fill_pointers(Lcom/googlecode/javacpp/PointerPointer;IILcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/IntPointer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_image_fill_pointers(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;Ljava/nio/IntBuffer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_image_fill_pointers([BII[B[I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_image_get_buffer_size(IIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_image_get_linesize(III)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_int_list_length_for_size(ILcom/googlecode/javacpp/Pointer;J)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public static native av_inv_q(Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native av_log(Lcom/googlecode/javacpp/Pointer;ILcom/googlecode/javacpp/BytePointer;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_log(Lcom/googlecode/javacpp/Pointer;ILjava/lang/String;)V
.end method

.method public static native av_log_default_callback(Lcom/googlecode/javacpp/Pointer;ILcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/Pointer;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "va_list*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_log_default_callback(Lcom/googlecode/javacpp/Pointer;ILjava/lang/String;Lcom/googlecode/javacpp/Pointer;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "va_list*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_log_format_line(Lcom/googlecode/javacpp/Pointer;ILcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/IntPointer;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "va_list*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_log_format_line(Lcom/googlecode/javacpp/Pointer;ILcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/Pointer;Ljava/nio/ByteBuffer;ILjava/nio/IntBuffer;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "va_list*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_log_format_line(Lcom/googlecode/javacpp/Pointer;ILcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/Pointer;[BI[I)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "va_list*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_log_format_line(Lcom/googlecode/javacpp/Pointer;ILjava/lang/String;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/IntPointer;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "va_list*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_log_format_line(Lcom/googlecode/javacpp/Pointer;ILjava/lang/String;Lcom/googlecode/javacpp/Pointer;Ljava/nio/ByteBuffer;ILjava/nio/IntBuffer;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "va_list*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_log_format_line(Lcom/googlecode/javacpp/Pointer;ILjava/lang/String;Lcom/googlecode/javacpp/Pointer;[BI[I)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "va_list*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_log_get_level()I
.end method

.method public static native av_log_set_callback(Lcom/googlecode/javacv/cpp/avutil$Arg0_Pointer_int_BytePointer_Pointer;)V
.end method

.method public static native av_log_set_callback(Lcom/googlecode/javacv/cpp/avutil$Arg0_Pointer_int_String_Pointer;)V
.end method

.method public static native av_log_set_flags(I)V
.end method

.method public static native av_log_set_level(I)V
.end method

.method public static native av_make_error_string(Lcom/googlecode/javacpp/BytePointer;JI)Lcom/googlecode/javacpp/BytePointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public static native av_make_error_string(Ljava/nio/ByteBuffer;JI)Ljava/nio/ByteBuffer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public static native av_make_error_string([BJI)[B
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public static native av_malloc(J)Lcom/googlecode/javacpp/Pointer;
.end method

.method public static native av_malloc_array(JJ)Lcom/googlecode/javacpp/Pointer;
.end method

.method public static native av_mallocz(J)Lcom/googlecode/javacpp/Pointer;
.end method

.method public static native av_mallocz_array(JJ)Lcom/googlecode/javacpp/Pointer;
.end method

.method public static native av_max_alloc(J)V
.end method

.method public static native av_memcpy_backptr(Lcom/googlecode/javacpp/BytePointer;II)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_memcpy_backptr(Ljava/nio/ByteBuffer;II)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_memcpy_backptr([BII)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_memdup(Lcom/googlecode/javacpp/Pointer;J)Lcom/googlecode/javacpp/Pointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_mul_q(Lcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native av_nearer_q(Lcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)I
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

.method public static native av_next_option(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;)Lcom/googlecode/javacv/cpp/avutil$AVOption;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_opt_child_class_next(Lcom/googlecode/javacv/cpp/avutil$AVClass;Lcom/googlecode/javacv/cpp/avutil$AVClass;)Lcom/googlecode/javacv/cpp/avutil$AVClass;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native av_opt_child_next(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/Pointer;
.end method

.method public static native av_opt_eval_double(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/DoublePointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_double(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Lcom/googlecode/javacpp/BytePointer;Ljava/nio/DoubleBuffer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_double(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Lcom/googlecode/javacpp/BytePointer;[D)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_double(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Ljava/lang/String;Lcom/googlecode/javacpp/DoublePointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_double(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Ljava/lang/String;Ljava/nio/DoubleBuffer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_double(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Ljava/lang/String;[D)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_flags(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/IntPointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_flags(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Lcom/googlecode/javacpp/BytePointer;Ljava/nio/IntBuffer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_flags(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Lcom/googlecode/javacpp/BytePointer;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_flags(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Ljava/lang/String;Lcom/googlecode/javacpp/IntPointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_flags(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Ljava/lang/String;Ljava/nio/IntBuffer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_flags(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Ljava/lang/String;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_float(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/FloatPointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_float(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Lcom/googlecode/javacpp/BytePointer;Ljava/nio/FloatBuffer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_float(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Lcom/googlecode/javacpp/BytePointer;[F)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_float(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Ljava/lang/String;Lcom/googlecode/javacpp/FloatPointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_float(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Ljava/lang/String;Ljava/nio/FloatBuffer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_float(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Ljava/lang/String;[F)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_int(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/IntPointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_int(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Lcom/googlecode/javacpp/BytePointer;Ljava/nio/IntBuffer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_int(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Lcom/googlecode/javacpp/BytePointer;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_int(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Ljava/lang/String;Lcom/googlecode/javacpp/IntPointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_int(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Ljava/lang/String;Ljava/nio/IntBuffer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_int(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Ljava/lang/String;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_int64(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/LongPointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_int64(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Lcom/googlecode/javacpp/BytePointer;Ljava/nio/LongBuffer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_int64(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Lcom/googlecode/javacpp/BytePointer;[J)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_int64(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Ljava/lang/String;Lcom/googlecode/javacpp/LongPointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_int64(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Ljava/lang/String;Ljava/nio/LongBuffer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_int64(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Ljava/lang/String;[J)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_q(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacv/cpp/avutil$AVRational;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_eval_q(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;Ljava/lang/String;Lcom/googlecode/javacv/cpp/avutil$AVRational;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_find(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;II)Lcom/googlecode/javacv/cpp/avutil$AVOption;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native av_opt_find(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Ljava/lang/String;II)Lcom/googlecode/javacv/cpp/avutil$AVOption;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native av_opt_find2(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;IILcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/avutil$AVOption;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "void**"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native av_opt_find2(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;IILcom/googlecode/javacpp/PointerPointer;)Lcom/googlecode/javacv/cpp/avutil$AVOption;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "void**"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native av_opt_find2(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Ljava/lang/String;IILcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/avutil$AVOption;
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "void**"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native av_opt_flag_is_set(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_flag_is_set(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native av_opt_free(Lcom/googlecode/javacpp/Pointer;)V
.end method

.method public static native av_opt_freep_ranges(Lcom/googlecode/javacpp/PointerPointer;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVOptionRanges**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_freep_ranges(Lcom/googlecode/javacv/cpp/avutil$AVOptionRanges;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/BytePointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/PointerPointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;ILjava/nio/ByteBuffer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;I[B)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;ILcom/googlecode/javacpp/BytePointer;)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;ILjava/nio/ByteBuffer;)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;I[B)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get_double(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/DoublePointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_get_double(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;ILjava/nio/DoubleBuffer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_get_double(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;I[D)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_get_double(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;ILcom/googlecode/javacpp/DoublePointer;)I
.end method

.method public static native av_opt_get_double(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;ILjava/nio/DoubleBuffer;)I
.end method

.method public static native av_opt_get_double(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;I[D)I
.end method

.method public static native av_opt_get_image_size(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/IntPointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_get_image_size(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;ILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_get_image_size(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;I[I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_get_image_size(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;ILcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/IntPointer;)I
.end method

.method public static native av_opt_get_image_size(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;ILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
.end method

.method public static native av_opt_get_image_size(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;I[I[I)I
.end method

.method public static native av_opt_get_int(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/LongPointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_get_int(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;ILjava/nio/LongBuffer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_get_int(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;I[J)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_get_int(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;ILcom/googlecode/javacpp/LongPointer;)I
.end method

.method public static native av_opt_get_int(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;ILjava/nio/LongBuffer;)I
.end method

.method public static native av_opt_get_int(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;I[J)I
.end method

.method public static native av_opt_get_key_value(Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get_key_value(Lcom/googlecode/javacpp/BytePointer;Ljava/lang/String;Ljava/lang/String;ILcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get_key_value(Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/PointerPointer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get_key_value(Ljava/nio/ByteBuffer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get_key_value(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get_key_value([BLcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;I[B[B)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get_key_value([BLjava/lang/String;Ljava/lang/String;I[B[B)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get_pixel_fmt(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/IntPointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get_pixel_fmt(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;ILjava/nio/IntBuffer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get_pixel_fmt(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get_pixel_fmt(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;ILcom/googlecode/javacpp/IntPointer;)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get_pixel_fmt(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;ILjava/nio/IntBuffer;)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get_pixel_fmt(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;I[I)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get_q(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacv/cpp/avutil$AVRational;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_get_q(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;ILcom/googlecode/javacv/cpp/avutil$AVRational;)I
.end method

.method public static native av_opt_get_sample_fmt(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/IntPointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get_sample_fmt(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;ILjava/nio/IntBuffer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get_sample_fmt(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get_sample_fmt(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;ILcom/googlecode/javacpp/IntPointer;)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get_sample_fmt(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;ILjava/nio/IntBuffer;)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get_sample_fmt(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;I[I)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_get_video_rate(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacv/cpp/avutil$AVRational;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_get_video_rate(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;ILcom/googlecode/javacv/cpp/avutil$AVRational;)I
.end method

.method public static native av_opt_next(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVOption;)Lcom/googlecode/javacv/cpp/avutil$AVOption;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native av_opt_ptr(Lcom/googlecode/javacv/cpp/avutil$AVClass;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacpp/Pointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_ptr(Lcom/googlecode/javacv/cpp/avutil$AVClass;Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;)Lcom/googlecode/javacpp/Pointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_query_ranges(Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVOptionRanges**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_query_ranges(Lcom/googlecode/javacv/cpp/avutil$AVOptionRanges;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_query_ranges(Lcom/googlecode/javacv/cpp/avutil$AVOptionRanges;Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;I)I
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
.end method

.method public static native av_opt_query_ranges_default(Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVOptionRanges**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_query_ranges_default(Lcom/googlecode/javacv/cpp/avutil$AVOptionRanges;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_query_ranges_default(Lcom/googlecode/javacv/cpp/avutil$AVOptionRanges;Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;I)I
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
.end method

.method public static native av_opt_set(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_set(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native av_opt_set_bin(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;II)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_set_bin(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;Ljava/nio/ByteBuffer;II)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_set_bin(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;[BII)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_set_bin(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Lcom/googlecode/javacpp/BytePointer;II)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_set_bin(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Ljava/nio/ByteBuffer;II)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_set_bin(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;[BII)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_set_defaults(Lcom/googlecode/javacpp/Pointer;)V
.end method

.method public static native av_opt_set_defaults2(Lcom/googlecode/javacpp/Pointer;II)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_opt_set_dict(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/PointerPointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVDictionary**"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_set_dict(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native av_opt_set_double(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;DI)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_set_double(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;DI)I
.end method

.method public static native av_opt_set_from_string(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*const*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_set_from_string(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*const*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_set_from_string(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;Ljava/nio/ByteBuffer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*const*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_set_from_string(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;[BLcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*const*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_opt_set_from_string(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Lcom/googlecode/javacpp/BytePointer;Ljava/lang/String;Ljava/lang/String;)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*const*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_set_from_string(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*const*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_set_from_string(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*const*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_set_image_size(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;III)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_set_image_size(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;III)I
.end method

.method public static native av_opt_set_int(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;JI)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_set_int(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;JI)I
.end method

.method public static native av_opt_set_pixel_fmt(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;II)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_set_pixel_fmt(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;II)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_set_q(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacv/cpp/avutil$AVRational;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_set_q(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Lcom/googlecode/javacv/cpp/avutil$AVRational;I)I
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
.end method

.method public static native av_opt_set_sample_fmt(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;II)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_set_sample_fmt(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;II)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_set_video_rate(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacv/cpp/avutil$AVRational;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_opt_set_video_rate(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Lcom/googlecode/javacv/cpp/avutil$AVRational;I)I
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
.end method

.method public static native av_opt_show2(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;II)I
.end method

.method public static native av_parse_cpu_caps(Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/BytePointer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_parse_cpu_caps(Lcom/googlecode/javacpp/IntPointer;Ljava/lang/String;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_parse_cpu_caps(Ljava/nio/IntBuffer;Lcom/googlecode/javacpp/BytePointer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_parse_cpu_caps(Ljava/nio/IntBuffer;Ljava/lang/String;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_parse_cpu_caps([ILcom/googlecode/javacpp/BytePointer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_parse_cpu_caps([ILjava/lang/String;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_parse_cpu_flags(Lcom/googlecode/javacpp/BytePointer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_parse_cpu_flags(Ljava/lang/String;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_pix_fmt_count_planes(I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_pix_fmt_desc_get(I)Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native av_pix_fmt_desc_get_id(Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVPixelFormat"
        }
    .end annotation
.end method

.method public static native av_pix_fmt_desc_next(Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;)Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native av_pix_fmt_descriptors()Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native av_pix_fmt_descriptors(I)Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native av_pix_fmt_get_chroma_sub_sample(ILcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/IntPointer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_pix_fmt_get_chroma_sub_sample(ILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_pix_fmt_get_chroma_sub_sample(I[I[I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_pix_fmt_swap_endianness(I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVPixelFormat"
        }
    .end annotation
.end method

.method public static native av_q2d(Lcom/googlecode/javacv/cpp/avutil$AVRational;)D
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native av_read_image_line(Lcom/googlecode/javacpp/ShortPointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;IIIII)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint16_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
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
.end method

.method public static native av_read_image_line(Lcom/googlecode/javacpp/ShortPointer;Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;IIIII)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint16_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
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
.end method

.method public static native av_read_image_line(Ljava/nio/ShortBuffer;Ljava/nio/ByteBuffer;Ljava/nio/IntBuffer;Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;IIIII)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint16_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
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
.end method

.method public static native av_read_image_line([S[B[ILcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;IIIII)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint16_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
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
.end method

.method public static native av_realloc(Lcom/googlecode/javacpp/Pointer;J)Lcom/googlecode/javacpp/Pointer;
.end method

.method public static native av_realloc_array(Lcom/googlecode/javacpp/Pointer;JJ)Lcom/googlecode/javacpp/Pointer;
.end method

.method public static native av_realloc_f(Lcom/googlecode/javacpp/Pointer;JJ)Lcom/googlecode/javacpp/Pointer;
.end method

.method public static native av_reallocp_array(Lcom/googlecode/javacpp/Pointer;JJ)I
.end method

.method public static native av_reduce(Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/IntPointer;JJJ)I
.end method

.method public static native av_reduce(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;JJJ)I
.end method

.method public static native av_reduce([I[IJJJ)I
.end method

.method public static native av_rescale(JJJ)J
.end method

.method public static native av_rescale_delta(Lcom/googlecode/javacv/cpp/avutil$AVRational;JLcom/googlecode/javacv/cpp/avutil$AVRational;ILcom/googlecode/javacpp/LongPointer;Lcom/googlecode/javacv/cpp/avutil$AVRational;)J
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
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native av_rescale_delta(Lcom/googlecode/javacv/cpp/avutil$AVRational;JLcom/googlecode/javacv/cpp/avutil$AVRational;ILjava/nio/LongBuffer;Lcom/googlecode/javacv/cpp/avutil$AVRational;)J
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
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native av_rescale_delta(Lcom/googlecode/javacv/cpp/avutil$AVRational;JLcom/googlecode/javacv/cpp/avutil$AVRational;I[JLcom/googlecode/javacv/cpp/avutil$AVRational;)J
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
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native av_rescale_q(JLcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)J
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
.end method

.method public static native av_rescale_q_rnd(JLcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;I)J
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
                "AVRounding"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_rescale_rnd(JJJI)J
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVRounding"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_sample_fmt_is_planar(I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_samples_alloc(Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/IntPointer;IIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
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
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_samples_alloc(Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;IIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
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
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_samples_alloc(Ljava/nio/ByteBuffer;Ljava/nio/IntBuffer;IIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
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
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_samples_alloc([B[IIIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
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
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_samples_alloc_array_and_samples(Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;IIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t***"
            }
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
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_samples_alloc_array_and_samples(Lcom/googlecode/javacpp/PointerPointer;Ljava/nio/IntBuffer;IIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t***"
            }
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
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_samples_alloc_array_and_samples(Lcom/googlecode/javacpp/PointerPointer;[IIIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t***"
            }
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
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_samples_copy(Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;IIIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*const*"
            }
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_samples_copy(Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/PointerPointer;IIIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*const*"
            }
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_samples_copy(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*const*"
            }
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_samples_copy([B[BIIIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*const*"
            }
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_samples_fill_arrays(Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/BytePointer;IIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_samples_fill_arrays(Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/BytePointer;IIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_samples_fill_arrays(Ljava/nio/ByteBuffer;Ljava/nio/IntBuffer;Ljava/nio/ByteBuffer;IIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_samples_fill_arrays([B[I[BIIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_samples_get_buffer_size(Lcom/googlecode/javacpp/IntPointer;IIII)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_samples_get_buffer_size(Ljava/nio/IntBuffer;IIII)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_samples_get_buffer_size([IIIII)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_samples_set_silence(Lcom/googlecode/javacpp/BytePointer;IIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
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
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_samples_set_silence(Lcom/googlecode/javacpp/PointerPointer;IIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
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
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_samples_set_silence(Ljava/nio/ByteBuffer;IIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
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
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_samples_set_silence([BIIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
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
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_set_cpu_flags_mask(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_set_double(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;D)Lcom/googlecode/javacv/cpp/avutil$AVOption;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_set_double(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;D)Lcom/googlecode/javacv/cpp/avutil$AVOption;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_set_int(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;J)Lcom/googlecode/javacv/cpp/avutil$AVOption;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_set_int(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;J)Lcom/googlecode/javacv/cpp/avutil$AVOption;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_set_options_string(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_set_options_string(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native av_set_q(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avutil$AVOption;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_set_q(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avutil$AVOption;
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_set_string3(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/PointerPointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const AVOption**"
            }
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_set_string3(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacv/cpp/avutil$AVOption;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_set_string3(Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;Ljava/lang/String;ILcom/googlecode/javacv/cpp/avutil$AVOption;)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_size_mult(JJLcom/googlecode/javacpp/SizeTPointer;)I
.end method

.method public static native av_strdup(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacpp/BytePointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public static native av_strdup(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public static native av_strerror(ILcom/googlecode/javacpp/BytePointer;J)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_strerror(ILjava/nio/ByteBuffer;J)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_strerror(I[BJ)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_sub_q(Lcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native av_vlog(Lcom/googlecode/javacpp/Pointer;ILcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/Pointer;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "va_list*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_vlog(Lcom/googlecode/javacpp/Pointer;ILjava/lang/String;Lcom/googlecode/javacpp/Pointer;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "va_list*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_write_image_line(Lcom/googlecode/javacpp/ShortPointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;IIII)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint16_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
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
.end method

.method public static native av_write_image_line(Lcom/googlecode/javacpp/ShortPointer;Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;IIII)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint16_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
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
.end method

.method public static native av_write_image_line(Ljava/nio/ShortBuffer;Ljava/nio/ByteBuffer;Ljava/nio/IntBuffer;Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;IIII)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint16_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
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
.end method

.method public static native av_write_image_line([S[B[ILcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;IIII)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint16_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
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
.end method

.method public static native av_x_if_null(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/Pointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native avpriv_frame_get_metadatap(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)Lcom/googlecode/javacpp/PointerPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVDictionary**"
        }
    .end annotation
.end method

.method public static native avpriv_set_systematic_pal2(Lcom/googlecode/javacpp/IntPointer;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
.end method

.method public static native avpriv_set_systematic_pal2(Ljava/nio/IntBuffer;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
.end method

.method public static native avpriv_set_systematic_pal2([II)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
.end method

.method public static native avutil_configuration()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation
.end method

.method public static native avutil_license()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation
.end method

.method public static native avutil_version()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public static native ff_check_pixfmt_descriptors()V
.end method
