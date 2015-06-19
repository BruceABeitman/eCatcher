.class public Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.super Lcom/googlecode/javacpp/Pointer;
.source "avfilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avfilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVFilterLink"
.end annotation


# static fields
.field public static final AVLINK_INIT:I = 0x2

.field public static final AVLINK_STARTINIT:I = 0x1

.field public static final AVLINK_UNINIT:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;->allocateArray(I)V

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
.method public native age_index()I
.end method

.method public native age_index(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native channel_layout()J
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint64_t"
        }
    .end annotation
.end method

.method public native channel_layout(J)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native channels()I
.end method

.method public native channels(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native closed()I
.end method

.method public native closed(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native cur_buf_copy()Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;
.end method

.method public native cur_buf_copy(Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native current_pts()J
.end method

.method public native current_pts(J)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native dst()Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method

.method public native dst(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native dstpad(Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native dstpad()Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;
.end method

.method public native flags()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public native flags(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native format()I
.end method

.method public native format(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native frame_count()J
.end method

.method public native frame_count(J)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native frame_rate(Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native frame_rate()Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native frame_requested()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public native frame_requested(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native graph()Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;
.end method

.method public native graph(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native h()I
.end method

.method public native h(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native in_channel_layouts()Lcom/googlecode/javacpp/Pointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVFilterChannelLayouts*"
        }
    .end annotation
.end method

.method public native in_channel_layouts(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native in_formats()Lcom/googlecode/javacv/cpp/avfilter$AVFilterFormats;
.end method

.method public native in_formats(Lcom/googlecode/javacv/cpp/avfilter$AVFilterFormats;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native in_samplerates()Lcom/googlecode/javacv/cpp/avfilter$AVFilterFormats;
.end method

.method public native in_samplerates(Lcom/googlecode/javacv/cpp/avfilter$AVFilterFormats;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native max_samples()I
.end method

.method public native max_samples(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native min_samples()I
.end method

.method public native min_samples(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native out_channel_layouts()Lcom/googlecode/javacpp/Pointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVFilterChannelLayouts*"
        }
    .end annotation
.end method

.method public native out_channel_layouts(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native out_formats()Lcom/googlecode/javacv/cpp/avfilter$AVFilterFormats;
.end method

.method public native out_formats(Lcom/googlecode/javacv/cpp/avfilter$AVFilterFormats;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native out_samplerates()Lcom/googlecode/javacv/cpp/avfilter$AVFilterFormats;
.end method

.method public native out_samplerates(Lcom/googlecode/javacv/cpp/avfilter$AVFilterFormats;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native partial_buf(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native partial_buf()Lcom/googlecode/javacv/cpp/avutil$AVFrame;
.end method

.method public native partial_buf_size()I
.end method

.method public native partial_buf_size(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native pool()Lcom/googlecode/javacpp/Pointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVFilterPool*"
        }
    .end annotation
.end method

.method public native pool(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;->position(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;

    return-object v0
.end method

.method public native request_samples()I
.end method

.method public native request_samples(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native sample_aspect_ratio(Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native sample_aspect_ratio()Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native sample_rate()I
.end method

.method public native sample_rate(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native src()Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method

.method public native src(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native srcpad(Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native srcpad()Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;
.end method

.method public native time_base(Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native type()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVMediaType"
        }
    .end annotation
.end method

.method public native type(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native w()I
.end method

.method public native w(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method
