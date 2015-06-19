.class public Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.super Lcom/googlecode/javacpp/Pointer;
.source "avformat.java"
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->allocate()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->allocateArray(I)V
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
.method public native audio_codec()I
.end method
.method public native audio_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method
.method public native codec_tag()Lcom/googlecode/javacpp/PointerPointer;
.end method
.method public native codec_tag(I)Lcom/googlecode/javacv/cpp/avformat$AVCodecTag;
.end method
.method public native extensions()Lcom/googlecode/javacpp/BytePointer;
.end method
.method public native flags()I
.end method
.method public native flags(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method
.method public native get_output_timestamp()Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat$Get_output_timestamp_AVFormatContext_int_LongPointer_LongPointer;
.end method
.method public native get_output_timestamp(Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat$Get_output_timestamp_AVFormatContext_int_LongPointer_LongPointer;)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method
.method public native interleave_packet()Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat$Interleave_packet_AVFormatContext_AVPacket_AVPacket_int;
.end method
.method public native interleave_packet(Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat$Interleave_packet_AVFormatContext_AVPacket_AVPacket_int;)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method
.method public native long_name()Lcom/googlecode/javacpp/BytePointer;
.end method
.method public native mime_type()Lcom/googlecode/javacpp/BytePointer;
.end method
.method public native name()Lcom/googlecode/javacpp/BytePointer;
.end method
.method public native next()Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method
.method public native next(Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->position(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
return-object v0
.end method
.method public native priv_class()Lcom/googlecode/javacv/cpp/avutil$AVClass;
.end method
.method public native priv_data_size()I
.end method
.method public native priv_data_size(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method
.method public native query_codec()Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat$Query_codec_int_int;
.end method
.method public native query_codec(Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat$Query_codec_int_int;)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method
.method public native subtitle_codec()I
.end method
.method public native subtitle_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method
.method public native video_codec()I
.end method
.method public native video_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method
.method public native write_header()Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat$Write_header_AVFormatContext;
.end method
.method public native write_header(Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat$Write_header_AVFormatContext;)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method
.method public native write_packet()Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat$Write_packet_AVFormatContext_AVPacket;
.end method
.method public native write_packet(Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat$Write_packet_AVFormatContext_AVPacket;)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method
.method public native write_trailer()Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat$Write_trailer_AVFormatContext;
.end method
.method public native write_trailer(Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat$Write_trailer_AVFormatContext;)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method