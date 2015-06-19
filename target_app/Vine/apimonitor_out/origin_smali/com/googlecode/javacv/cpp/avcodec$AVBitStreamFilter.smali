.class public Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;
.super Lcom/googlecode/javacpp/Pointer;
.source "avcodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avcodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVBitStreamFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter$Close_AVBitStreamFilterContext;,
        Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter$Filter_AVBitStreamFilterContext_AVCodecContext_BytePointer_PointerPointer_IntPointer_BytePointer_int_int;
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

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;->allocateArray(I)V

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
.method public native close()Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter$Close_AVBitStreamFilterContext;
.end method

.method public native close(Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter$Close_AVBitStreamFilterContext;)Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;
.end method

.method public native filter()Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter$Filter_AVBitStreamFilterContext_AVCodecContext_BytePointer_PointerPointer_IntPointer_BytePointer_int_int;
.end method

.method public native filter(Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter$Filter_AVBitStreamFilterContext_AVCodecContext_BytePointer_PointerPointer_IntPointer_BytePointer_int_int;)Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;
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

.method public native next()Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;
.end method

.method public native next(Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;)Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;->position(I)Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;

    return-object v0
.end method

.method public native priv_data_size()I
.end method

.method public native priv_data_size(I)Lcom/googlecode/javacv/cpp/avcodec$AVBitStreamFilter;
.end method
