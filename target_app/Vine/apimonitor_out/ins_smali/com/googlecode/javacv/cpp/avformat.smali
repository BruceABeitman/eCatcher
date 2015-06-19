.class public Lcom/googlecode/javacv/cpp/avformat;
.super Ljava/lang/Object;
.source "avformat.java"
.field public static final AVFMTCTX_NOHEADER:I = 0x1
.field public static final AVFMT_ALLOW_FLUSH:I = 0x10000
.field public static final AVFMT_DURATION_FROM_BITRATE:I = 0x2
.field public static final AVFMT_DURATION_FROM_PTS:I = 0x0
.field public static final AVFMT_DURATION_FROM_STREAM:I = 0x1
.field public static final AVFMT_GENERIC_INDEX:I = 0x100
.field public static final AVFMT_GLOBALHEADER:I = 0x40
.field public static final AVFMT_NEEDNUMBER:I = 0x2
.field public static final AVFMT_NOBINSEARCH:I = 0x2000
.field public static final AVFMT_NODIMENSIONS:I = 0x800
.field public static final AVFMT_NOFILE:I = 0x1
.field public static final AVFMT_NOGENSEARCH:I = 0x4000
.field public static final AVFMT_NOSTREAMS:I = 0x1000
.field public static final AVFMT_NOTIMESTAMPS:I = 0x80
.field public static final AVFMT_NO_BYTE_SEEK:I = 0x8000
.field public static final AVFMT_RAWPICTURE:I = 0x20
.field public static final AVFMT_SEEK_TO_PTS:I = 0x4000000
.field public static final AVFMT_SHOW_IDS:I = 0x8
.field public static final AVFMT_TS_DISCONT:I = 0x200
.field public static final AVFMT_TS_NEGATIVE:I = 0x40000
.field public static final AVFMT_TS_NONSTRICT:I = 0x20000
.field public static final AVFMT_VARIABLE_FPS:I = 0x400
.field public static final AVIO_FLAG_DIRECT:I = 0x8000
.field public static final AVIO_FLAG_NONBLOCK:I = 0x8
.field public static final AVIO_FLAG_READ:I = 0x1
.field public static final AVIO_FLAG_READ_WRITE:I = 0x3
.field public static final AVIO_FLAG_WRITE:I = 0x2
.field public static final AVIO_SEEKABLE_NORMAL:I = 0x1
.field public static final AVPROBE_PADDING_SIZE:I = 0x20
.field public static final AVPROBE_SCORE_EXTENSION:I = 0x32
.field public static final AVPROBE_SCORE_MAX:I = 0x64
.field public static final AVPROBE_SCORE_RETRY:I = 0x0
.field public static final AVSEEK_FLAG_ANY:I = 0x4
.field public static final AVSEEK_FLAG_BACKWARD:I = 0x1
.field public static final AVSEEK_FLAG_BYTE:I = 0x2
.field public static final AVSEEK_FLAG_FRAME:I = 0x8
.field public static final AVSEEK_FORCE:I = 0x20000
.field public static final AVSEEK_SIZE:I = 0x10000
.field public static final AVSTREAM_PARSE_FULL:I = 0x1
.field public static final AVSTREAM_PARSE_FULL_ONCE:I = 0x4
.field public static final AVSTREAM_PARSE_FULL_RAW:I = 0x0
.field public static final AVSTREAM_PARSE_HEADERS:I = 0x2
.field public static final AVSTREAM_PARSE_NONE:I = 0x0
.field public static final AVSTREAM_PARSE_TIMESTAMPS:I = 0x3
.field public static final AV_DISPOSITION_ATTACHED_PIC:I = 0x400
.field public static final AV_DISPOSITION_CAPTIONS:I = 0x10000
.field public static final AV_DISPOSITION_CLEAN_EFFECTS:I = 0x200
.field public static final AV_DISPOSITION_COMMENT:I = 0x8
.field public static final AV_DISPOSITION_DEFAULT:I = 0x1
.field public static final AV_DISPOSITION_DESCRIPTIONS:I = 0x20000
.field public static final AV_DISPOSITION_DUB:I = 0x2
.field public static final AV_DISPOSITION_FORCED:I = 0x40
.field public static final AV_DISPOSITION_HEARING_IMPAIRED:I = 0x80
.field public static final AV_DISPOSITION_KARAOKE:I = 0x20
.field public static final AV_DISPOSITION_LYRICS:I = 0x10
.field public static final AV_DISPOSITION_METADATA:I = 0x40000
.field public static final AV_DISPOSITION_ORIGINAL:I = 0x4
.field public static final AV_DISPOSITION_VISUAL_IMPAIRED:I = 0x100
.field public static final AV_PROGRAM_RUNNING:I = 0x1
.field public static final AV_PTS_WRAP_ADD_OFFSET:I = 0x1
.field public static final AV_PTS_WRAP_IGNORE:I = 0x0
.field public static final AV_PTS_WRAP_SUB_OFFSET:I = -0x1
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;
invoke-static {}, Lcom/googlecode/javacv/cpp/avformat;->AVPROBE_SCORE_RETRY()I
move-result v0
sput v0, Lcom/googlecode/javacv/cpp/avformat;->AVPROBE_SCORE_RETRY:I
invoke-static {}, Lcom/googlecode/javacv/cpp/avformat;->AVSTREAM_PARSE_FULL_RAW()I
move-result v0
sput v0, Lcom/googlecode/javacv/cpp/avformat;->AVSTREAM_PARSE_FULL_RAW:I
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static native AVPROBE_SCORE_RETRY()I
.end method
.method public static native AVSTREAM_PARSE_FULL_RAW()I
.end method
.method public static native av_add_index_entry(Lcom/googlecode/javacv/cpp/avformat$AVStream;JJIII)I
.end method
.method public static native av_append_packet(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;I)I
.end method
.method public static native av_close_input_file(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;)V
.end method
.method public static native av_codec_get_id(Lcom/googlecode/javacpp/PointerPointer;I)I
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_codec_get_id(Lcom/googlecode/javacv/cpp/avformat$AVCodecTag;I)I
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_codec_get_tag(Lcom/googlecode/javacpp/PointerPointer;I)I
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_codec_get_tag(Lcom/googlecode/javacv/cpp/avformat$AVCodecTag;I)I
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_codec_get_tag2(Lcom/googlecode/javacpp/PointerPointer;ILcom/googlecode/javacpp/IntPointer;)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_codec_get_tag2(Lcom/googlecode/javacv/cpp/avformat$AVCodecTag;ILcom/googlecode/javacpp/IntPointer;)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_codec_get_tag2(Lcom/googlecode/javacv/cpp/avformat$AVCodecTag;ILjava/nio/IntBuffer;)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_codec_get_tag2(Lcom/googlecode/javacv/cpp/avformat$AVCodecTag;I[I)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_demuxer_open(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;)I
.end method
.method public static native av_dump_format(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;ILcom/googlecode/javacpp/BytePointer;I)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_dump_format(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;ILjava/lang/String;I)V
.end method
.method public static native av_filename_number_test(Lcom/googlecode/javacpp/BytePointer;)I
.parameter
.end parameter
.end method
.method public static native av_filename_number_test(Ljava/lang/String;)I
.end method
.method public static native av_find_best_stream(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;IIILcom/googlecode/javacpp/PointerPointer;I)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_find_best_stream(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;IIILcom/googlecode/javacv/cpp/avcodec$AVCodec;I)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_find_default_stream_index(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;)I
.end method
.method public static native av_find_input_format(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
.parameter
.end parameter
.end method
.method public static native av_find_input_format(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
.end method
.method public static native av_find_program_from_stream(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avformat$AVProgram;I)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.end method
.method public static native av_find_stream_info(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;)I
.end method
.method public static native av_fmt_ctx_get_duration_estimation_method(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;)I
.parameter
.end parameter
.end method
.method public static native av_get_frame_filename(Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/BytePointer;I)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_get_frame_filename(Lcom/googlecode/javacpp/BytePointer;ILjava/lang/String;I)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_get_frame_filename(Ljava/nio/ByteBuffer;ILcom/googlecode/javacpp/BytePointer;I)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_get_frame_filename(Ljava/nio/ByteBuffer;ILjava/lang/String;I)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_get_frame_filename([BILcom/googlecode/javacpp/BytePointer;I)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_get_frame_filename([BILjava/lang/String;I)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_get_output_timestamp(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;ILcom/googlecode/javacpp/LongPointer;Lcom/googlecode/javacpp/LongPointer;)I
.end method
.method public static native av_get_output_timestamp(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;ILjava/nio/LongBuffer;Ljava/nio/LongBuffer;)I
.end method
.method public static native av_get_output_timestamp(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;I[J[J)I
.end method
.method public static native av_get_packet(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;I)I
.end method
.method public static native av_guess_codec(Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;I)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_guess_codec(Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_guess_format(Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_guess_format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method
.method public static native av_guess_frame_rate(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avformat$AVStream;Lcom/googlecode/javacv/cpp/avutil$AVFrame;)Lcom/googlecode/javacv/cpp/avutil$AVRational;
.end method
.method public static native av_guess_sample_aspect_ratio(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avformat$AVStream;Lcom/googlecode/javacv/cpp/avutil$AVFrame;)Lcom/googlecode/javacv/cpp/avutil$AVRational;
.end method
.method public static native av_hex_dump(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;I)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_hex_dump(Lcom/googlecode/javacpp/Pointer;Ljava/nio/ByteBuffer;I)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_hex_dump(Lcom/googlecode/javacpp/Pointer;[BI)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_hex_dump_log(Lcom/googlecode/javacpp/Pointer;ILcom/googlecode/javacpp/BytePointer;I)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_hex_dump_log(Lcom/googlecode/javacpp/Pointer;ILjava/nio/ByteBuffer;I)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_hex_dump_log(Lcom/googlecode/javacpp/Pointer;I[BI)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_iformat_next(Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;)Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
.end method
.method public static native av_index_search_timestamp(Lcom/googlecode/javacv/cpp/avformat$AVStream;JI)I
.end method
.method public static native av_interleaved_write_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I
.end method
.method public static native av_match_ext(Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;)I
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_match_ext(Ljava/lang/String;Ljava/lang/String;)I
.end method
.method public static native av_new_program(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;I)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.end method
.method public static native av_new_stream(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method
.method public static native av_oformat_next(Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method
.method public static native av_pkt_dump2(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;ILcom/googlecode/javacv/cpp/avformat$AVStream;)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_pkt_dump_log2(Lcom/googlecode/javacpp/Pointer;ILcom/googlecode/javacv/cpp/avcodec$AVPacket;ILcom/googlecode/javacv/cpp/avformat$AVStream;)V
.end method
.method public static native av_probe_input_buffer(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/Pointer;II)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_probe_input_buffer(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/Pointer;II)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_probe_input_buffer(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;Ljava/lang/String;Lcom/googlecode/javacpp/Pointer;II)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_probe_input_format(Lcom/googlecode/javacv/cpp/avformat$AVProbeData;I)Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
.end method
.method public static native av_probe_input_format2(Lcom/googlecode/javacv/cpp/avformat$AVProbeData;ILcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
.end method
.method public static native av_probe_input_format2(Lcom/googlecode/javacv/cpp/avformat$AVProbeData;ILjava/nio/IntBuffer;)Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
.end method
.method public static native av_probe_input_format2(Lcom/googlecode/javacv/cpp/avformat$AVProbeData;I[I)Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
.end method
.method public static native av_probe_input_format3(Lcom/googlecode/javacv/cpp/avformat$AVProbeData;ILcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
.end method
.method public static native av_probe_input_format3(Lcom/googlecode/javacv/cpp/avformat$AVProbeData;ILjava/nio/IntBuffer;)Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
.end method
.method public static native av_probe_input_format3(Lcom/googlecode/javacv/cpp/avformat$AVProbeData;I[I)Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
.end method
.method public static native av_read_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I
.end method
.method public static native av_read_packet(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I
.end method
.method public static native av_read_pause(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;)I
.end method
.method public static native av_read_play(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;)I
.end method
.method public static native av_register_all()V
.end method
.method public static native av_register_input_format(Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;)V
.end method
.method public static native av_register_output_format(Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;)V
.end method
.method public static native av_sdp_create(Lcom/googlecode/javacpp/PointerPointer;ILcom/googlecode/javacpp/BytePointer;I)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_sdp_create(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;ILcom/googlecode/javacpp/BytePointer;I)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_sdp_create(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;ILjava/nio/ByteBuffer;I)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_sdp_create(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;I[BI)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_seek_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;IJI)I
.end method
.method public static native av_set_pts_info(Lcom/googlecode/javacv/cpp/avformat$AVStream;III)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_stream_get_r_frame_rate(Lcom/googlecode/javacv/cpp/avformat$AVStream;)Lcom/googlecode/javacv/cpp/avutil$AVRational;
.parameter
.end parameter
.end method
.method public static native av_stream_set_r_frame_rate(Lcom/googlecode/javacv/cpp/avformat$AVStream;Lcom/googlecode/javacv/cpp/avutil$AVRational;)V
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_url_split(Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/BytePointer;)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_url_split(Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/BytePointer;ILjava/lang/String;)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_url_split(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/IntBuffer;Ljava/nio/ByteBuffer;ILcom/googlecode/javacpp/BytePointer;)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_url_split(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/IntBuffer;Ljava/nio/ByteBuffer;ILjava/lang/String;)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_url_split([BI[BI[BI[I[BILcom/googlecode/javacpp/BytePointer;)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_url_split([BI[BI[BI[I[BILjava/lang/String;)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native av_write_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I
.end method
.method public static native av_write_trailer(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;)I
.end method
.method public static native avformat_alloc_context()Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public static native avformat_alloc_output_context(Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avformat_alloc_output_context(Ljava/lang/String;Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;Ljava/lang/String;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
.method public static native avformat_alloc_output_context2(Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avformat_alloc_output_context2(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avformat_alloc_output_context2(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;Ljava/lang/String;Ljava/lang/String;)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avformat_close_input(Lcom/googlecode/javacpp/PointerPointer;)V
.parameter
.end parameter
.end method
.method public static native avformat_close_input(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;)V
.parameter
.end parameter
.end method
.method public static native avformat_configuration()Lcom/googlecode/javacpp/BytePointer;
.end method
.method public static native avformat_find_stream_info(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacpp/PointerPointer;)I
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avformat_find_stream_info(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avformat_free_context(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;)V
.end method
.method public static native avformat_get_class()Lcom/googlecode/javacv/cpp/avutil$AVClass;
.end method
.method public static native avformat_get_riff_audio_tags()Lcom/googlecode/javacv/cpp/avformat$AVCodecTag;
.end method
.method public static native avformat_get_riff_video_tags()Lcom/googlecode/javacv/cpp/avformat$AVCodecTag;
.end method
.method public static native avformat_license()Lcom/googlecode/javacpp/BytePointer;
.end method
.method public static native avformat_match_stream_specifier(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avformat$AVStream;Lcom/googlecode/javacpp/BytePointer;)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avformat_match_stream_specifier(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avformat$AVStream;Ljava/lang/String;)I
.end method
.method public static native avformat_network_deinit()I
.end method
.method public static native avformat_network_init()I
.end method
.method public static native avformat_new_stream(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodec;)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avformat_open_input(Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;Lcom/googlecode/javacpp/PointerPointer;)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avformat_open_input(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avformat_open_input(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Ljava/lang/String;Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avformat_query_codec(Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;II)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avformat_queue_attached_pictures(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;)I
.end method
.method public static native avformat_seek_file(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;IJJJI)I
.end method
.method public static native avformat_version()I
.end method
.method public static native avformat_write_header(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacpp/PointerPointer;)I
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avformat_write_header(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_alloc_context(Lcom/googlecode/javacpp/BytePointer;IILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avformat$Read_packet_Pointer_BytePointer_int;Lcom/googlecode/javacv/cpp/avformat$Write_packet_Pointer_BytePointer_int;Lcom/googlecode/javacv/cpp/avformat$Seek_Pointer_long_int;)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_alloc_context(Ljava/nio/ByteBuffer;IILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avformat$Read_packet_Pointer_ByteBuffer_int;Lcom/googlecode/javacv/cpp/avformat$Write_packet_Pointer_ByteBuffer_int;Lcom/googlecode/javacv/cpp/avformat$Seek_Pointer_long_int;)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_alloc_context([BIILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avformat$Read_packet_Pointer_byte_int;Lcom/googlecode/javacv/cpp/avformat$Write_packet_Pointer_byte_int;Lcom/googlecode/javacv/cpp/avformat$Seek_Pointer_long_int;)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_check(Lcom/googlecode/javacpp/BytePointer;I)I
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_check(Ljava/lang/String;I)I
.end method
.method public static native avio_close(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)I
.end method
.method public static native avio_close_dyn_buf(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Lcom/googlecode/javacpp/BytePointer;)I
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_close_dyn_buf(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Lcom/googlecode/javacpp/PointerPointer;)I
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_close_dyn_buf(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Ljava/nio/ByteBuffer;)I
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_close_dyn_buf(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;[B)I
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_closep(Lcom/googlecode/javacpp/PointerPointer;)I
.parameter
.end parameter
.end method
.method public static native avio_closep(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)I
.parameter
.end parameter
.end method
.method public static native avio_enum_protocols(Lcom/googlecode/javacpp/Pointer;I)Lcom/googlecode/javacpp/BytePointer;
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_enum_protocols(Lcom/googlecode/javacpp/PointerPointer;I)Lcom/googlecode/javacpp/BytePointer;
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_flush(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)V
.end method
.method public static native avio_get_str(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;ILcom/googlecode/javacpp/BytePointer;I)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_get_str(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;ILjava/nio/ByteBuffer;I)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_get_str(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;I[BI)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_get_str16be(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;ILcom/googlecode/javacpp/BytePointer;I)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_get_str16be(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;ILjava/nio/ByteBuffer;I)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_get_str16be(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;I[BI)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_get_str16le(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;ILcom/googlecode/javacpp/BytePointer;I)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_get_str16le(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;ILjava/nio/ByteBuffer;I)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_get_str16le(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;I[BI)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_open(Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/BytePointer;I)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_open(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Lcom/googlecode/javacpp/BytePointer;I)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_open(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Ljava/lang/String;I)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_open2(Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacv/cpp/avformat$AVIOInterruptCB;Lcom/googlecode/javacpp/PointerPointer;)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_open2(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacv/cpp/avformat$AVIOInterruptCB;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_open2(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Ljava/lang/String;ILcom/googlecode/javacv/cpp/avformat$AVIOInterruptCB;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_open_dyn_buf(Lcom/googlecode/javacpp/PointerPointer;)I
.parameter
.end parameter
.end method
.method public static native avio_open_dyn_buf(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)I
.parameter
.end parameter
.end method
.method public static native avio_pause(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;I)I
.end method
.method public static native avio_printf(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Lcom/googlecode/javacpp/BytePointer;)I
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_printf(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Ljava/lang/String;)I
.end method
.method public static native avio_put_str(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Lcom/googlecode/javacpp/BytePointer;)I
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_put_str(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Ljava/lang/String;)I
.end method
.method public static native avio_put_str16le(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Lcom/googlecode/javacpp/BytePointer;)I
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_put_str16le(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Ljava/lang/String;)I
.end method
.method public static native avio_r8(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)I
.end method
.method public static native avio_rb16(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)I
.end method
.method public static native avio_rb24(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)I
.end method
.method public static native avio_rb32(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)I
.end method
.method public static native avio_rb64(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)J
.end method
.method public static native avio_read(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Lcom/googlecode/javacpp/BytePointer;I)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_read(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Ljava/nio/ByteBuffer;I)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_read(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;[BI)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_rl16(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)I
.end method
.method public static native avio_rl24(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)I
.end method
.method public static native avio_rl32(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)I
.end method
.method public static native avio_rl64(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)J
.end method
.method public static native avio_seek(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;JI)J
.end method
.method public static native avio_seek_time(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;IJI)J
.end method
.method public static native avio_size(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)J
.end method
.method public static native avio_skip(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;J)J
.end method
.method public static native avio_tell(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)J
.end method
.method public static native avio_w8(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;I)V
.end method
.method public static native avio_wb16(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;I)V
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_wb24(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;I)V
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_wb32(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;I)V
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_wb64(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;J)V
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_wl16(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;I)V
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_wl24(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;I)V
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_wl32(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;I)V
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_wl64(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;J)V
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_write(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Lcom/googlecode/javacpp/BytePointer;I)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_write(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Ljava/nio/ByteBuffer;I)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native avio_write(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;[BI)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native url_feof(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)I
.end method