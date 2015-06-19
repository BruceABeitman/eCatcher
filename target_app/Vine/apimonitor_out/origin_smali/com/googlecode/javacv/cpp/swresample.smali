.class public Lcom/googlecode/javacv/cpp/swresample;
.super Ljava/lang/Object;
.source "swresample.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Properties;
    inherit = {
        Lcom/googlecode/javacv/cpp/avutil;
    }
    value = {
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            cinclude = {
                "<libswresample/swresample.h>"
            }
            link = {
                "swresample@.0"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            preload = {
                "swresample-0"
            }
            value = {
                "windows"
            }
        .end subannotation
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/swresample$SwrContext;
    }
.end annotation


# static fields
.field public static final SWR_CH_MAX:I = 0x20

.field public static final SWR_DITHER_NB:I = 0x48

.field public static final SWR_DITHER_NONE:I = 0x0

.field public static final SWR_DITHER_NS:I = 0x40

.field public static final SWR_DITHER_NS_F_WEIGHTED:I = 0x42

.field public static final SWR_DITHER_NS_HIGH_SHIBATA:I = 0x47

.field public static final SWR_DITHER_NS_IMPROVED_E_WEIGHTED:I = 0x44

.field public static final SWR_DITHER_NS_LIPSHITZ:I = 0x41

.field public static final SWR_DITHER_NS_LOW_SHIBATA:I = 0x46

.field public static final SWR_DITHER_NS_MODIFIED_E_WEIGHTED:I = 0x43

.field public static final SWR_DITHER_NS_SHIBATA:I = 0x45

.field public static final SWR_DITHER_RECTANGULAR:I = 0x1

.field public static final SWR_DITHER_TRIANGULAR:I = 0x2

.field public static final SWR_DITHER_TRIANGULAR_HIGHPASS:I = 0x3

.field public static final SWR_ENGINE_NB:I = 0x2

.field public static final SWR_ENGINE_SOXR:I = 0x1

.field public static final SWR_ENGINE_SWR:I = 0x0

.field public static final SWR_FILTER_TYPE_BLACKMAN_NUTTALL:I = 0x1

.field public static final SWR_FILTER_TYPE_CUBIC:I = 0x0

.field public static final SWR_FILTER_TYPE_KAISER:I = 0x2

.field public static final SWR_FLAG_RESAMPLE:I = 0x1


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

.method public static native swr_alloc()Lcom/googlecode/javacv/cpp/swresample$SwrContext;
.end method

.method public static native swr_alloc_set_opts(Lcom/googlecode/javacv/cpp/swresample$SwrContext;JIIJIIILcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/swresample$SwrContext;
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
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native swr_convert(Lcom/googlecode/javacv/cpp/swresample$SwrContext;Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/BytePointer;I)I
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
    .end parameter
.end method

.method public static native swr_convert(Lcom/googlecode/javacv/cpp/swresample$SwrContext;Lcom/googlecode/javacpp/PointerPointer;ILcom/googlecode/javacpp/PointerPointer;I)I
    .parameter
    .end parameter
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
    .end parameter
.end method

.method public static native swr_convert(Lcom/googlecode/javacv/cpp/swresample$SwrContext;Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)I
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
    .end parameter
.end method

.method public static native swr_convert(Lcom/googlecode/javacv/cpp/swresample$SwrContext;[BI[BI)I
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
    .end parameter
.end method

.method public static native swr_drop_output(Lcom/googlecode/javacv/cpp/swresample$SwrContext;I)I
.end method

.method public static native swr_free(Lcom/googlecode/javacpp/PointerPointer;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "SwrContext**"
            }
        .end annotation
    .end parameter
.end method

.method public static native swr_free(Lcom/googlecode/javacv/cpp/swresample$SwrContext;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native swr_get_class()Lcom/googlecode/javacv/cpp/avutil$AVClass;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native swr_get_delay(Lcom/googlecode/javacv/cpp/swresample$SwrContext;J)J
.end method

.method public static native swr_init(Lcom/googlecode/javacv/cpp/swresample$SwrContext;)I
.end method

.method public static native swr_inject_silence(Lcom/googlecode/javacv/cpp/swresample$SwrContext;I)I
.end method

.method public static native swr_next_pts(Lcom/googlecode/javacv/cpp/swresample$SwrContext;J)J
.end method

.method public static native swr_set_channel_mapping(Lcom/googlecode/javacv/cpp/swresample$SwrContext;Lcom/googlecode/javacpp/IntPointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native swr_set_channel_mapping(Lcom/googlecode/javacv/cpp/swresample$SwrContext;Ljava/nio/IntBuffer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native swr_set_channel_mapping(Lcom/googlecode/javacv/cpp/swresample$SwrContext;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native swr_set_compensation(Lcom/googlecode/javacv/cpp/swresample$SwrContext;II)I
.end method

.method public static native swr_set_matrix(Lcom/googlecode/javacv/cpp/swresample$SwrContext;Lcom/googlecode/javacpp/DoublePointer;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native swr_set_matrix(Lcom/googlecode/javacv/cpp/swresample$SwrContext;Ljava/nio/DoubleBuffer;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native swr_set_matrix(Lcom/googlecode/javacv/cpp/swresample$SwrContext;[DI)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native swresample_configuration()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation
.end method

.method public static native swresample_license()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation
.end method

.method public static native swresample_version()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method
