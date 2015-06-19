.class public Lcom/googlecode/javacv/cpp/avformat$AVStream;
.super Lcom/googlecode/javacpp/Pointer;
.source "avformat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avformat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVStream"
.end annotation


# static fields
.field public static final MAX_PROBE_PACKETS:I = 0x9c4

.field public static final MAX_REORDER_DELAY:I = 0x10

.field public static final MAX_STD_TIMEBASES:I = 0x2d6


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->allocateArray(I)V

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
.method public native attached_pic()Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native attached_pic(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native avg_frame_rate(Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native avg_frame_rate()Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native codec()Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native codec(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native codec_info_nb_frames()I
.end method

.method public native codec_info_nb_frames(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native cur_dts()J
.end method

.method public native cur_dts(J)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native discard()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVDiscard"
        }
    .end annotation
.end method

.method public native discard(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native disposition()I
.end method

.method public native disposition(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native duration()J
.end method

.method public native duration(J)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native first_dts()J
.end method

.method public native first_dts(J)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native id()I
.end method

.method public native id(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native index()I
.end method

.method public native index(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native index_entries()Lcom/googlecode/javacv/cpp/avformat$AVIndexEntry;
.end method

.method public native index_entries(Lcom/googlecode/javacv/cpp/avformat$AVIndexEntry;)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native index_entries_allocated_size()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned int"
        }
    .end annotation
.end method

.method public native index_entries_allocated_size(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native interleaver_chunk_duration()J
.end method

.method public native interleaver_chunk_duration(J)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native interleaver_chunk_size()J
.end method

.method public native interleaver_chunk_size(J)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native last_IP_duration()I
.end method

.method public native last_IP_duration(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native last_IP_pts()J
.end method

.method public native last_IP_pts(J)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native last_in_packet_buffer()Lcom/googlecode/javacv/cpp/avformat$AVPacketList;
.end method

.method public native last_in_packet_buffer(Lcom/googlecode/javacv/cpp/avformat$AVPacketList;)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native metadata(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native metadata()Lcom/googlecode/javacv/cpp/avutil$AVDictionary;
.end method

.method public native mux_ts_offset()J
.end method

.method public native mux_ts_offset(J)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native nb_decoded_frames()I
.end method

.method public native nb_decoded_frames(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native nb_frames()J
.end method

.method public native nb_frames(J)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native nb_index_entries()I
.end method

.method public native nb_index_entries(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native need_parsing()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVStreamParseType"
        }
    .end annotation
.end method

.method public native need_parsing(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native parser()Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public native parser(Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->position(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avformat$AVStream;

    return-object v0
.end method

.method public native priv_data()Lcom/googlecode/javacpp/Pointer;
.end method

.method public native priv_data(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native probe_data()Lcom/googlecode/javacv/cpp/avformat$AVProbeData;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native probe_data(Lcom/googlecode/javacv/cpp/avformat$AVProbeData;)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native probe_packets()I
.end method

.method public native probe_packets(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native pts()Lcom/googlecode/javacv/cpp/avformat$AVFrac;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native pts(Lcom/googlecode/javacv/cpp/avformat$AVFrac;)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native pts_buffer(I)J
.end method

.method public native pts_buffer()Lcom/googlecode/javacpp/LongPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native pts_buffer(IJ)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native pts_wrap_behavior()I
.end method

.method public native pts_wrap_behavior(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native pts_wrap_bits()I
.end method

.method public native pts_wrap_bits(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native pts_wrap_reference()J
.end method

.method public native pts_wrap_reference(J)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native r_frame_rate(Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native r_frame_rate()Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native reference_dts()J
.end method

.method public native reference_dts(J)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native request_probe()I
.end method

.method public native request_probe(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native sample_aspect_ratio(Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native sample_aspect_ratio()Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native skip_samples()I
.end method

.method public native skip_samples(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native skip_to_keyframe()I
.end method

.method public native skip_to_keyframe(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native start_time()J
.end method

.method public native start_time(J)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native stream_identifier()I
.end method

.method public native stream_identifier(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native time_base(Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method
