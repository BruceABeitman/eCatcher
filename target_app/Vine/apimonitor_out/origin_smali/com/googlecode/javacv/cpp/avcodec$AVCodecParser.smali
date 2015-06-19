.class public Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;
.super Lcom/googlecode/javacpp/Pointer;
.source "avcodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avcodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVCodecParser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser$Split_AVCodecContext_BytePointer_int;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser$Parser_close_AVCodecParserContext;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser$Parser_parse_AVCodecParserContext_AVCodecContext_PointerPointer_IntPointer_BytePointer_int;,
        Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser$Parser_init_AVCodecParserContext;
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

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;->allocateArray(I)V

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
.method public native codec_ids(I)I
.end method

.method public native codec_ids()Lcom/googlecode/javacpp/IntPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native codec_ids(II)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;
.end method

.method public native next()Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;
.end method

.method public native next(Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;
.end method

.method public native parser_close()Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser$Parser_close_AVCodecParserContext;
.end method

.method public native parser_close(Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser$Parser_close_AVCodecParserContext;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;
.end method

.method public native parser_init()Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser$Parser_init_AVCodecParserContext;
.end method

.method public native parser_init(Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser$Parser_init_AVCodecParserContext;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;
.end method

.method public native parser_parse()Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser$Parser_parse_AVCodecParserContext_AVCodecContext_PointerPointer_IntPointer_BytePointer_int;
.end method

.method public native parser_parse(Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser$Parser_parse_AVCodecParserContext_AVCodecContext_PointerPointer_IntPointer_BytePointer_int;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;->position(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;

    return-object v0
.end method

.method public native priv_data_size()I
.end method

.method public native priv_data_size(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;
.end method

.method public native split()Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser$Split_AVCodecContext_BytePointer_int;
.end method

.method public native split(Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser$Split_AVCodecContext_BytePointer_int;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;
.end method
