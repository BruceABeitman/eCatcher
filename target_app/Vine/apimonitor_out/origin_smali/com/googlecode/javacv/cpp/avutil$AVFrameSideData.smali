.class public Lcom/googlecode/javacv/cpp/avutil$AVFrameSideData;
.super Lcom/googlecode/javacpp/Pointer;
.source "avutil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avutil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVFrameSideData"
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

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avutil$AVFrameSideData;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avutil$AVFrameSideData;->allocateArray(I)V

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
.method public native data()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint8_t*"
        }
    .end annotation
.end method

.method public native data(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avutil$AVFrameSideData;
.end method

.method public native metadata()Lcom/googlecode/javacv/cpp/avutil$AVDictionary;
.end method

.method public native metadata(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)Lcom/googlecode/javacv/cpp/avutil$AVFrameSideData;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avutil$AVFrameSideData;->position(I)Lcom/googlecode/javacv/cpp/avutil$AVFrameSideData;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avutil$AVFrameSideData;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avutil$AVFrameSideData;

    return-object v0
.end method

.method public native size()I
.end method

.method public native size(I)Lcom/googlecode/javacv/cpp/avutil$AVFrameSideData;
.end method

.method public native type()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVFrameSideDataType"
        }
    .end annotation
.end method

.method public native type(I)Lcom/googlecode/javacv/cpp/avutil$AVFrameSideData;
.end method
