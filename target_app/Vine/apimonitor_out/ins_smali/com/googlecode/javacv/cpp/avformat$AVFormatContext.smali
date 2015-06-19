.class public Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.super Lcom/googlecode/javacpp/Pointer;
.source "avformat.java"
.field public static final AVFMT_FLAG_CUSTOM_IO:I = 0x80
.field public static final AVFMT_FLAG_DISCARD_CORRUPT:I = 0x100
.field public static final AVFMT_FLAG_GENPTS:I = 0x1
.field public static final AVFMT_FLAG_IGNDTS:I = 0x8
.field public static final AVFMT_FLAG_IGNIDX:I = 0x2
.field public static final AVFMT_FLAG_KEEP_SIDE_DATA:I = 0x40000
.field public static final AVFMT_FLAG_MP4A_LATM:I = 0x8000
.field public static final AVFMT_FLAG_NOBUFFER:I = 0x40
.field public static final AVFMT_FLAG_NOFILLIN:I = 0x10
.field public static final AVFMT_FLAG_NONBLOCK:I = 0x4
.field public static final AVFMT_FLAG_NOPARSE:I = 0x20
.field public static final AVFMT_FLAG_PRIV_OPT:I = 0x20000
.field public static final AVFMT_FLAG_SORT_DTS:I = 0x10000
.field public static final FF_FDEBUG_TS:I = 0x1
.field public static final RAW_PACKET_BUFFER_SIZE:I = 0x2625a0
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->allocate()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->allocateArray(I)V
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
.method public native audio_codec_id()I
.end method
.method public native audio_codec_id(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native audio_preload()I
.end method
.method public native audio_preload(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native av_class()Lcom/googlecode/javacv/cpp/avutil$AVClass;
.end method
.method public native avio_flags()I
.end method
.method public native avio_flags(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native avoid_negative_ts()I
.end method
.method public native avoid_negative_ts(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native bit_rate()I
.end method
.method public native bit_rate(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native chapters()Lcom/googlecode/javacpp/PointerPointer;
.end method
.method public native chapters(I)Lcom/googlecode/javacv/cpp/avformat$AVChapter;
.end method
.method public native chapters(ILcom/googlecode/javacv/cpp/avformat$AVChapter;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native correct_ts_overflow()I
.end method
.method public native correct_ts_overflow(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native ctx_flags()I
.end method
.method public native ctx_flags(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native data_offset()J
.end method
.method public native data_offset(J)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native debug()I
.end method
.method public native debug(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native duration()J
.end method
.method public native duration(J)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native duration_estimation_method()I
.end method
.method public native duration_estimation_method(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native error_recognition()I
.end method
.method public native error_recognition(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native filename(I)B
.end method
.method public native filename()Lcom/googlecode/javacpp/BytePointer;
.end method
.method public native filename(IB)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native flags()I
.end method
.method public native flags(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native flush_packets()I
.end method
.method public native flush_packets(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native fps_probe_size()I
.end method
.method public native fps_probe_size(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native iformat(Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native iformat()Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
.end method
.method public native interrupt_callback(Lcom/googlecode/javacv/cpp/avformat$AVIOInterruptCB;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native interrupt_callback()Lcom/googlecode/javacv/cpp/avformat$AVIOInterruptCB;
.end method
.method public native io_repositioned()I
.end method
.method public native io_repositioned(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native key()Lcom/googlecode/javacpp/BytePointer;
.end method
.method public native keylen()I
.end method
.method public native keylen(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native max_analyze_duration()I
.end method
.method public native max_analyze_duration(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native max_chunk_duration()I
.end method
.method public native max_chunk_duration(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native max_chunk_size()I
.end method
.method public native max_chunk_size(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native max_delay()I
.end method
.method public native max_delay(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native max_index_size()I
.end method
.method public native max_index_size(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native max_picture_buffer()I
.end method
.method public native max_picture_buffer(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native metadata(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native metadata()Lcom/googlecode/javacv/cpp/avutil$AVDictionary;
.end method
.method public native nb_chapters()I
.end method
.method public native nb_chapters(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native nb_programs()I
.end method
.method public native nb_programs(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native nb_streams()I
.end method
.method public native nb_streams(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native offset()J
.end method
.method public native offset(J)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native offset_timebase(Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native offset_timebase()Lcom/googlecode/javacv/cpp/avutil$AVRational;
.end method
.method public native oformat(Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native oformat()Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method
.method public native packet_buffer(Lcom/googlecode/javacv/cpp/avformat$AVPacketList;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native packet_buffer()Lcom/googlecode/javacv/cpp/avformat$AVPacketList;
.end method
.method public native packet_buffer_end(Lcom/googlecode/javacv/cpp/avformat$AVPacketList;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native packet_buffer_end()Lcom/googlecode/javacv/cpp/avformat$AVPacketList;
.end method
.method public native packet_size()I
.end method
.method public native packet_size(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native parse_queue(Lcom/googlecode/javacv/cpp/avformat$AVPacketList;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native parse_queue()Lcom/googlecode/javacv/cpp/avformat$AVPacketList;
.end method
.method public native parse_queue_end(Lcom/googlecode/javacv/cpp/avformat$AVPacketList;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native parse_queue_end()Lcom/googlecode/javacv/cpp/avformat$AVPacketList;
.end method
.method public native pb(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native pb()Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->position(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
return-object v0
.end method
.method public native priv_data()Lcom/googlecode/javacpp/Pointer;
.end method
.method public native priv_data(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native probesize()I
.end method
.method public native probesize(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native programs()Lcom/googlecode/javacpp/PointerPointer;
.end method
.method public native programs(ILcom/googlecode/javacv/cpp/avformat$AVProgram;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native programs(I)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.end method
.method public native raw_packet_buffer(Lcom/googlecode/javacv/cpp/avformat$AVPacketList;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native raw_packet_buffer()Lcom/googlecode/javacv/cpp/avformat$AVPacketList;
.end method
.method public native raw_packet_buffer_end(Lcom/googlecode/javacv/cpp/avformat$AVPacketList;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native raw_packet_buffer_end()Lcom/googlecode/javacv/cpp/avformat$AVPacketList;
.end method
.method public native raw_packet_buffer_remaining_size()I
.end method
.method public native raw_packet_buffer_remaining_size(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native seek2any()I
.end method
.method public native seek2any(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native skip_initial_bytes()I
.end method
.method public native skip_initial_bytes(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native start_time()J
.end method
.method public native start_time(J)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native start_time_realtime()J
.end method
.method public native start_time_realtime(J)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native streams()Lcom/googlecode/javacpp/PointerPointer;
.end method
.method public native streams(ILcom/googlecode/javacv/cpp/avformat$AVStream;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native streams(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method
.method public native subtitle_codec_id()I
.end method
.method public native subtitle_codec_id(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native ts_id()I
.end method
.method public native ts_id(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native use_wallclock_as_timestamps()I
.end method
.method public native use_wallclock_as_timestamps(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public native video_codec_id()I
.end method
.method public native video_codec_id(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method