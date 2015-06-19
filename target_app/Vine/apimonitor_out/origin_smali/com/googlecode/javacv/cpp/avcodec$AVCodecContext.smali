.class public Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.super Lcom/googlecode/javacpp/Pointer;
.source "avcodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avcodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVCodecContext"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Execute2_AVCodecContext_Func_AVCodecContext_Pointer_int_int_Pointer_IntPointer_int;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Func_AVCodecContext_Pointer_int_int;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Execute_AVCodecContext_Func_AVCodecContext_Pointer_Pointer_IntPointer_int_int;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Func_AVCodecContext_Pointer;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Rtp_callback_AVCodecContext_Pointer_int_int;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Get_buffer2_AVCodecContext_AVFrame_int;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Reget_buffer_AVCodecContext_AVFrame;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Release_buffer_AVCodecContext_AVFrame;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Get_buffer_AVCodecContext_AVFrame;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Get_format_AVCodecContext_IntPointer;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Draw_horiz_band_AVCodecContext_AVFrame_IntPointer_int_int_int;
    }
.end annotation


# static fields
.field public static final AV_EF_AGGRESSIVE:I = 0x40000

.field public static final AV_EF_BITSTREAM:I = 0x2

.field public static final AV_EF_BUFFER:I = 0x4

.field public static final AV_EF_CAREFUL:I = 0x10000

.field public static final AV_EF_COMPLIANT:I = 0x20000

.field public static final AV_EF_CRCCHECK:I = 0x1

.field public static final AV_EF_EXPLODE:I = 0x8

.field public static final FF_ASPECT_EXTENDED:I = 0xf

.field public static final FF_BUG_AC_VLC:I = 0x0

.field public static final FF_BUG_AMV:I = 0x20

.field public static final FF_BUG_AUTODETECT:I = 0x1

.field public static final FF_BUG_DC_CLIP:I = 0x1000

.field public static final FF_BUG_DIRECT_BLOCKSIZE:I = 0x200

.field public static final FF_BUG_EDGE:I = 0x400

.field public static final FF_BUG_HPEL_CHROMA:I = 0x800

.field public static final FF_BUG_MS:I = 0x2000

.field public static final FF_BUG_NO_PADDING:I = 0x10

.field public static final FF_BUG_OLD_MSMPEG4:I = 0x2

.field public static final FF_BUG_QPEL_CHROMA:I = 0x40

.field public static final FF_BUG_QPEL_CHROMA2:I = 0x100

.field public static final FF_BUG_STD_QPEL:I = 0x80

.field public static final FF_BUG_TRUNCATED:I = 0x4000

.field public static final FF_BUG_UMP4:I = 0x8

.field public static final FF_BUG_XVID_ILACE:I = 0x4

.field public static final FF_CMP_BIT:I = 0x5

.field public static final FF_CMP_CHROMA:I = 0x100

.field public static final FF_CMP_DCT:I = 0x3

.field public static final FF_CMP_DCT264:I = 0xe

.field public static final FF_CMP_DCTMAX:I = 0xd

.field public static final FF_CMP_NSSE:I = 0xa

.field public static final FF_CMP_PSNR:I = 0x4

.field public static final FF_CMP_RD:I = 0x6

.field public static final FF_CMP_SAD:I = 0x0

.field public static final FF_CMP_SATD:I = 0x2

.field public static final FF_CMP_SSE:I = 0x1

.field public static final FF_CMP_VSAD:I = 0x8

.field public static final FF_CMP_VSSE:I = 0x9

.field public static final FF_CMP_W53:I = 0xb

.field public static final FF_CMP_W97:I = 0xc

.field public static final FF_CMP_ZERO:I = 0x7

.field public static final FF_CODER_TYPE_AC:I = 0x1

.field public static final FF_CODER_TYPE_DEFLATE:I = 0x4

.field public static final FF_CODER_TYPE_RAW:I = 0x2

.field public static final FF_CODER_TYPE_RLE:I = 0x3

.field public static final FF_CODER_TYPE_VLC:I = 0x0

.field public static final FF_COMPLIANCE_EXPERIMENTAL:I = -0x2

.field public static final FF_COMPLIANCE_NORMAL:I = 0x0

.field public static final FF_COMPLIANCE_STRICT:I = 0x1

.field public static final FF_COMPLIANCE_UNOFFICIAL:I = -0x1

.field public static final FF_COMPLIANCE_VERY_STRICT:I = 0x2

.field public static final FF_COMPRESSION_DEFAULT:I = -0x1

.field public static final FF_DCT_ALTIVEC:I = 0x5

.field public static final FF_DCT_AUTO:I = 0x0

.field public static final FF_DCT_FAAN:I = 0x6

.field public static final FF_DCT_FASTINT:I = 0x1

.field public static final FF_DCT_INT:I = 0x2

.field public static final FF_DCT_MMX:I = 0x3

.field public static final FF_DEBUG_BITSTREAM:I = 0x4

.field public static final FF_DEBUG_BUFFERS:I = 0x8000

.field public static final FF_DEBUG_BUGS:I = 0x1000

.field public static final FF_DEBUG_DCT_COEFF:I = 0x40

.field public static final FF_DEBUG_ER:I = 0x400

.field public static final FF_DEBUG_MB_TYPE:I = 0x8

.field public static final FF_DEBUG_MMCO:I = 0x800

.field public static final FF_DEBUG_MV:I = 0x20

.field public static final FF_DEBUG_PICT_INFO:I = 0x1

.field public static final FF_DEBUG_PTS:I = 0x200

.field public static final FF_DEBUG_QP:I = 0x10

.field public static final FF_DEBUG_RC:I = 0x2

.field public static final FF_DEBUG_SKIP:I = 0x80

.field public static final FF_DEBUG_STARTCODE:I = 0x100

.field public static final FF_DEBUG_THREADS:I = 0x10000

.field public static final FF_DEBUG_VIS_MB_TYPE:I = 0x4000

.field public static final FF_DEBUG_VIS_MV_B_BACK:I = 0x4

.field public static final FF_DEBUG_VIS_MV_B_FOR:I = 0x2

.field public static final FF_DEBUG_VIS_MV_P_FOR:I = 0x1

.field public static final FF_DEBUG_VIS_QP:I = 0x2000

.field public static final FF_DEFAULT_QUANT_BIAS:I = 0xf423f

.field public static final FF_DTG_AFD_14_9:I = 0xb

.field public static final FF_DTG_AFD_16_9:I = 0xa

.field public static final FF_DTG_AFD_16_9_SP_14_9:I = 0xe

.field public static final FF_DTG_AFD_4_3:I = 0x9

.field public static final FF_DTG_AFD_4_3_SP_14_9:I = 0xd

.field public static final FF_DTG_AFD_SAME:I = 0x8

.field public static final FF_DTG_AFD_SP_4_3:I = 0xf

.field public static final FF_EC_DEBLOCK:I = 0x2

.field public static final FF_EC_GUESS_MVS:I = 0x1

.field public static final FF_IDCT_ALTIVEC:I = 0x8

.field public static final FF_IDCT_ARM:I = 0x7

.field public static final FF_IDCT_AUTO:I = 0x0

.field public static final FF_IDCT_FAAN:I = 0x14

.field public static final FF_IDCT_INT:I = 0x1

.field public static final FF_IDCT_IPP:I = 0xd

.field public static final FF_IDCT_SH4:I = 0x9

.field public static final FF_IDCT_SIMPLE:I = 0x2

.field public static final FF_IDCT_SIMPLEALPHA:I = 0x17

.field public static final FF_IDCT_SIMPLEARM:I = 0xa

.field public static final FF_IDCT_SIMPLEARMV5TE:I = 0x10

.field public static final FF_IDCT_SIMPLEARMV6:I = 0x11

.field public static final FF_IDCT_SIMPLEMMX:I = 0x3

.field public static final FF_IDCT_SIMPLENEON:I = 0x16

.field public static final FF_IDCT_SIMPLEVIS:I = 0x12

.field public static final FF_IDCT_XVIDMMX:I = 0xe

.field public static final FF_LEVEL_UNKNOWN:I = -0x63

.field public static final FF_MB_DECISION_BITS:I = 0x1

.field public static final FF_MB_DECISION_RD:I = 0x2

.field public static final FF_MB_DECISION_SIMPLE:I = 0x0

.field public static final FF_PRED_LEFT:I = 0x0

.field public static final FF_PRED_MEDIAN:I = 0x2

.field public static final FF_PRED_PLANE:I = 0x1

.field public static final FF_PROFILE_AAC_ELD:I = 0x26

.field public static final FF_PROFILE_AAC_HE:I = 0x4

.field public static final FF_PROFILE_AAC_HE_V2:I = 0x1c

.field public static final FF_PROFILE_AAC_LD:I = 0x16

.field public static final FF_PROFILE_AAC_LOW:I = 0x1

.field public static final FF_PROFILE_AAC_LTP:I = 0x3

.field public static final FF_PROFILE_AAC_MAIN:I = 0x0

.field public static final FF_PROFILE_AAC_SSR:I = 0x2

.field public static final FF_PROFILE_DTS:I = 0x14

.field public static final FF_PROFILE_DTS_96_24:I = 0x28

.field public static final FF_PROFILE_DTS_ES:I = 0x1e

.field public static final FF_PROFILE_DTS_HD_HRA:I = 0x32

.field public static final FF_PROFILE_DTS_HD_MA:I = 0x3c

.field public static final FF_PROFILE_H264_BASELINE:I = 0x42

.field public static final FF_PROFILE_H264_CAVLC_444:I = 0x2c

.field public static final FF_PROFILE_H264_CONSTRAINED:I = 0x200

.field public static final FF_PROFILE_H264_CONSTRAINED_BASELINE:I = 0x242

.field public static final FF_PROFILE_H264_EXTENDED:I = 0x58

.field public static final FF_PROFILE_H264_HIGH:I = 0x64

.field public static final FF_PROFILE_H264_HIGH_10:I = 0x6e

.field public static final FF_PROFILE_H264_HIGH_10_INTRA:I = 0x86e

.field public static final FF_PROFILE_H264_HIGH_422:I = 0x7a

.field public static final FF_PROFILE_H264_HIGH_422_INTRA:I = 0x87a

.field public static final FF_PROFILE_H264_HIGH_444:I = 0x90

.field public static final FF_PROFILE_H264_HIGH_444_INTRA:I = 0x8f4

.field public static final FF_PROFILE_H264_HIGH_444_PREDICTIVE:I = 0xf4

.field public static final FF_PROFILE_H264_INTRA:I = 0x800

.field public static final FF_PROFILE_H264_MAIN:I = 0x4d

.field public static final FF_PROFILE_JPEG2000_CSTREAM_NO_RESTRICTION:I = 0x2

.field public static final FF_PROFILE_JPEG2000_CSTREAM_RESTRICTION_0:I = 0x0

.field public static final FF_PROFILE_JPEG2000_CSTREAM_RESTRICTION_1:I = 0x1

.field public static final FF_PROFILE_JPEG2000_DCINEMA_2K:I = 0x3

.field public static final FF_PROFILE_JPEG2000_DCINEMA_4K:I = 0x4

.field public static final FF_PROFILE_MPEG2_422:I = 0x0

.field public static final FF_PROFILE_MPEG2_AAC_HE:I = 0x83

.field public static final FF_PROFILE_MPEG2_AAC_LOW:I = 0x80

.field public static final FF_PROFILE_MPEG2_HIGH:I = 0x1

.field public static final FF_PROFILE_MPEG2_MAIN:I = 0x4

.field public static final FF_PROFILE_MPEG2_SIMPLE:I = 0x5

.field public static final FF_PROFILE_MPEG2_SNR_SCALABLE:I = 0x3

.field public static final FF_PROFILE_MPEG2_SS:I = 0x2

.field public static final FF_PROFILE_MPEG4_ADVANCED_CODING:I = 0xb

.field public static final FF_PROFILE_MPEG4_ADVANCED_CORE:I = 0xc

.field public static final FF_PROFILE_MPEG4_ADVANCED_REAL_TIME:I = 0x9

.field public static final FF_PROFILE_MPEG4_ADVANCED_SCALABLE_TEXTURE:I = 0xd

.field public static final FF_PROFILE_MPEG4_ADVANCED_SIMPLE:I = 0xf

.field public static final FF_PROFILE_MPEG4_BASIC_ANIMATED_TEXTURE:I = 0x7

.field public static final FF_PROFILE_MPEG4_CORE:I = 0x2

.field public static final FF_PROFILE_MPEG4_CORE_SCALABLE:I = 0xa

.field public static final FF_PROFILE_MPEG4_HYBRID:I = 0x8

.field public static final FF_PROFILE_MPEG4_MAIN:I = 0x3

.field public static final FF_PROFILE_MPEG4_N_BIT:I = 0x4

.field public static final FF_PROFILE_MPEG4_SCALABLE_TEXTURE:I = 0x5

.field public static final FF_PROFILE_MPEG4_SIMPLE:I = 0x0

.field public static final FF_PROFILE_MPEG4_SIMPLE_FACE_ANIMATION:I = 0x6

.field public static final FF_PROFILE_MPEG4_SIMPLE_SCALABLE:I = 0x1

.field public static final FF_PROFILE_MPEG4_SIMPLE_STUDIO:I = 0xe

.field public static final FF_PROFILE_RESERVED:I = -0x64

.field public static final FF_PROFILE_UNKNOWN:I = -0x63

.field public static final FF_PROFILE_VC1_ADVANCED:I = 0x3

.field public static final FF_PROFILE_VC1_COMPLEX:I = 0x2

.field public static final FF_PROFILE_VC1_MAIN:I = 0x1

.field public static final FF_PROFILE_VC1_SIMPLE:I = 0x0

.field public static final FF_RC_STRATEGY_XVID:I = 0x1

.field public static final FF_SUB_CHARENC_MODE_AUTOMATIC:I = 0x0

.field public static final FF_SUB_CHARENC_MODE_DO_NOTHING:I = -0x1

.field public static final FF_SUB_CHARENC_MODE_PRE_DECODER:I = 0x1

.field public static final FF_THREAD_FRAME:I = 0x1

.field public static final FF_THREAD_SLICE:I = 0x2

.field public static final SLICE_FLAG_ALLOW_FIELD:I = 0x2

.field public static final SLICE_FLAG_ALLOW_PLANE:I = 0x4

.field public static final SLICE_FLAG_CODED_ORDER:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native active_thread_type()I
.end method

.method public native active_thread_type(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native audio_service_type()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVAudioServiceType"
        }
    .end annotation
.end method

.method public native audio_service_type(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native av_class()Lcom/googlecode/javacv/cpp/avutil$AVClass;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native b_frame_strategy()I
.end method

.method public native b_frame_strategy(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native b_quant_factor()F
.end method

.method public native b_quant_factor(F)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native b_quant_offset()F
.end method

.method public native b_quant_offset(F)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native b_sensitivity()I
.end method

.method public native b_sensitivity(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native bidir_refine()I
.end method

.method public native bidir_refine(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native bit_rate()I
.end method

.method public native bit_rate(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native bit_rate_tolerance()I
.end method

.method public native bit_rate_tolerance(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native bits_per_coded_sample()I
.end method

.method public native bits_per_coded_sample(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native bits_per_raw_sample()I
.end method

.method public native bits_per_raw_sample(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native block_align()I
.end method

.method public native block_align(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native border_masking()F
.end method

.method public native border_masking(F)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native brd_scale()I
.end method

.method public native brd_scale(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native channel_layout()J
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint64_t"
        }
    .end annotation
.end method

.method public native channel_layout(J)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native channels()I
.end method

.method public native channels(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native chroma_sample_location()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVChromaLocation"
        }
    .end annotation
.end method

.method public native chroma_sample_location(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native chromaoffset()I
.end method

.method public native chromaoffset(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native codec()Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native codec_descriptor()Lcom/googlecode/javacv/cpp/avcodec$AVCodecDescriptor;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native codec_id()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVCodecID"
        }
    .end annotation
.end method

.method public native codec_id(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native codec_name(I)B
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char"
        }
    .end annotation
.end method

.method public native codec_name()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native codec_name(IB)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native codec_tag()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned int"
        }
    .end annotation
.end method

.method public native codec_tag(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native codec_type()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVMediaType"
        }
    .end annotation
.end method

.method public native codec_type(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native coded_frame(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native coded_frame()Lcom/googlecode/javacv/cpp/avutil$AVFrame;
.end method

.method public native coded_height()I
.end method

.method public native coded_height(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native coded_width()I
.end method

.method public native coded_width(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native coder_type()I
.end method

.method public native coder_type(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native color_primaries()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVColorPrimaries"
        }
    .end annotation
.end method

.method public native color_primaries(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native color_range()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVColorRange"
        }
    .end annotation
.end method

.method public native color_range(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native color_trc()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVColorTransferCharacteristic"
        }
    .end annotation
.end method

.method public native color_trc(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native colorspace()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVColorSpace"
        }
    .end annotation
.end method

.method public native colorspace(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native compression_level()I
.end method

.method public native compression_level(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native context_model()I
.end method

.method public native context_model(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native cutoff()I
.end method

.method public native cutoff(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native dark_masking()F
.end method

.method public native dark_masking(F)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native dct_algo()I
.end method

.method public native dct_algo(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native debug()I
.end method

.method public native debug(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native debug_mv()I
.end method

.method public native debug_mv(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native delay()I
.end method

.method public native delay(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native dia_size()I
.end method

.method public native dia_size(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native draw_horiz_band()Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Draw_horiz_band_AVCodecContext_AVFrame_IntPointer_int_int_int;
.end method

.method public native draw_horiz_band(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Draw_horiz_band_AVCodecContext_AVFrame_IntPointer_int_int_int;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native dtg_active_format()I
.end method

.method public native dtg_active_format(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native err_recognition()I
.end method

.method public native err_recognition(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native error(I)J
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint64_t"
        }
    .end annotation
.end method

.method public native error()Lcom/googlecode/javacpp/LongPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint64_t*"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native error(IJ)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native error_concealment()I
.end method

.method public native error_concealment(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native error_rate()I
.end method

.method public native error_rate(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native execute()Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Execute_AVCodecContext_Func_AVCodecContext_Pointer_Pointer_IntPointer_int_int;
.end method

.method public native execute(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Execute_AVCodecContext_Func_AVCodecContext_Pointer_Pointer_IntPointer_int_int;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native execute2()Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Execute2_AVCodecContext_Func_AVCodecContext_Pointer_int_int_Pointer_IntPointer_int;
.end method

.method public native execute2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Execute2_AVCodecContext_Func_AVCodecContext_Pointer_int_int_Pointer_IntPointer_int;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native extradata()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint8_t*"
        }
    .end annotation
.end method

.method public native extradata(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native extradata_size()I
.end method

.method public native extradata_size(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native field_order()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVFieldOrder"
        }
    .end annotation
.end method

.method public native field_order(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native flags()I
.end method

.method public native flags(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native flags2()I
.end method

.method public native flags2(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native frame_bits()I
.end method

.method public native frame_bits(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native frame_number()I
.end method

.method public native frame_number(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native frame_size()I
.end method

.method public native frame_size(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native frame_skip_cmp()I
.end method

.method public native frame_skip_cmp(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native frame_skip_exp()I
.end method

.method public native frame_skip_exp(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native frame_skip_factor()I
.end method

.method public native frame_skip_factor(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native frame_skip_threshold()I
.end method

.method public native frame_skip_threshold(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native get_buffer()Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Get_buffer_AVCodecContext_AVFrame;
.end method

.method public native get_buffer(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Get_buffer_AVCodecContext_AVFrame;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native get_buffer2()Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Get_buffer2_AVCodecContext_AVFrame_int;
.end method

.method public native get_buffer2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Get_buffer2_AVCodecContext_AVFrame_int;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native get_format()Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Get_format_AVCodecContext_IntPointer;
.end method

.method public native get_format(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Get_format_AVCodecContext_IntPointer;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native global_quality()I
.end method

.method public native global_quality(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native gop_size()I
.end method

.method public native gop_size(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native has_b_frames()I
.end method

.method public native has_b_frames(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native header_bits()I
.end method

.method public native header_bits(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native height()I
.end method

.method public native height(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native hwaccel(Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native hwaccel()Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
.end method

.method public native hwaccel_context()Lcom/googlecode/javacpp/Pointer;
.end method

.method public native hwaccel_context(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native i_count()I
.end method

.method public native i_count(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native i_quant_factor()F
.end method

.method public native i_quant_factor(F)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native i_quant_offset()F
.end method

.method public native i_quant_offset(F)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native i_tex_bits()I
.end method

.method public native i_tex_bits(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native idct_algo()I
.end method

.method public native idct_algo(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native ildct_cmp()I
.end method

.method public native ildct_cmp(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native inter_matrix()Lcom/googlecode/javacpp/ShortPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint16_t*"
        }
    .end annotation
.end method

.method public native inter_matrix(Lcom/googlecode/javacpp/ShortPointer;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native inter_quant_bias()I
.end method

.method public native inter_quant_bias(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native internal(Lcom/googlecode/javacv/cpp/avcodec$AVCodecInternal;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native internal()Lcom/googlecode/javacv/cpp/avcodec$AVCodecInternal;
.end method

.method public native intra_dc_precision()I
.end method

.method public native intra_dc_precision(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native intra_matrix()Lcom/googlecode/javacpp/ShortPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint16_t*"
        }
    .end annotation
.end method

.method public native intra_matrix(Lcom/googlecode/javacpp/ShortPointer;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native intra_quant_bias()I
.end method

.method public native intra_quant_bias(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native keyint_min()I
.end method

.method public native keyint_min(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native last_predictor_count()I
.end method

.method public native last_predictor_count(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native level()I
.end method

.method public native level(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native lmax()I
.end method

.method public native lmax(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native lmin()I
.end method

.method public native lmin(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native log_level_offset()I
.end method

.method public native log_level_offset(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native lumi_masking()F
.end method

.method public native lumi_masking(F)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native max_b_frames()I
.end method

.method public native max_b_frames(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native max_prediction_order()I
.end method

.method public native max_prediction_order(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native max_qdiff()I
.end method

.method public native max_qdiff(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native mb_cmp()I
.end method

.method public native mb_cmp(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native mb_decision()I
.end method

.method public native mb_decision(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native mb_lmax()I
.end method

.method public native mb_lmax(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native mb_lmin()I
.end method

.method public native mb_lmin(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native mb_threshold()I
.end method

.method public native mb_threshold(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native me_cmp()I
.end method

.method public native me_cmp(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native me_method()I
.end method

.method public native me_method(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native me_penalty_compensation()I
.end method

.method public native me_penalty_compensation(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native me_pre_cmp()I
.end method

.method public native me_pre_cmp(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native me_range()I
.end method

.method public native me_range(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native me_sub_cmp()I
.end method

.method public native me_sub_cmp(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native me_subpel_quality()I
.end method

.method public native me_subpel_quality(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native me_threshold()I
.end method

.method public native me_threshold(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native min_prediction_order()I
.end method

.method public native min_prediction_order(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native misc_bits()I
.end method

.method public native misc_bits(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native mpeg_quant()I
.end method

.method public native mpeg_quant(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native mv0_threshold()I
.end method

.method public native mv0_threshold(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native mv_bits()I
.end method

.method public native mv_bits(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native noise_reduction()I
.end method

.method public native noise_reduction(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native nsse_weight()I
.end method

.method public native nsse_weight(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native opaque()Lcom/googlecode/javacpp/Pointer;
.end method

.method public native opaque(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native p_count()I
.end method

.method public native p_count(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native p_masking()F
.end method

.method public native p_masking(F)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native p_tex_bits()I
.end method

.method public native p_tex_bits(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native pix_fmt()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVPixelFormat"
        }
    .end annotation
.end method

.method public native pix_fmt(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native pkt(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native pkt()Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
.end method

.method public native pkt_timebase(Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native pkt_timebase()Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->position(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    return-object v0
.end method

.method public native pre_dia_size()I
.end method

.method public native pre_dia_size(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native pre_me()I
.end method

.method public native pre_me(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native prediction_method()I
.end method

.method public native prediction_method(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native priv_data()Lcom/googlecode/javacpp/Pointer;
.end method

.method public native priv_data(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native profile()I
.end method

.method public native profile(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native pts_correction_last_dts()J
.end method

.method public native pts_correction_last_dts(J)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native pts_correction_last_pts()J
.end method

.method public native pts_correction_last_pts(J)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native pts_correction_num_faulty_dts()J
.end method

.method public native pts_correction_num_faulty_dts(J)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native pts_correction_num_faulty_pts()J
.end method

.method public native pts_correction_num_faulty_pts(J)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native qblur()F
.end method

.method public native qblur(F)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native qcompress()F
.end method

.method public native qcompress(F)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native qmax()I
.end method

.method public native qmax(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native qmin()I
.end method

.method public native qmin(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native rc_buffer_aggressivity()F
.end method

.method public native rc_buffer_aggressivity(F)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native rc_buffer_size()I
.end method

.method public native rc_buffer_size(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native rc_eq()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native rc_initial_buffer_occupancy()I
.end method

.method public native rc_initial_buffer_occupancy(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native rc_initial_cplx()F
.end method

.method public native rc_initial_cplx(F)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native rc_max_available_vbv_use()F
.end method

.method public native rc_max_available_vbv_use(F)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native rc_max_rate()I
.end method

.method public native rc_max_rate(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native rc_min_rate()I
.end method

.method public native rc_min_rate(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native rc_min_vbv_overflow_use()F
.end method

.method public native rc_min_vbv_overflow_use(F)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native rc_override(Lcom/googlecode/javacv/cpp/avcodec$RcOverride;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native rc_override()Lcom/googlecode/javacv/cpp/avcodec$RcOverride;
.end method

.method public native rc_override_count()I
.end method

.method public native rc_override_count(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native rc_qmod_amp()F
.end method

.method public native rc_qmod_amp(F)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native rc_qmod_freq()I
.end method

.method public native rc_qmod_freq(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native rc_qsquish()F
.end method

.method public native rc_qsquish(F)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native rc_strategy()I
.end method

.method public native rc_strategy(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native refcounted_frames()I
.end method

.method public native refcounted_frames(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native refs()I
.end method

.method public native refs(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native reget_buffer()Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Reget_buffer_AVCodecContext_AVFrame;
.end method

.method public native reget_buffer(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Reget_buffer_AVCodecContext_AVFrame;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native release_buffer()Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Release_buffer_AVCodecContext_AVFrame;
.end method

.method public native release_buffer(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Release_buffer_AVCodecContext_AVFrame;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native reordered_opaque()J
.end method

.method public native reordered_opaque(J)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native request_channel_layout()J
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint64_t"
        }
    .end annotation
.end method

.method public native request_channel_layout(J)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native request_channels()I
.end method

.method public native request_channels(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native request_sample_fmt()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVSampleFormat"
        }
    .end annotation
.end method

.method public native request_sample_fmt(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native rtp_callback()Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Rtp_callback_AVCodecContext_Pointer_int_int;
.end method

.method public native rtp_callback(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Rtp_callback_AVCodecContext_Pointer_int_int;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native rtp_payload_size()I
.end method

.method public native rtp_payload_size(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native sample_aspect_ratio(Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native sample_aspect_ratio()Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native sample_fmt()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVSampleFormat"
        }
    .end annotation
.end method

.method public native sample_fmt(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native sample_rate()I
.end method

.method public native sample_rate(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native scenechange_factor()I
.end method

.method public native scenechange_factor(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native scenechange_threshold()I
.end method

.method public native scenechange_threshold(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native skip_bottom()I
.end method

.method public native skip_bottom(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native skip_count()I
.end method

.method public native skip_count(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native skip_frame()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVDiscard"
        }
    .end annotation
.end method

.method public native skip_frame(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native skip_idct()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVDiscard"
        }
    .end annotation
.end method

.method public native skip_idct(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native skip_loop_filter()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVDiscard"
        }
    .end annotation
.end method

.method public native skip_loop_filter(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native skip_top()I
.end method

.method public native skip_top(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native slice_count()I
.end method

.method public native slice_count(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native slice_flags()I
.end method

.method public native slice_flags(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native slice_offset()Lcom/googlecode/javacpp/IntPointer;
.end method

.method public native slice_offset(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native slices()I
.end method

.method public native slices(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native spatial_cplx_masking()F
.end method

.method public native spatial_cplx_masking(F)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native stats_in()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public native stats_in(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native stats_out()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public native stats_out(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native stream_codec_tag()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned int"
        }
    .end annotation
.end method

.method public native stream_codec_tag(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native strict_std_compliance()I
.end method

.method public native strict_std_compliance(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native sub_charenc()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public native sub_charenc(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native sub_charenc_mode()I
.end method

.method public native sub_charenc_mode(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native subtitle_header()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint8_t*"
        }
    .end annotation
.end method

.method public native subtitle_header(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native subtitle_header_size()I
.end method

.method public native subtitle_header_size(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native temporal_cplx_masking()F
.end method

.method public native temporal_cplx_masking(F)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native thread_count()I
.end method

.method public native thread_count(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native thread_opaque()Lcom/googlecode/javacpp/Pointer;
.end method

.method public native thread_opaque(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native thread_safe_callbacks()I
.end method

.method public native thread_safe_callbacks(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native thread_type()I
.end method

.method public native thread_type(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native ticks_per_frame()I
.end method

.method public native ticks_per_frame(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native time_base(Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native timecode_frame_start()J
.end method

.method public native timecode_frame_start(J)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native trellis()I
.end method

.method public native trellis(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native vbv_delay()J
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint64_t"
        }
    .end annotation
.end method

.method public native vbv_delay(J)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native width()I
.end method

.method public native width(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native workaround_bugs()I
.end method

.method public native workaround_bugs(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native xvmc_acceleration()I
.end method

.method public native xvmc_acceleration(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method
