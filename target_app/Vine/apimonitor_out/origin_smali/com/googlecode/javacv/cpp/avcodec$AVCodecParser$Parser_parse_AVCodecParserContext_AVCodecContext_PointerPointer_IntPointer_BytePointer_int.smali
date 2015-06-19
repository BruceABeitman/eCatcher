.class public Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser$Parser_parse_AVCodecParserContext_AVCodecContext_PointerPointer_IntPointer_BytePointer_int;
.super Lcom/googlecode/javacpp/FunctionPointer;
.source "avcodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser_parse_AVCodecParserContext_AVCodecContext_PointerPointer_IntPointer_BytePointer_int"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/googlecode/javacpp/FunctionPointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser$Parser_parse_AVCodecParserContext_AVCodecContext_PointerPointer_IntPointer_BytePointer_int;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/FunctionPointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method


# virtual methods
.method public native call(Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/BytePointer;I)I
    .parameter
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
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method
