.class public Lcom/googlecode/javacv/cpp/avcodec$AVPanScan;
.super Lcom/googlecode/javacpp/Pointer;
.source "avcodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avcodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVPanScan"
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

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avcodec$AVPanScan;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVPanScan;->allocateArray(I)V

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
.method public native _position()Lcom/googlecode/javacpp/ShortPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "int16_t*"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "position"
        }
    .end annotation
.end method

.method public native _position(IIS)Lcom/googlecode/javacv/cpp/avcodec$AVPanScan;
.end method

.method public native _position(II)S
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "position"
        }
    .end annotation
.end method

.method public native height()I
.end method

.method public native height(I)Lcom/googlecode/javacv/cpp/avcodec$AVPanScan;
.end method

.method public native id()I
.end method

.method public native id(I)Lcom/googlecode/javacv/cpp/avcodec$AVPanScan;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVPanScan;->position(I)Lcom/googlecode/javacv/cpp/avcodec$AVPanScan;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avcodec$AVPanScan;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avcodec$AVPanScan;

    return-object v0
.end method

.method public native width()I
.end method

.method public native width(I)Lcom/googlecode/javacv/cpp/avcodec$AVPanScan;
.end method
