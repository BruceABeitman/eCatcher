.class public Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefAudioProps;
.super Lcom/googlecode/javacpp/Pointer;
.source "avfilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avfilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVFilterBufferRefAudioProps"
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

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefAudioProps;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefAudioProps;->allocateArray(I)V

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
.method public native channel_layout()J
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint64_t"
        }
    .end annotation
.end method

.method public native channel_layout(J)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefAudioProps;
.end method

.method public native channels()I
.end method

.method public native channels(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefAudioProps;
.end method

.method public native nb_samples()I
.end method

.method public native nb_samples(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefAudioProps;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefAudioProps;->position(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefAudioProps;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefAudioProps;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefAudioProps;

    return-object v0
.end method

.method public native sample_rate()I
.end method

.method public native sample_rate(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefAudioProps;
.end method
