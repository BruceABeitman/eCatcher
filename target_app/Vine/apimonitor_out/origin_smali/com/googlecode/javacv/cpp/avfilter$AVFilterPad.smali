.class public Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;
.super Lcom/googlecode/javacpp/Pointer;
.source "avfilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avfilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVFilterPad"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$Config_props_AVFilterLink;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$Request_frame_AVFilterLink;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$Poll_frame_AVFilterLink;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$Filter_frame_AVFilterLink_AVFrame;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$Draw_slice_AVFilterLink_int_int_int;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$End_frame_AVFilterLink;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$Get_audio_buffer_AVFilterLink_int;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$Get_video_buffer_AVFilterLink_int_int;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$Start_frame_AVFilterLink_AVFilterBufferRef;
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

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;->allocateArray(I)V

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
.method public native config_props()Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$Config_props_AVFilterLink;
.end method

.method public native config_props(Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$Config_props_AVFilterLink;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;
.end method

.method public native draw_slice()Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$Draw_slice_AVFilterLink_int_int_int;
.end method

.method public native draw_slice(Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$Draw_slice_AVFilterLink_int_int_int;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;
.end method

.method public native end_frame()Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$End_frame_AVFilterLink;
.end method

.method public native end_frame(Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$End_frame_AVFilterLink;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;
.end method

.method public native filter_frame()Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$Filter_frame_AVFilterLink_AVFrame;
.end method

.method public native filter_frame(Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$Filter_frame_AVFilterLink_AVFrame;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;
.end method

.method public native get_audio_buffer()Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$Get_audio_buffer_AVFilterLink_int;
.end method

.method public native get_audio_buffer(Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$Get_audio_buffer_AVFilterLink_int;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;
.end method

.method public native get_video_buffer()Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$Get_video_buffer_AVFilterLink_int_int;
.end method

.method public native get_video_buffer(Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$Get_video_buffer_AVFilterLink_int_int;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;
.end method

.method public native min_perms()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native min_perms(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;
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

.method public native needs_fifo()I
.end method

.method public native needs_fifo(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;
.end method

.method public native needs_writable()I
.end method

.method public native needs_writable(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;
.end method

.method public native poll_frame()Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$Poll_frame_AVFilterLink;
.end method

.method public native poll_frame(Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$Poll_frame_AVFilterLink;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;->position(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;

    return-object v0
.end method

.method public native rej_perms()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native rej_perms(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;
.end method

.method public native request_frame()Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$Request_frame_AVFilterLink;
.end method

.method public native request_frame(Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$Request_frame_AVFilterLink;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;
.end method

.method public native start_frame()Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$Start_frame_AVFilterLink_AVFilterBufferRef;
.end method

.method public native start_frame(Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$Start_frame_AVFilterLink_AVFilterBufferRef;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;
.end method

.method public native type()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVMediaType"
        }
    .end annotation
.end method

.method public native type(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;
.end method
