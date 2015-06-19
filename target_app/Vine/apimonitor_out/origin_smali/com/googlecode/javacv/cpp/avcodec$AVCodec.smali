.class public Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.super Lcom/googlecode/javacpp/Pointer;
.source "avcodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avcodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVCodec"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/avcodec$AVCodec$Flush_AVCodecContext;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodec$Close_AVCodecContext;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodec$Decode_AVCodecContext_Pointer_IntPointer_AVPacket;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodec$Encode2_AVCodecContext_AVPacket_AVFrame_IntPointer;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodec$Encode_sub_AVCodecContext_BytePointer_int_AVSubtitle;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodec$Init_AVCodecContext;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodec$Init_static_data_AVCodec;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodec$Update_thread_context_AVCodecContext_AVCodecContext;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodec$Init_thread_copy_AVCodecContext;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avcodec$AVCodec;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodec;->allocateArray(I)V

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
.method public native capabilities()I
.end method

.method public native capabilities(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public native channel_layouts()Lcom/googlecode/javacpp/LongPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const uint64_t*"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native close()Lcom/googlecode/javacv/cpp/avcodec$AVCodec$Close_AVCodecContext;
.end method

.method public native close(Lcom/googlecode/javacv/cpp/avcodec$AVCodec$Close_AVCodecContext;)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public native decode()Lcom/googlecode/javacv/cpp/avcodec$AVCodec$Decode_AVCodecContext_Pointer_IntPointer_AVPacket;
.end method

.method public native decode(Lcom/googlecode/javacv/cpp/avcodec$AVCodec$Decode_AVCodecContext_Pointer_IntPointer_AVPacket;)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public native defaults()Lcom/googlecode/javacv/cpp/avcodec$AVCodecDefault;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native encode2()Lcom/googlecode/javacv/cpp/avcodec$AVCodec$Encode2_AVCodecContext_AVPacket_AVFrame_IntPointer;
.end method

.method public native encode2(Lcom/googlecode/javacv/cpp/avcodec$AVCodec$Encode2_AVCodecContext_AVPacket_AVFrame_IntPointer;)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public native encode_sub()Lcom/googlecode/javacv/cpp/avcodec$AVCodec$Encode_sub_AVCodecContext_BytePointer_int_AVSubtitle;
.end method

.method public native encode_sub(Lcom/googlecode/javacv/cpp/avcodec$AVCodec$Encode_sub_AVCodecContext_BytePointer_int_AVSubtitle;)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public native flush()Lcom/googlecode/javacv/cpp/avcodec$AVCodec$Flush_AVCodecContext;
.end method

.method public native flush(Lcom/googlecode/javacv/cpp/avcodec$AVCodec$Flush_AVCodecContext;)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public native id()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVCodecID"
        }
    .end annotation
.end method

.method public native id(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public native init()Lcom/googlecode/javacv/cpp/avcodec$AVCodec$Init_AVCodecContext;
.end method

.method public native init(Lcom/googlecode/javacv/cpp/avcodec$AVCodec$Init_AVCodecContext;)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public native init_static_data()Lcom/googlecode/javacv/cpp/avcodec$AVCodec$Init_static_data_AVCodec;
.end method

.method public native init_static_data(Lcom/googlecode/javacv/cpp/avcodec$AVCodec$Init_static_data_AVCodec;)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public native init_thread_copy()Lcom/googlecode/javacv/cpp/avcodec$AVCodec$Init_thread_copy_AVCodecContext;
.end method

.method public native init_thread_copy(Lcom/googlecode/javacv/cpp/avcodec$AVCodec$Init_thread_copy_AVCodecContext;)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public native long_name()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native max_lowres()B
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint8_t"
        }
    .end annotation
.end method

.method public native max_lowres(B)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public native name()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native next()Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public native next(Lcom/googlecode/javacv/cpp/avcodec$AVCodec;)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public native pix_fmts()Lcom/googlecode/javacpp/IntPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const AVPixelFormat*"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodec;->position(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    return-object v0
.end method

.method public native priv_class()Lcom/googlecode/javacv/cpp/avutil$AVClass;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native priv_data_size()I
.end method

.method public native priv_data_size(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public native profiles()Lcom/googlecode/javacv/cpp/avcodec$AVProfile;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native sample_fmts()Lcom/googlecode/javacpp/IntPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const AVSampleFormat*"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native supported_framerates()Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native supported_samplerates()Lcom/googlecode/javacpp/IntPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native type()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVMediaType"
        }
    .end annotation
.end method

.method public native type(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method

.method public native update_thread_context()Lcom/googlecode/javacv/cpp/avcodec$AVCodec$Update_thread_context_AVCodecContext_AVCodecContext;
.end method

.method public native update_thread_context(Lcom/googlecode/javacv/cpp/avcodec$AVCodec$Update_thread_context_AVCodecContext_AVCodecContext;)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.end method
