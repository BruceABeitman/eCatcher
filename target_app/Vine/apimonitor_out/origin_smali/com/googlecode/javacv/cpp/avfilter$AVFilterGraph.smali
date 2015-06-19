.class public Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;
.super Lcom/googlecode/javacpp/Pointer;
.source "avfilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avfilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVFilterGraph"
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

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;->allocateArray(I)V

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
.method public native aresample_swr_opts()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public native aresample_swr_opts(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;
.end method

.method public native av_class()Lcom/googlecode/javacv/cpp/avutil$AVClass;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native disable_auto_convert()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public native disable_auto_convert(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;
.end method

.method public native filters()Lcom/googlecode/javacpp/PointerPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVFilterContext**"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native filters(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method

.method public native filters(ILcom/googlecode/javacv/cpp/avfilter$AVFilterContext;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;
.end method

.method public native internal(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraphInternal;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;
.end method

.method public native internal()Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraphInternal;
.end method

.method public native nb_threads()I
.end method

.method public native nb_threads(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;->position(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;

    return-object v0
.end method

.method public native resample_lavr_opts()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public native resample_lavr_opts(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;
.end method

.method public native scale_sws_opts()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public native scale_sws_opts(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;
.end method

.method public native sink_links()Lcom/googlecode/javacpp/PointerPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVFilterLink**"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native sink_links(ILcom/googlecode/javacv/cpp/avfilter$AVFilterLink;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;
.end method

.method public native sink_links(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native sink_links_count()I
.end method

.method public native sink_links_count(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;
.end method

.method public native thread_type()I
.end method

.method public native thread_type(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;
.end method
