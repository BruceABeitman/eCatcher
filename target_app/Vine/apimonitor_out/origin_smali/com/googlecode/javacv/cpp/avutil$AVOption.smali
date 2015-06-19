.class public Lcom/googlecode/javacv/cpp/avutil$AVOption;
.super Lcom/googlecode/javacpp/Pointer;
.source "avutil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avutil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVOption"
.end annotation


# static fields
.field public static final AV_OPT_FLAG_AUDIO_PARAM:I = 0x8

.field public static final AV_OPT_FLAG_DECODING_PARAM:I = 0x2

.field public static final AV_OPT_FLAG_ENCODING_PARAM:I = 0x1

.field public static final AV_OPT_FLAG_FILTERING_PARAM:I = 0x10000

.field public static final AV_OPT_FLAG_METADATA:I = 0x4

.field public static final AV_OPT_FLAG_SUBTITLE_PARAM:I = 0x20

.field public static final AV_OPT_FLAG_VIDEO_PARAM:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avutil$AVOption;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avutil$AVOption;->allocateArray(I)V

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
.method public native flags()I
.end method

.method public native flags(I)Lcom/googlecode/javacv/cpp/avutil$AVOption;
.end method

.method public native help()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native max()D
.end method

.method public native max(D)Lcom/googlecode/javacv/cpp/avutil$AVOption;
.end method

.method public native min()D
.end method

.method public native min(D)Lcom/googlecode/javacv/cpp/avutil$AVOption;
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

.method public native offset()I
.end method

.method public native offset(I)Lcom/googlecode/javacv/cpp/avutil$AVOption;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avutil$AVOption;->position(I)Lcom/googlecode/javacv/cpp/avutil$AVOption;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avutil$AVOption;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avutil$AVOption;

    return-object v0
.end method

.method public native type()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVOptionType"
        }
    .end annotation
.end method

.method public native type(I)Lcom/googlecode/javacv/cpp/avutil$AVOption;
.end method

.method public native unit()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method
