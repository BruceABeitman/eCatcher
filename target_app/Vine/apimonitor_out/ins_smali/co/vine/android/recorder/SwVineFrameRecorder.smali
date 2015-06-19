.class public Lco/vine/android/recorder/SwVineFrameRecorder;
.super Ljava/lang/Object;
.source "SwVineFrameRecorder.java"
.field static final synthetic $assertionsDisabled:Z
.field public static final LOCK:[I
.field public static hasEverSuccessfullyLoaded:Z
.field private static loadingException:Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
.field protected audioBitrate:I
.field protected audioChannels:I
.field protected audioCodec:I
.field protected audioCodecName:Ljava/lang/String;
.field protected audioOptions:Ljava/util/HashMap;
.field protected audioQuality:D
.field private audioRecordTime:J
.field private audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.field private audio_clock:J
.field private audio_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.field private audio_input_frame_size:I
.field private audio_outbuf:Lcom/googlecode/javacpp/BytePointer;
.field private audio_outbuf_size:I
.field public audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
.field private audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
.field private filename:Ljava/lang/String;
.field protected format:Ljava/lang/String;
.field private frame:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
.field protected frameNumber:I
.field protected frameRate:D
.field private got_audio_packet:[I
.field private got_video_packet:[I
.field private hasData:Z
.field protected imageHeight:I
.field protected imageWidth:I
.field private img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;
.field protected interleaved:Z
.field private volatile isReleased:Z
.field private isVorbis:Z
.field private oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.field private oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.field private picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
.field private picture_buf:Lcom/googlecode/javacpp/BytePointer;
.field protected pixelFormat:I
.field protected sampleFormat:I
.field protected sampleRate:I
.field private samples_convert_ctx:Lcom/googlecode/javacv/cpp/swresample$SwrContext;
.field private samples_in:[Lcom/googlecode/javacpp/Pointer;
.field private samples_in_ptr:Lcom/googlecode/javacpp/PointerPointer;
.field private samples_out:[Lcom/googlecode/javacpp/BytePointer;
.field private samples_out_ptr:Lcom/googlecode/javacpp/PointerPointer;
.field protected timestamp:J
.field private tmp_picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
.field protected videoBitrate:I
.field protected videoCodec:I
.field protected videoCodecName:Ljava/lang/String;
.field private videoEncodeTime:J
.field protected videoOptions:Ljava/util/HashMap;
.field protected videoQuality:D
.field private videoScaleTime:J
.field private videoWriteTime:J
.field private video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.field private video_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
.field private video_outbuf:Lcom/googlecode/javacpp/BytePointer;
.field private video_outbuf_size:I
.field public video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
.field private video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
const-class v0, Lco/vine/android/recorder/SwVineFrameRecorder;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_20
const/4 v0, 0x1
:goto_a
sput-boolean v0, Lco/vine/android/recorder/SwVineFrameRecorder;->$assertionsDisabled:Z
new-array v0, v1, [I
sput-object v0, Lco/vine/android/recorder/SwVineFrameRecorder;->LOCK:[I
const/4 v0, 0x0
sput-object v0, Lco/vine/android/recorder/SwVineFrameRecorder;->loadingException:Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
sput-boolean v1, Lco/vine/android/recorder/SwVineFrameRecorder;->hasEverSuccessfullyLoaded:Z
sget-object v1, Lco/vine/android/recorder/SwVineFrameRecorder;->LOCK:[I
monitor-enter v1
:try_start_18
invoke-static {}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_register_all()V
invoke-static {}, Lcom/googlecode/javacv/cpp/avformat;->av_register_all()V
monitor-exit v1
return-void
:cond_20
move v0, v1
goto :goto_a
:catchall_22
move-exception v0
monitor-exit v1
:try_end_24
.catchall {:try_start_18 .. :try_end_24} :catchall_22
throw v0
.end method
.method public constructor <init>(Ljava/io/File;I)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, v0, v0, p2}, Lco/vine/android/recorder/SwVineFrameRecorder;-><init>(Ljava/io/File;III)V
return-void
.end method
.method public constructor <init>(Ljava/io/File;II)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3, v0}, Lco/vine/android/recorder/SwVineFrameRecorder;-><init>(Ljava/io/File;III)V
return-void
.end method
.method public constructor <init>(Ljava/io/File;III)V
.registers 6
invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0, p2, p3, p4}, Lco/vine/android/recorder/SwVineFrameRecorder;-><init>(Ljava/lang/String;III)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;I)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, v0, v0, p2}, Lco/vine/android/recorder/SwVineFrameRecorder;-><init>(Ljava/lang/String;III)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;II)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3, v0}, Lco/vine/android/recorder/SwVineFrameRecorder;-><init>(Ljava/lang/String;III)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;III)V
.registers 12
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move v2, p2
move v3, p3
move v4, p4
move-object v6, v5
invoke-direct/range {v0 .. v6}, Lco/vine/android/recorder/SwVineFrameRecorder;-><init>(Ljava/lang/String;IIILcom/googlecode/javacv/cpp/avcodec$AVPacket;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;IIILcom/googlecode/javacv/cpp/avcodec$AVPacket;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)V
.registers 12
const/4 v4, -0x1
const-wide/high16 v0, -0x4010
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoQuality:D
iput-wide v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioQuality:D
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoOptions:Ljava/util/HashMap;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioOptions:Ljava/util/HashMap;
iput v3, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->frameNumber:I
const-wide/16 v0, 0x0
iput-wide v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->timestamp:J
iput-boolean v3, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->hasData:Z
iput-boolean v3, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->isReleased:Z
const-string v0, "Creating a recorder thats {} * {}"
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
iput-object p1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->filename:Ljava/lang/String;
iput p2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->imageWidth:I
iput p3, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->imageHeight:I
iput p4, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioChannels:I
iput v4, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->pixelFormat:I
iput v3, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoCodec:I
sget v0, Lco/vine/android/recorder/RecordConfigUtils;->VIDEO_BIT_RATE:I
iput v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoBitrate:I
const-wide/high16 v0, 0x403e
iput-wide v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->frameRate:D
iput v4, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->sampleFormat:I
iput v3, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioCodec:I
sget v0, Lco/vine/android/recorder/RecordConfigUtils;->AUDIO_BIT_RATE:I
iput v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioBitrate:I
const v0, 0xac44
iput v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->sampleRate:I
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->interleaved:Z
if-eqz p5, :cond_5d
:goto_56
iput-object p5, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
if-eqz p6, :cond_63
:goto_5a
iput-object p6, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
return-void
:cond_5d
new-instance p5, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-direct {p5}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;-><init>()V
goto :goto_56
:cond_63
new-instance p6, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-direct {p6}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;-><init>()V
goto :goto_5a
.end method
.method public static tryLoad(Landroid/content/Context;)V
.registers 5
const/4 v2, 0x1
sget-object v1, Lco/vine/android/recorder/SwVineFrameRecorder;->loadingException:Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
if-eqz v1, :cond_8
sget-object v1, Lco/vine/android/recorder/SwVineFrameRecorder;->loadingException:Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
throw v1
:cond_8
:try_start_8
const-class v1, Lcom/googlecode/javacv/cpp/avutil;
invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;
const-class v1, Lcom/googlecode/javacv/cpp/avcodec;
invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;
const-class v1, Lcom/googlecode/javacv/cpp/avformat;
invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;
const-class v1, Lcom/googlecode/javacv/cpp/swscale;
invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;
const-class v1, Lcom/googlecode/javacv/cpp/swresample;
invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;
const/4 v1, 0x1
sput-boolean v1, Lco/vine/android/recorder/SwVineFrameRecorder;->hasEverSuccessfullyLoaded:Z
:try_end_24
.catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_24} :catch_28
invoke-static {p0, v2}, Lco/vine/android/recorder/RecordConfigUtils;->setLoadWasEverSuccessful(Landroid/content/Context;Z)V
return-void
:catch_28
move-exception v0
instance-of v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
if-eqz v1, :cond_32
check-cast v0, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
sput-object v0, Lco/vine/android/recorder/SwVineFrameRecorder;->loadingException:Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
throw v0
:cond_32
new-instance v1, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Failed to load "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-class v3, Lco/vine/android/recorder/SwVineFrameRecorder;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
sput-object v1, Lco/vine/android/recorder/SwVineFrameRecorder;->loadingException:Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
throw v1
.end method
.method private writeVideoFrame()I
.registers 10
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iget-object v4, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
monitor-enter v4
:try_start_7
iget-boolean v3, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->interleaved:Z
if-eqz v3, :cond_3b
iget-object v3, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
if-eqz v3, :cond_3b
iget-object v3, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
iget-object v5, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-static {v3, v5}, Lcom/googlecode/javacv/cpp/avformat;->av_interleaved_write_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I
move-result v0
if-gez v0, :cond_64
new-instance v3, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "av_interleaved_write_frame() error "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, " while writing interleaved video frame."
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v3, v5}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;)V
throw v3
:catchall_38
move-exception v3
monitor-exit v4
:try_end_3a
.catchall {:try_start_7 .. :try_end_3a} :catchall_38
throw v3
:try_start_3b
:cond_3b
iget-object v3, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
iget-object v5, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-static {v3, v5}, Lcom/googlecode/javacv/cpp/avformat;->av_write_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I
move-result v0
if-gez v0, :cond_64
new-instance v3, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "av_write_frame() error "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, " while writing video frame."
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v3, v5}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;)V
throw v3
:cond_64
iget-wide v5, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoWriteTime:J
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v7
sub-long/2addr v7, v1
add-long/2addr v5, v7
iput-wide v5, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoWriteTime:J
monitor-exit v4
:try_end_6f
.catchall {:try_start_3b .. :try_end_6f} :catchall_38
return v0
.end method
.method public encode(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[BI)I
.registers 7
const/4 v1, -0x1
const/4 v2, 0x1
invoke-virtual {p0, p1, v1, v2}, Lco/vine/android/recorder/SwVineFrameRecorder;->record(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;IZ)Z
move-result v2
if-eqz v2, :cond_19
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->data()Lcom/googlecode/javacpp/BytePointer;
move-result-object v0
if-eqz v0, :cond_19
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size()I
move-result v1
invoke-virtual {v0, p2, p3, v1}, Lcom/googlecode/javacpp/BytePointer;->get([BII)Lcom/googlecode/javacpp/BytePointer;
:cond_19
return v1
.end method
.method protected finalize()V
.registers 1
invoke-super {p0}, Ljava/lang/Object;->finalize()V
invoke-virtual {p0}, Lco/vine/android/recorder/SwVineFrameRecorder;->release()V
return-void
.end method
.method public getAudioCodecName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioCodecName:Ljava/lang/String;
return-object v0
.end method
.method public getErrorString(I)Ljava/lang/String;
.registers 10
const/16 v6, 0x40
new-array v5, v6, [B
array-length v6, v5
int-to-long v6, v6
invoke-static {v5, v6, v7, p1}, Lcom/googlecode/javacv/cpp/avutil;->av_make_error_string([BJI)[B
const/4 v2, 0x0
move-object v1, v5
array-length v4, v1
const/4 v3, 0x0
:goto_d
if-ge v3, v4, :cond_13
aget-byte v0, v1, v3
if-nez v0, :cond_1a
:cond_13
new-instance v6, Ljava/lang/String;
const/4 v7, 0x0
invoke-direct {v6, v5, v7, v2}, Ljava/lang/String;-><init>([BII)V
return-object v6
:cond_1a
add-int/lit8 v2, v2, 0x1
add-int/lit8 v3, v3, 0x1
goto :goto_d
.end method
.method public getFilename()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->filename:Ljava/lang/String;
return-object v0
.end method
.method public getFormat()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->format:Ljava/lang/String;
return-object v0
.end method
.method public getFrameNumber()I
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
if-nez v0, :cond_c
iget-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->pts()J
move-result-wide v0
long-to-int v0, v0
:goto_b
return v0
:cond_c
iget-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->pts()J
move-result-wide v0
long-to-int v0, v0
goto :goto_b
.end method
.method public getFrameRate()D
.registers 3
iget-wide v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->frameRate:D
return-wide v0
.end method
.method public getTimestamp()J
.registers 5
const-wide/32 v2, 0xf4240
iget-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
if-nez v0, :cond_f
iget-wide v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_clock:J
mul-long/2addr v0, v2
iget v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->sampleRate:I
int-to-long v2, v2
div-long/2addr v0, v2
:goto_e
return-wide v0
:cond_f
invoke-virtual {p0}, Lco/vine/android/recorder/SwVineFrameRecorder;->getFrameNumber()I
move-result v0
int-to-long v0, v0
mul-long/2addr v0, v2
long-to-double v0, v0
invoke-virtual {p0}, Lco/vine/android/recorder/SwVineFrameRecorder;->getFrameRate()D
move-result-wide v2
div-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J
move-result-wide v0
goto :goto_e
.end method
.method public getVideoCodecName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoCodecName:Ljava/lang/String;
return-object v0
.end method
.method public getVideoCodecPixFormat()I
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt()I
move-result v0
return v0
.end method
.method public hasData()Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->hasData:Z
return v0
.end method
.method public isReleased()Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->isReleased:Z
return v0
.end method
.method public record(Lcom/googlecode/javacv/Frame;)V
.registers 3
if-eqz p1, :cond_a
iget-object v0, p1, Lcom/googlecode/javacv/Frame;->image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
if-nez v0, :cond_11
iget-object v0, p1, Lcom/googlecode/javacv/Frame;->samples:[Ljava/nio/Buffer;
if-nez v0, :cond_11
:cond_a
const/4 v0, 0x0
check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
invoke-virtual {p0, v0}, Lco/vine/android/recorder/SwVineFrameRecorder;->record(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Z
:goto_10
:cond_10
return-void
:cond_11
iget-object v0, p1, Lcom/googlecode/javacv/Frame;->image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
if-eqz v0, :cond_1d
iget-object v0, p1, Lcom/googlecode/javacv/Frame;->image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
invoke-virtual {p0, v0}, Lco/vine/android/recorder/SwVineFrameRecorder;->record(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Z
move-result v0
iput-boolean v0, p1, Lcom/googlecode/javacv/Frame;->keyFrame:Z
:cond_1d
iget-object v0, p1, Lcom/googlecode/javacv/Frame;->samples:[Ljava/nio/Buffer;
if-eqz v0, :cond_10
iget-object v0, p1, Lcom/googlecode/javacv/Frame;->samples:[Ljava/nio/Buffer;
invoke-virtual {p0, v0}, Lco/vine/android/recorder/SwVineFrameRecorder;->record([Ljava/nio/Buffer;)Z
move-result v0
iput-boolean v0, p1, Lcom/googlecode/javacv/Frame;->keyFrame:Z
goto :goto_10
.end method
.method  record(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)Z
.registers 8
const/4 v1, 0x0
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-static {v2}, Lcom/googlecode/javacv/cpp/avcodec;->av_init_packet(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)V
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
iget-object v3, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_outbuf:Lcom/googlecode/javacpp/BytePointer;
invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->data(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
iget v3, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_outbuf_size:I
invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
iget-object v3, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
iget-object v4, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->got_audio_packet:[I
invoke-static {v2, v3, p1, v4}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_encode_audio2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;Lcom/googlecode/javacv/cpp/avutil$AVFrame;[I)I
move-result v0
if-gez v0, :cond_3f
new-instance v1, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "avcodec_encode_audio2() error "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ": Could not encode audio packet."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;)V
throw v1
:cond_3f
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->got_audio_packet:[I
aget v2, v2, v1
if-eqz v2, :cond_10d
iget-object v1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->pts()J
move-result-wide v1
sget-wide v3, Lcom/googlecode/javacv/cpp/avutil;->AV_NOPTS_VALUE:J
cmp-long v1, v1, v3
if-eqz v1, :cond_6c
iget-object v1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->pts()J
move-result-wide v2
iget-object v4, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;
move-result-object v4
iget-object v5, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;
move-result-object v5
invoke-static {v2, v3, v4, v5}, Lcom/googlecode/javacv/cpp/avutil;->av_rescale_q(JLcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->pts(J)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
:cond_6c
iget-object v1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->dts()J
move-result-wide v1
sget-wide v3, Lcom/googlecode/javacv/cpp/avutil;->AV_NOPTS_VALUE:J
cmp-long v1, v1, v3
if-eqz v1, :cond_93
iget-object v1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->dts()J
move-result-wide v2
iget-object v4, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;
move-result-object v4
iget-object v5, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;
move-result-object v5
invoke-static {v2, v3, v4, v5}, Lcom/googlecode/javacv/cpp/avutil;->av_rescale_q(JLcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->dts(J)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
:cond_93
iget-object v1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->flags()I
move-result v2
or-int/lit8 v2, v2, 0x1
invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->flags(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
iget-object v1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->index()I
move-result v2
invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->stream_index(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
monitor-enter v2
:try_start_ae
iget-boolean v1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->interleaved:Z
if-eqz v1, :cond_e2
iget-object v1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
if-eqz v1, :cond_e2
iget-object v1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
iget-object v3, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-static {v1, v3}, Lcom/googlecode/javacv/cpp/avformat;->av_interleaved_write_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I
move-result v0
if-gez v0, :cond_10b
new-instance v1, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "av_interleaved_write_frame() error "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " while writing interleaved audio frame."
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v3}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;)V
throw v1
:catchall_df
move-exception v1
monitor-exit v2
:try_end_e1
.catchall {:try_start_ae .. :try_end_e1} :catchall_df
throw v1
:cond_e2
:try_start_e2
iget-object v1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
iget-object v3, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-static {v1, v3}, Lcom/googlecode/javacv/cpp/avformat;->av_write_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I
move-result v0
if-gez v0, :cond_10b
new-instance v1, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "av_write_frame() error "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " while writing audio frame."
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v3}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;)V
throw v1
:cond_10b
monitor-exit v2
:try_end_10c
.catchall {:try_start_e2 .. :try_end_10c} :catchall_df
const/4 v1, 0x1
:cond_10d
return v1
.end method
.method public record(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Z
.registers 4
const/4 v0, -0x1
const/4 v1, 0x0
invoke-virtual {p0, p1, v0, v1}, Lco/vine/android/recorder/SwVineFrameRecorder;->record(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;IZ)Z
move-result v0
return v0
.end method
.method public record(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;IZ)Z
.registers 23
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
if-nez v1, :cond_e
new-instance v1, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
const-string v4, "No video output stream (Is imageWidth > 0 && imageHeight > 0 and has start() been called?)"
invoke-direct {v1, v4}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;)V
throw v1
:cond_e
if-nez p1, :cond_20
:goto_10
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->flags()I
move-result v1
and-int/lit8 v1, v1, 0x20
if-eqz v1, :cond_20d
if-nez p1, :cond_1b7
const/4 v1, 0x0
:goto_1f
return v1
:cond_20
const/4 v1, 0x1
move-object/from16 v0, p0
iput-boolean v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->hasData:Z
invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I
move-result v2
invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I
move-result v3
invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I
move-result v18
invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->imageData()Lcom/googlecode/javacpp/BytePointer;
move-result-object v13
const/4 v1, -0x1
move/from16 v0, p2
if-ne v0, v1, :cond_50
invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I
move-result v14
invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I
move-result v12
const/16 v1, 0x8
if-eq v14, v1, :cond_4b
const v1, -0x7ffffff8
if-ne v14, v1, :cond_ae
:cond_4b
const/4 v1, 0x3
if-ne v12, v1, :cond_ae
const/16 p2, 0x3
:goto_50
:cond_50
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v16
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt()I
move-result v1
move/from16 v0, p2
if-ne v1, v0, :cond_74
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width()I
move-result v1
if-ne v1, v2, :cond_74
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height()I
move-result v1
if-eq v1, v3, :cond_19d
:cond_74
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width()I
move-result v5
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height()I
move-result v6
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt()I
move-result v7
const/4 v8, 0x2
const/4 v9, 0x0
const/4 v10, 0x0
const/4 v11, 0x0
check-cast v11, Lcom/googlecode/javacpp/DoublePointer;
move/from16 v4, p2
invoke-static/range {v1 .. v11}, Lcom/googlecode/javacv/cpp/swscale;->sws_getCachedContext(Lcom/googlecode/javacv/cpp/swscale$SwsContext;IIIIIIILcom/googlecode/javacv/cpp/swscale$SwsFilter;Lcom/googlecode/javacv/cpp/swscale$SwsFilter;Lcom/googlecode/javacpp/DoublePointer;)Lcom/googlecode/javacv/cpp/swscale$SwsContext;
move-result-object v1
move-object/from16 v0, p0
iput-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;
if-nez v1, :cond_121
new-instance v1, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
const-string v4, "sws_getCachedContext() error: Cannot initialize the conversion context."
invoke-direct {v1, v4}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;)V
throw v1
:cond_ae
const/16 v1, 0x8
if-eq v14, v1, :cond_b7
const v1, -0x7ffffff8
if-ne v14, v1, :cond_bd
:cond_b7
const/4 v1, 0x1
if-ne v12, v1, :cond_bd
const/16 p2, 0x8
goto :goto_50
:cond_bd
const/16 v1, 0x10
if-eq v14, v1, :cond_c6
const v1, -0x7ffffff0
if-ne v14, v1, :cond_dc
:cond_c6
const/4 v1, 0x1
if-ne v12, v1, :cond_dc
invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;
move-result-object v1
sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;
invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_d9
const/16 p2, 0x1f
:goto_d7
goto/16 :goto_50
:cond_d9
const/16 p2, 0x20
goto :goto_d7
:cond_dc
const/16 v1, 0x8
if-eq v14, v1, :cond_e5
const v1, -0x7ffffff8
if-ne v14, v1, :cond_ec
:cond_e5
const/4 v1, 0x4
if-ne v12, v1, :cond_ec
const/16 p2, 0x1c
goto/16 :goto_50
:cond_ec
const/16 v1, 0x8
if-eq v14, v1, :cond_f5
const v1, -0x7ffffff8
if-ne v14, v1, :cond_fe
:cond_f5
const/4 v1, 0x2
if-ne v12, v1, :cond_fe
const/16 p2, 0x1a
move/from16 v18, v2
goto/16 :goto_50
:cond_fe
new-instance v1, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Could not guess pixel format of image: depth="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ", channels="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v1, v4}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;)V
throw v1
:cond_121
new-instance v1, Lcom/googlecode/javacv/cpp/avcodec$AVPicture;
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->tmp_picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-direct {v1, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPicture;-><init>(Lcom/googlecode/javacpp/Pointer;)V
move/from16 v0, p2
invoke-static {v1, v13, v0, v2, v3}, Lcom/googlecode/javacv/cpp/avcodec;->avpicture_fill(Lcom/googlecode/javacv/cpp/avcodec$AVPicture;Lcom/googlecode/javacpp/BytePointer;III)I
new-instance v1, Lcom/googlecode/javacv/cpp/avcodec$AVPicture;
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-direct {v1, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPicture;-><init>(Lcom/googlecode/javacpp/Pointer;)V
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture_buf:Lcom/googlecode/javacpp/BytePointer;
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt()I
move-result v5
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width()I
move-result v6
move-object/from16 v0, p0
iget-object v7, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v7}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height()I
move-result v7
invoke-static {v1, v4, v5, v6, v7}, Lcom/googlecode/javacv/cpp/avcodec;->avpicture_fill(Lcom/googlecode/javacv/cpp/avcodec$AVPicture;Lcom/googlecode/javacpp/BytePointer;III)I
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->tmp_picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
const/4 v4, 0x0
move/from16 v0, v18
invoke-virtual {v1, v4, v0}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->linesize(II)Lcom/googlecode/javacv/cpp/avutil$AVFrame;
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;
new-instance v5, Lcom/googlecode/javacpp/PointerPointer;
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->tmp_picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-direct {v5, v1}, Lcom/googlecode/javacpp/PointerPointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->tmp_picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->linesize()Lcom/googlecode/javacpp/IntPointer;
move-result-object v6
const/4 v7, 0x0
new-instance v9, Lcom/googlecode/javacpp/PointerPointer;
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-direct {v9, v1}, Lcom/googlecode/javacpp/PointerPointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->linesize()Lcom/googlecode/javacpp/IntPointer;
move-result-object v10
move v8, v3
invoke-static/range {v4 .. v10}, Lcom/googlecode/javacv/cpp/swscale;->sws_scale(Lcom/googlecode/javacv/cpp/swscale$SwsContext;Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;IILcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;)I
move-object/from16 v0, p0
iget-wide v4, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoScaleTime:J
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
sub-long v6, v6, v16
add-long/2addr v4, v6
move-object/from16 v0, p0
iput-wide v4, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoScaleTime:J
goto/16 :goto_10
:cond_19d
new-instance v1, Lcom/googlecode/javacv/cpp/avcodec$AVPicture;
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-direct {v1, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPicture;-><init>(Lcom/googlecode/javacpp/Pointer;)V
move/from16 v0, p2
invoke-static {v1, v13, v0, v2, v3}, Lcom/googlecode/javacv/cpp/avcodec;->avpicture_fill(Lcom/googlecode/javacv/cpp/avcodec$AVPicture;Lcom/googlecode/javacpp/BytePointer;III)I
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
const/4 v4, 0x0
move/from16 v0, v18
invoke-virtual {v1, v4, v0}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->linesize(II)Lcom/googlecode/javacv/cpp/avutil$AVFrame;
goto/16 :goto_10
:cond_1b7
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-static {v1}, Lcom/googlecode/javacv/cpp/avcodec;->av_init_packet(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)V
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->flags()I
move-result v4
or-int/lit8 v4, v4, 0x1
invoke-virtual {v1, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->flags(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->index()I
move-result v4
invoke-virtual {v1, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->stream_index(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
new-instance v4, Lcom/googlecode/javacpp/BytePointer;
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-direct {v4, v5}, Lcom/googlecode/javacpp/BytePointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
invoke-virtual {v1, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->data(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
const-class v4, Lcom/googlecode/javacv/cpp/avcodec$AVPicture;
invoke-static {v4}, Lcom/googlecode/javacpp/Loader;->sizeof(Ljava/lang/Class;)I
move-result v4
invoke-virtual {v1, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
:goto_1fb
if-nez p3, :cond_200
invoke-direct/range {p0 .. p0}, Lco/vine/android/recorder/SwVineFrameRecorder;->writeVideoFrame()I
:cond_200
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->key_frame()I
move-result v1
if-eqz v1, :cond_318
const/4 v1, 0x1
goto/16 :goto_1f
:cond_20d
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-static {v1}, Lcom/googlecode/javacv/cpp/avcodec;->av_init_packet(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)V
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_outbuf:Lcom/googlecode/javacpp/BytePointer;
invoke-virtual {v1, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->data(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
move-object/from16 v0, p0
iget v4, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_outbuf_size:I
invoke-virtual {v1, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->global_quality()I
move-result v4
invoke-virtual {v1, v4}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->quality(I)Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v16
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
if-nez p1, :cond_271
const/4 v1, 0x0
:goto_248
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->got_video_packet:[I
invoke-static {v4, v5, v1, v6}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_encode_video2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;Lcom/googlecode/javacv/cpp/avutil$AVFrame;[I)I
move-result v15
if-gez v15, :cond_276
new-instance v1, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "avcodec_encode_video2() error "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ": Could not encode video packet."
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v1, v4}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;)V
throw v1
:cond_271
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
goto :goto_248
:cond_276
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->pts()J
move-result-wide v4
const-wide/16 v6, 0x1
add-long/2addr v4, v6
invoke-virtual {v1, v4, v5}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->pts(J)Lcom/googlecode/javacv/cpp/avutil$AVFrame;
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->got_video_packet:[I
const/4 v4, 0x0
aget v1, v1, v4
if-eqz v1, :cond_315
if-nez p3, :cond_304
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->pts()J
move-result-wide v4
sget-wide v6, Lcom/googlecode/javacv/cpp/avutil;->AV_NOPTS_VALUE:J
cmp-long v1, v4, v6
if-eqz v1, :cond_2c4
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->pts()J
move-result-wide v4
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;
move-result-object v6
move-object/from16 v0, p0
iget-object v7, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
invoke-virtual {v7}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;
move-result-object v7
invoke-static {v4, v5, v6, v7}, Lcom/googlecode/javacv/cpp/avutil;->av_rescale_q(JLcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)J
move-result-wide v4
invoke-virtual {v1, v4, v5}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->pts(J)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
:cond_2c4
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->dts()J
move-result-wide v4
sget-wide v6, Lcom/googlecode/javacv/cpp/avutil;->AV_NOPTS_VALUE:J
cmp-long v1, v4, v6
if-eqz v1, :cond_2f5
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->dts()J
move-result-wide v4
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;
move-result-object v6
move-object/from16 v0, p0
iget-object v7, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
invoke-virtual {v7}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;
move-result-object v7
invoke-static {v4, v5, v6, v7}, Lcom/googlecode/javacv/cpp/avutil;->av_rescale_q(JLcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)J
move-result-wide v4
invoke-virtual {v1, v4, v5}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->dts(J)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
:cond_2f5
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->index()I
move-result v4
invoke-virtual {v1, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->stream_index(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
:cond_304
move-object/from16 v0, p0
iget-wide v4, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoEncodeTime:J
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
sub-long v6, v6, v16
add-long/2addr v4, v6
move-object/from16 v0, p0
iput-wide v4, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoEncodeTime:J
goto/16 :goto_1fb
:cond_315
const/4 v1, 0x0
goto/16 :goto_1f
:cond_318
const/4 v1, 0x0
goto/16 :goto_1f
.end method
.method public varargs record([Ljava/nio/Buffer;)Z
.registers 28
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
if-nez v2, :cond_e
new-instance v2, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
const-string v3, "No audio output stream (Is audioChannels > 0 and has start() been called?)"
invoke-direct {v2, v3}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;)V
throw v2
:cond_e
const/4 v2, 0x1
move-object/from16 v0, p0
iput-boolean v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->hasData:Z
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v24
const/4 v2, 0x0
aget-object v2, p1, v2
invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I
move-result v2
const/4 v3, 0x0
aget-object v3, p1, v3
invoke-virtual {v3}, Ljava/nio/Buffer;->position()I
move-result v3
sub-int v19, v2, v3
move-object/from16 v0, p1
array-length v2, v0
const/4 v3, 0x1
if-le v2, v3, :cond_9a
const/16 v16, 0x1
:goto_2f
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_fmt()I
move-result v5
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;
array-length v2, v2
const/4 v3, 0x1
if-le v2, v3, :cond_a1
const/16 v20, 0x1
:goto_41
invoke-static {v5}, Lcom/googlecode/javacv/cpp/avutil;->av_get_bytes_per_sample(I)I
move-result v22
const/4 v2, 0x0
aget-object v2, p1, v2
instance-of v2, v2, Ljava/nio/ByteBuffer;
if-eqz v2, :cond_b6
move-object/from16 v0, p1
array-length v2, v0
const/4 v3, 0x1
if-le v2, v3, :cond_a8
const/4 v9, 0x5
:goto_53
const/16 v18, 0x1
const/4 v15, 0x0
:goto_56
move-object/from16 v0, p1
array-length v2, v0
if-ge v15, v2, :cond_263
aget-object v13, p1, v15
check-cast v13, Ljava/nio/ByteBuffer;
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
aget-object v2, v2, v15
instance-of v2, v2, Lcom/googlecode/javacpp/BytePointer;
if-eqz v2, :cond_aa
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
aget-object v2, v2, v15
invoke-virtual {v2}, Lcom/googlecode/javacpp/Pointer;->capacity()I
move-result v2
move/from16 v0, v19
if-lt v2, v0, :cond_aa
invoke-virtual {v13}, Ljava/nio/ByteBuffer;->hasArray()Z
move-result v2
if-eqz v2, :cond_aa
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
aget-object v2, v2, v15
check-cast v2, Lcom/googlecode/javacpp/BytePointer;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/BytePointer;->position(I)Lcom/googlecode/javacpp/BytePointer;
move-result-object v2
invoke-virtual {v13}, Ljava/nio/ByteBuffer;->array()[B
move-result-object v3
invoke-virtual {v13}, Ljava/nio/ByteBuffer;->position()I
move-result v4
move/from16 v0, v19
invoke-virtual {v2, v3, v4, v0}, Lcom/googlecode/javacpp/BytePointer;->put([BII)Lcom/googlecode/javacpp/BytePointer;
:goto_97
add-int/lit8 v15, v15, 0x1
goto :goto_56
:cond_9a
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioChannels:I
move/from16 v16, v0
goto :goto_2f
:cond_a1
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioChannels:I
move/from16 v20, v0
goto :goto_41
:cond_a8
const/4 v9, 0x0
goto :goto_53
:cond_aa
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
new-instance v3, Lcom/googlecode/javacpp/BytePointer;
invoke-direct {v3, v13}, Lcom/googlecode/javacpp/BytePointer;-><init>(Ljava/nio/ByteBuffer;)V
aput-object v3, v2, v15
goto :goto_97
:cond_b6
const/4 v2, 0x0
aget-object v2, p1, v2
instance-of v2, v2, Ljava/nio/ShortBuffer;
if-eqz v2, :cond_11b
move-object/from16 v0, p1
array-length v2, v0
const/4 v3, 0x1
if-le v2, v3, :cond_10d
const/4 v9, 0x6
:goto_c4
const/16 v18, 0x2
const/4 v15, 0x0
:goto_c7
move-object/from16 v0, p1
array-length v2, v0
if-ge v15, v2, :cond_263
aget-object v13, p1, v15
check-cast v13, Ljava/nio/ShortBuffer;
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
aget-object v2, v2, v15
instance-of v2, v2, Lcom/googlecode/javacpp/ShortPointer;
if-eqz v2, :cond_10f
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
aget-object v2, v2, v15
invoke-virtual {v2}, Lcom/googlecode/javacpp/Pointer;->capacity()I
move-result v2
move/from16 v0, v19
if-lt v2, v0, :cond_10f
invoke-virtual {v13}, Ljava/nio/ShortBuffer;->hasArray()Z
move-result v2
if-eqz v2, :cond_10f
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
aget-object v2, v2, v15
check-cast v2, Lcom/googlecode/javacpp/ShortPointer;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/ShortPointer;->position(I)Lcom/googlecode/javacpp/ShortPointer;
move-result-object v2
invoke-virtual {v13}, Ljava/nio/ShortBuffer;->array()[S
move-result-object v3
aget-object v4, p1, v15
invoke-virtual {v4}, Ljava/nio/Buffer;->position()I
move-result v4
move/from16 v0, v19
invoke-virtual {v2, v3, v4, v0}, Lcom/googlecode/javacpp/ShortPointer;->put([SII)Lcom/googlecode/javacpp/ShortPointer;
:goto_10a
add-int/lit8 v15, v15, 0x1
goto :goto_c7
:cond_10d
const/4 v9, 0x1
goto :goto_c4
:cond_10f
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
new-instance v3, Lcom/googlecode/javacpp/ShortPointer;
invoke-direct {v3, v13}, Lcom/googlecode/javacpp/ShortPointer;-><init>(Ljava/nio/ShortBuffer;)V
aput-object v3, v2, v15
goto :goto_10a
:cond_11b
const/4 v2, 0x0
aget-object v2, p1, v2
instance-of v2, v2, Ljava/nio/IntBuffer;
if-eqz v2, :cond_180
move-object/from16 v0, p1
array-length v2, v0
const/4 v3, 0x1
if-le v2, v3, :cond_172
const/4 v9, 0x7
:goto_129
const/16 v18, 0x4
const/4 v15, 0x0
:goto_12c
move-object/from16 v0, p1
array-length v2, v0
if-ge v15, v2, :cond_263
aget-object v13, p1, v15
check-cast v13, Ljava/nio/IntBuffer;
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
aget-object v2, v2, v15
instance-of v2, v2, Lcom/googlecode/javacpp/IntPointer;
if-eqz v2, :cond_174
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
aget-object v2, v2, v15
invoke-virtual {v2}, Lcom/googlecode/javacpp/Pointer;->capacity()I
move-result v2
move/from16 v0, v19
if-lt v2, v0, :cond_174
invoke-virtual {v13}, Ljava/nio/IntBuffer;->hasArray()Z
move-result v2
if-eqz v2, :cond_174
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
aget-object v2, v2, v15
check-cast v2, Lcom/googlecode/javacpp/IntPointer;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/IntPointer;->position(I)Lcom/googlecode/javacpp/IntPointer;
move-result-object v2
invoke-virtual {v13}, Ljava/nio/IntBuffer;->array()[I
move-result-object v3
aget-object v4, p1, v15
invoke-virtual {v4}, Ljava/nio/Buffer;->position()I
move-result v4
move/from16 v0, v19
invoke-virtual {v2, v3, v4, v0}, Lcom/googlecode/javacpp/IntPointer;->put([III)Lcom/googlecode/javacpp/IntPointer;
:goto_16f
add-int/lit8 v15, v15, 0x1
goto :goto_12c
:cond_172
const/4 v9, 0x2
goto :goto_129
:cond_174
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
new-instance v3, Lcom/googlecode/javacpp/IntPointer;
invoke-direct {v3, v13}, Lcom/googlecode/javacpp/IntPointer;-><init>(Ljava/nio/IntBuffer;)V
aput-object v3, v2, v15
goto :goto_16f
:cond_180
const/4 v2, 0x0
aget-object v2, p1, v2
instance-of v2, v2, Ljava/nio/FloatBuffer;
if-eqz v2, :cond_1e4
move-object/from16 v0, p1
array-length v2, v0
const/4 v3, 0x1
if-le v2, v3, :cond_1d6
const/16 v9, 0x8
:goto_18f
const/16 v18, 0x4
const/4 v15, 0x0
:goto_192
move-object/from16 v0, p1
array-length v2, v0
if-ge v15, v2, :cond_263
aget-object v13, p1, v15
check-cast v13, Ljava/nio/FloatBuffer;
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
aget-object v2, v2, v15
instance-of v2, v2, Lcom/googlecode/javacpp/FloatPointer;
if-eqz v2, :cond_1d8
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
aget-object v2, v2, v15
invoke-virtual {v2}, Lcom/googlecode/javacpp/Pointer;->capacity()I
move-result v2
move/from16 v0, v19
if-lt v2, v0, :cond_1d8
invoke-virtual {v13}, Ljava/nio/FloatBuffer;->hasArray()Z
move-result v2
if-eqz v2, :cond_1d8
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
aget-object v2, v2, v15
check-cast v2, Lcom/googlecode/javacpp/FloatPointer;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/FloatPointer;->position(I)Lcom/googlecode/javacpp/FloatPointer;
move-result-object v2
invoke-virtual {v13}, Ljava/nio/FloatBuffer;->array()[F
move-result-object v3
invoke-virtual {v13}, Ljava/nio/FloatBuffer;->position()I
move-result v4
move/from16 v0, v19
invoke-virtual {v2, v3, v4, v0}, Lcom/googlecode/javacpp/FloatPointer;->put([FII)Lcom/googlecode/javacpp/FloatPointer;
:goto_1d3
add-int/lit8 v15, v15, 0x1
goto :goto_192
:cond_1d6
const/4 v9, 0x3
goto :goto_18f
:cond_1d8
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
new-instance v3, Lcom/googlecode/javacpp/FloatPointer;
invoke-direct {v3, v13}, Lcom/googlecode/javacpp/FloatPointer;-><init>(Ljava/nio/FloatBuffer;)V
aput-object v3, v2, v15
goto :goto_1d3
:cond_1e4
const/4 v2, 0x0
aget-object v2, p1, v2
instance-of v2, v2, Ljava/nio/DoubleBuffer;
if-eqz v2, :cond_248
move-object/from16 v0, p1
array-length v2, v0
const/4 v3, 0x1
if-le v2, v3, :cond_23a
const/16 v9, 0x9
:goto_1f3
const/16 v18, 0x8
const/4 v15, 0x0
:goto_1f6
move-object/from16 v0, p1
array-length v2, v0
if-ge v15, v2, :cond_263
aget-object v13, p1, v15
check-cast v13, Ljava/nio/DoubleBuffer;
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
aget-object v2, v2, v15
instance-of v2, v2, Lcom/googlecode/javacpp/DoublePointer;
if-eqz v2, :cond_23c
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
aget-object v2, v2, v15
invoke-virtual {v2}, Lcom/googlecode/javacpp/Pointer;->capacity()I
move-result v2
move/from16 v0, v19
if-lt v2, v0, :cond_23c
invoke-virtual {v13}, Ljava/nio/DoubleBuffer;->hasArray()Z
move-result v2
if-eqz v2, :cond_23c
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
aget-object v2, v2, v15
check-cast v2, Lcom/googlecode/javacpp/DoublePointer;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/DoublePointer;->position(I)Lcom/googlecode/javacpp/DoublePointer;
move-result-object v2
invoke-virtual {v13}, Ljava/nio/DoubleBuffer;->array()[D
move-result-object v3
invoke-virtual {v13}, Ljava/nio/DoubleBuffer;->position()I
move-result v4
move/from16 v0, v19
invoke-virtual {v2, v3, v4, v0}, Lcom/googlecode/javacpp/DoublePointer;->put([DII)Lcom/googlecode/javacpp/DoublePointer;
:goto_237
add-int/lit8 v15, v15, 0x1
goto :goto_1f6
:cond_23a
const/4 v9, 0x4
goto :goto_1f3
:cond_23c
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
new-instance v3, Lcom/googlecode/javacpp/DoublePointer;
invoke-direct {v3, v13}, Lcom/googlecode/javacpp/DoublePointer;-><init>(Ljava/nio/DoubleBuffer;)V
aput-object v3, v2, v15
goto :goto_237
:cond_248
new-instance v2, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Audio samples Buffer has unsupported type: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move-object/from16 v0, p1
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;)V
throw v2
:cond_263
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_convert_ctx:Lcom/googlecode/javacv/cpp/swresample$SwrContext;
if-nez v2, :cond_2cd
const/4 v2, 0x0
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channel_layout()J
move-result-wide v3
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_rate()I
move-result v6
move-object/from16 v0, p0
iget-object v7, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v7}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channel_layout()J
move-result-wide v7
move-object/from16 v0, p0
iget-object v10, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v10}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_rate()I
move-result v10
const/4 v11, 0x0
const/4 v12, 0x0
invoke-static/range {v2 .. v12}, Lcom/googlecode/javacv/cpp/swresample;->swr_alloc_set_opts(Lcom/googlecode/javacv/cpp/swresample$SwrContext;JIIJIIILcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/swresample$SwrContext;
move-result-object v2
move-object/from16 v0, p0
iput-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_convert_ctx:Lcom/googlecode/javacv/cpp/swresample$SwrContext;
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_convert_ctx:Lcom/googlecode/javacv/cpp/swresample$SwrContext;
if-nez v2, :cond_2a2
new-instance v2, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
const-string v3, "swr_alloc_set_opts() error: Cannot allocate the conversion context."
invoke-direct {v2, v3}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;)V
throw v2
:cond_2a2
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_convert_ctx:Lcom/googlecode/javacv/cpp/swresample$SwrContext;
invoke-static {v2}, Lcom/googlecode/javacv/cpp/swresample;->swr_init(Lcom/googlecode/javacv/cpp/swresample$SwrContext;)I
move-result v23
if-gez v23, :cond_2cd
new-instance v2, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "swr_init() error "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move/from16 v0, v23
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ": Cannot initialize the conversion context."
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;)V
throw v2
:cond_2cd
const/4 v15, 0x0
:goto_2ce
move-object/from16 v0, p1
array-length v2, v0
if-ge v15, v2, :cond_315
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
aget-object v2, v2, v15
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
aget-object v3, v3, v15
invoke-virtual {v3}, Lcom/googlecode/javacpp/Pointer;->position()I
move-result v3
mul-int v3, v3, v18
invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v2
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
aget-object v3, v3, v15
invoke-virtual {v3}, Lcom/googlecode/javacpp/Pointer;->position()I
move-result v3
add-int v3, v3, v19
mul-int v3, v3, v18
invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Pointer;->limit(I)Lcom/googlecode/javacpp/Pointer;
add-int/lit8 v15, v15, 0x1
goto :goto_2ce
:cond_2fd
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->global_quality()I
move-result v3
invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->quality(I)Lcom/googlecode/javacv/cpp/avutil$AVFrame;
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Lco/vine/android/recorder/SwVineFrameRecorder;->record(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)Z
:cond_315
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
const/4 v3, 0x0
aget-object v2, v2, v3
invoke-virtual {v2}, Lcom/googlecode/javacpp/Pointer;->position()I
move-result v2
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
const/4 v4, 0x0
aget-object v3, v3, v4
invoke-virtual {v3}, Lcom/googlecode/javacpp/Pointer;->limit()I
move-result v3
if-ge v2, v3, :cond_4b1
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
const/4 v3, 0x0
aget-object v2, v2, v3
invoke-virtual {v2}, Lcom/googlecode/javacpp/Pointer;->limit()I
move-result v2
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
const/4 v4, 0x0
aget-object v3, v3, v4
invoke-virtual {v3}, Lcom/googlecode/javacpp/Pointer;->position()I
move-result v3
sub-int/2addr v2, v3
mul-int v3, v16, v18
div-int v17, v2, v3
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;
const/4 v3, 0x0
aget-object v2, v2, v3
invoke-virtual {v2}, Lcom/googlecode/javacpp/BytePointer;->limit()I
move-result v2
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;
const/4 v4, 0x0
aget-object v3, v3, v4
invoke-virtual {v3}, Lcom/googlecode/javacpp/BytePointer;->position()I
move-result v3
sub-int/2addr v2, v3
mul-int v3, v20, v22
div-int v21, v2, v3
move/from16 v0, v17
move/from16 v1, v21
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v14
const/4 v15, 0x0
:goto_36c
move-object/from16 v0, p1
array-length v2, v0
if-ge v15, v2, :cond_381
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in_ptr:Lcom/googlecode/javacpp/PointerPointer;
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
aget-object v3, v3, v15
invoke-virtual {v2, v15, v3}, Lcom/googlecode/javacpp/PointerPointer;->put(ILcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;
add-int/lit8 v15, v15, 0x1
goto :goto_36c
:cond_381
const/4 v15, 0x0
:goto_382
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;
array-length v2, v2
if-ge v15, v2, :cond_399
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_out_ptr:Lcom/googlecode/javacpp/PointerPointer;
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;
aget-object v3, v3, v15
invoke-virtual {v2, v15, v3}, Lcom/googlecode/javacpp/PointerPointer;->put(ILcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;
add-int/lit8 v15, v15, 0x1
goto :goto_382
:cond_399
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_convert_ctx:Lcom/googlecode/javacv/cpp/swresample$SwrContext;
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_out_ptr:Lcom/googlecode/javacpp/PointerPointer;
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in_ptr:Lcom/googlecode/javacpp/PointerPointer;
invoke-static {v2, v3, v14, v4, v14}, Lcom/googlecode/javacv/cpp/swresample;->swr_convert(Lcom/googlecode/javacv/cpp/swresample$SwrContext;Lcom/googlecode/javacpp/PointerPointer;ILcom/googlecode/javacpp/PointerPointer;I)I
move-result v23
if-gez v23, :cond_3cc
new-instance v2, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "swr_convert() error "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move/from16 v0, v23
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ": Cannot convert audio samples."
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;)V
throw v2
:cond_3cc
const/4 v15, 0x0
:goto_3cd
move-object/from16 v0, p1
array-length v2, v0
if-ge v15, v2, :cond_3ed
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
aget-object v2, v2, v15
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
aget-object v3, v3, v15
invoke-virtual {v3}, Lcom/googlecode/javacpp/Pointer;->position()I
move-result v3
mul-int v4, v23, v16
mul-int v4, v4, v18
add-int/2addr v3, v4
invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
add-int/lit8 v15, v15, 0x1
goto :goto_3cd
:cond_3ed
const/4 v15, 0x0
:goto_3ee
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;
array-length v2, v2
if-ge v15, v2, :cond_410
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;
aget-object v2, v2, v15
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;
aget-object v3, v3, v15
invoke-virtual {v3}, Lcom/googlecode/javacpp/BytePointer;->position()I
move-result v3
mul-int v4, v23, v20
mul-int v4, v4, v22
add-int/2addr v3, v4
invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/BytePointer;->position(I)Lcom/googlecode/javacpp/BytePointer;
add-int/lit8 v15, v15, 0x1
goto :goto_3ee
:cond_410
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;
const/4 v3, 0x0
aget-object v2, v2, v3
invoke-virtual {v2}, Lcom/googlecode/javacpp/BytePointer;->position()I
move-result v2
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;
const/4 v4, 0x0
aget-object v3, v3, v4
invoke-virtual {v3}, Lcom/googlecode/javacpp/BytePointer;->limit()I
move-result v3
if-lt v2, v3, :cond_315
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
move-object/from16 v0, p0
iget v3, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_input_frame_size:I
invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->nb_samples(I)Lcom/googlecode/javacv/cpp/avutil$AVFrame;
move-object/from16 v0, p0
iget-boolean v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->isVorbis:Z
if-eqz v2, :cond_44d
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
move-object/from16 v0, p0
iget-wide v3, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_clock:J
const-wide/16 v6, 0x3e8
mul-long/2addr v3, v6
move-object/from16 v0, p0
iget v6, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->sampleRate:I
int-to-long v6, v6
div-long/2addr v3, v6
invoke-virtual {v2, v3, v4}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->pts(J)Lcom/googlecode/javacv/cpp/avutil$AVFrame;
:cond_44d
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
if-eqz v2, :cond_461
move-object/from16 v0, p0
iget-wide v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_clock:J
move-object/from16 v0, p0
iget v4, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_input_frame_size:I
int-to-long v6, v4
add-long/2addr v2, v6
move-object/from16 v0, p0
iput-wide v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_clock:J
:cond_461
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channels()I
move-result v4
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;
const/4 v6, 0x0
aget-object v6, v2, v6
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;
const/4 v7, 0x0
aget-object v2, v2, v7
invoke-virtual {v2}, Lcom/googlecode/javacpp/BytePointer;->limit()I
move-result v7
const/4 v8, 0x0
invoke-static/range {v3 .. v8}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_fill_audio_frame(Lcom/googlecode/javacv/cpp/avutil$AVFrame;IILcom/googlecode/javacpp/BytePointer;II)I
const/4 v15, 0x0
:goto_484
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;
array-length v2, v2
if-ge v15, v2, :cond_2fd
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;
aget-object v3, v3, v15
const/4 v4, 0x0
invoke-virtual {v3, v4}, Lcom/googlecode/javacpp/BytePointer;->position(I)Lcom/googlecode/javacpp/BytePointer;
move-result-object v3
invoke-virtual {v2, v15, v3}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->data(ILcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avutil$AVFrame;
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;
aget-object v3, v3, v15
invoke-virtual {v3}, Lcom/googlecode/javacpp/BytePointer;->limit()I
move-result v3
invoke-virtual {v2, v15, v3}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->linesize(II)Lcom/googlecode/javacv/cpp/avutil$AVFrame;
add-int/lit8 v15, v15, 0x1
goto :goto_484
:cond_4b1
move-object/from16 v0, p0
iget-wide v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioRecordTime:J
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
sub-long v6, v6, v24
add-long/2addr v2, v6
move-object/from16 v0, p0
iput-wide v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioRecordTime:J
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->key_frame()I
move-result v2
if-eqz v2, :cond_4cc
const/4 v2, 0x1
:goto_4cb
return v2
:cond_4cc
const/4 v2, 0x0
goto :goto_4cb
.end method
.method public release()V
.registers 8
const-wide/16 v5, 0x0
sget-boolean v2, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z
if-eqz v2, :cond_4e
iget-boolean v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->isReleased:Z
if-nez v2, :cond_4e
iget-wide v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoScaleTime:J
cmp-long v2, v2, v5
if-lez v2, :cond_1b
const-string v2, "Video Scale: {}."
iget-wide v3, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoScaleTime:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/edisonwang/android/slog/SLog;->b(Ljava/lang/String;Ljava/lang/Object;)V
:cond_1b
iget-wide v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoEncodeTime:J
cmp-long v2, v2, v5
if-lez v2, :cond_2c
const-string v2, "Video Encode: {}."
iget-wide v3, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoEncodeTime:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/edisonwang/android/slog/SLog;->b(Ljava/lang/String;Ljava/lang/Object;)V
:cond_2c
iget-wide v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoWriteTime:J
cmp-long v2, v2, v5
if-lez v2, :cond_3d
const-string v2, "Video Write: {}."
iget-wide v3, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoWriteTime:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/edisonwang/android/slog/SLog;->b(Ljava/lang/String;Ljava/lang/Object;)V
:cond_3d
iget-wide v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioRecordTime:J
cmp-long v2, v2, v5
if-lez v2, :cond_4e
const-string v2, "Audio Record: {}."
iget-wide v3, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioRecordTime:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/edisonwang/android/slog/SLog;->b(Ljava/lang/String;Ljava/lang/Object;)V
:cond_4e
const/4 v2, 0x1
iput-boolean v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->isReleased:Z
sget-object v3, Lco/vine/android/recorder/SwVineFrameRecorder;->LOCK:[I
monitor-enter v3
:try_start_54
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
if-eqz v2, :cond_60
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-static {v2}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_close(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;)I
const/4 v2, 0x0
iput-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
:cond_60
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
if-eqz v2, :cond_6c
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-static {v2}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_close(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;)I
const/4 v2, 0x0
iput-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
:cond_6c
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture_buf:Lcom/googlecode/javacpp/BytePointer;
if-eqz v2, :cond_78
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture_buf:Lcom/googlecode/javacpp/BytePointer;
invoke-static {v2}, Lcom/googlecode/javacv/cpp/avutil;->av_free(Lcom/googlecode/javacpp/Pointer;)V
const/4 v2, 0x0
iput-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture_buf:Lcom/googlecode/javacpp/BytePointer;
:cond_78
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
if-eqz v2, :cond_84
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-static {v2}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_free_frame(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)V
const/4 v2, 0x0
iput-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
:cond_84
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->tmp_picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
if-eqz v2, :cond_90
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->tmp_picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-static {v2}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_free_frame(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)V
const/4 v2, 0x0
iput-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->tmp_picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
:cond_90
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_outbuf:Lcom/googlecode/javacpp/BytePointer;
if-eqz v2, :cond_9c
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_outbuf:Lcom/googlecode/javacpp/BytePointer;
invoke-static {v2}, Lcom/googlecode/javacv/cpp/avutil;->av_free(Lcom/googlecode/javacpp/Pointer;)V
const/4 v2, 0x0
iput-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_outbuf:Lcom/googlecode/javacpp/BytePointer;
:cond_9c
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
if-eqz v2, :cond_a8
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-static {v2}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_free_frame(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)V
const/4 v2, 0x0
iput-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
:cond_a8
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;
if-eqz v2, :cond_c4
const/4 v0, 0x0
:goto_ad
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;
array-length v2, v2
if-ge v0, v2, :cond_c1
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;
aget-object v2, v2, v0
const/4 v4, 0x0
invoke-virtual {v2, v4}, Lcom/googlecode/javacpp/BytePointer;->position(I)Lcom/googlecode/javacpp/BytePointer;
move-result-object v2
invoke-static {v2}, Lcom/googlecode/javacv/cpp/avutil;->av_free(Lcom/googlecode/javacpp/Pointer;)V
add-int/lit8 v0, v0, 0x1
goto :goto_ad
:cond_c1
const/4 v2, 0x0
iput-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;
:cond_c4
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_outbuf:Lcom/googlecode/javacpp/BytePointer;
if-eqz v2, :cond_d0
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_outbuf:Lcom/googlecode/javacpp/BytePointer;
invoke-static {v2}, Lcom/googlecode/javacv/cpp/avutil;->av_free(Lcom/googlecode/javacpp/Pointer;)V
const/4 v2, 0x0
iput-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_outbuf:Lcom/googlecode/javacpp/BytePointer;
:cond_d0
const/4 v2, 0x0
iput-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
const/4 v2, 0x0
iput-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
if-eqz v2, :cond_104
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->nb_streams()I
move-result v1
const/4 v0, 0x0
:goto_e1
if-ge v0, v1, :cond_fc
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
invoke-virtual {v2, v0}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->streams(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
move-result-object v2
invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->codec()Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-result-object v2
invoke-static {v2}, Lcom/googlecode/javacv/cpp/avutil;->av_free(Lcom/googlecode/javacpp/Pointer;)V
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
invoke-virtual {v2, v0}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->streams(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
move-result-object v2
invoke-static {v2}, Lcom/googlecode/javacv/cpp/avutil;->av_free(Lcom/googlecode/javacpp/Pointer;)V
add-int/lit8 v0, v0, 0x1
goto :goto_e1
:cond_fc
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
invoke-static {v2}, Lcom/googlecode/javacv/cpp/avutil;->av_free(Lcom/googlecode/javacpp/Pointer;)V
const/4 v2, 0x0
iput-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
:cond_104
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;
if-eqz v2, :cond_110
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;
invoke-static {v2}, Lcom/googlecode/javacv/cpp/swscale;->sws_freeContext(Lcom/googlecode/javacv/cpp/swscale$SwsContext;)V
const/4 v2, 0x0
iput-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;
:cond_110
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_convert_ctx:Lcom/googlecode/javacv/cpp/swresample$SwrContext;
if-eqz v2, :cond_11c
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_convert_ctx:Lcom/googlecode/javacv/cpp/swresample$SwrContext;
invoke-static {v2}, Lcom/googlecode/javacv/cpp/swresample;->swr_free(Lcom/googlecode/javacv/cpp/swresample$SwrContext;)V
const/4 v2, 0x0
iput-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_convert_ctx:Lcom/googlecode/javacv/cpp/swresample$SwrContext;
:cond_11c
monitor-exit v3
return-void
:catchall_11e
move-exception v2
monitor-exit v3
:try_end_120
.catchall {:try_start_54 .. :try_end_120} :catchall_11e
throw v2
.end method
.method public setAudioCodec(I)V
.registers 2
iput p1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioCodec:I
return-void
.end method
.method public setAudioCodecName(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioCodecName:Ljava/lang/String;
return-void
.end method
.method public setFormat(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->format:Ljava/lang/String;
return-void
.end method
.method public setFrameNumber(I)V
.registers 5
iget-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
if-nez v0, :cond_7
iput p1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->frameNumber:I
:goto_6
return-void
:cond_7
iget-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
int-to-long v1, p1
invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->pts(J)Lcom/googlecode/javacv/cpp/avutil$AVFrame;
goto :goto_6
.end method
.method public setFrameRate(D)V
.registers 3
iput-wide p1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->frameRate:D
return-void
.end method
.method public setSampleFormat(I)V
.registers 2
iput p1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->sampleFormat:I
return-void
.end method
.method public setSampleRate(I)V
.registers 2
iput p1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->sampleRate:I
return-void
.end method
.method public setTimestamp(J)V
.registers 7
iget-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
if-eqz v0, :cond_18
long-to-double v0, p1
invoke-virtual {p0}, Lco/vine/android/recorder/SwVineFrameRecorder;->getFrameRate()D
move-result-wide v2
mul-double/2addr v0, v2
const-wide v2, 0x412e848000000000L
div-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J
move-result-wide v0
long-to-int v0, v0
invoke-virtual {p0, v0}, Lco/vine/android/recorder/SwVineFrameRecorder;->setFrameNumber(I)V
:cond_18
return-void
.end method
.method public setTimestampAndGetFrameNumber(J)I
.registers 8
long-to-double v1, p1
invoke-virtual {p0}, Lco/vine/android/recorder/SwVineFrameRecorder;->getFrameRate()D
move-result-wide v3
mul-double/2addr v1, v3
const-wide v3, 0x412e848000000000L
div-double/2addr v1, v3
invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J
move-result-wide v1
long-to-int v0, v1
invoke-virtual {p0, v0}, Lco/vine/android/recorder/SwVineFrameRecorder;->setFrameNumber(I)V
return v0
.end method
.method public setVideoCodec(I)V
.registers 2
iput p1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoCodec:I
return-void
.end method
.method public setVideoCodecName(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoCodecName:Ljava/lang/String;
return-void
.end method
.method public start()V
.registers 24
const/16 v18, 0x0
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
const/16 v18, 0x0
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->tmp_picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
const/16 v18, 0x0
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->picture_buf:Lcom/googlecode/javacpp/BytePointer;
const/16 v18, 0x0
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
const/16 v18, 0x0
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->video_outbuf:Lcom/googlecode/javacpp/BytePointer;
const/16 v18, 0x0
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_outbuf:Lcom/googlecode/javacpp/BytePointer;
const/16 v18, 0x0
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
const/16 v18, 0x0
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
const/16 v18, 0x0
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
const/16 v18, 0x0
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
const/16 v18, 0x0
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
const/16 v18, 0x1
move/from16 v0, v18
new-array v0, v0, [I
move-object/from16 v18, v0
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->got_video_packet:[I
const/16 v18, 0x1
move/from16 v0, v18
new-array v0, v0, [I
move-object/from16 v18, v0
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->got_audio_packet:[I
const-wide/16 v18, 0x0
move-wide/from16 v0, v18
move-object/from16 v2, p0
iput-wide v0, v2, Lco/vine/android/recorder/SwVineFrameRecorder;->videoEncodeTime:J
const-wide/16 v18, 0x0
move-wide/from16 v0, v18
move-object/from16 v2, p0
iput-wide v0, v2, Lco/vine/android/recorder/SwVineFrameRecorder;->videoWriteTime:J
const-wide/16 v18, 0x0
move-wide/from16 v0, v18
move-object/from16 v2, p0
iput-wide v0, v2, Lco/vine/android/recorder/SwVineFrameRecorder;->videoScaleTime:J
const-wide/16 v18, 0x0
move-wide/from16 v0, v18
move-object/from16 v2, p0
iput-wide v0, v2, Lco/vine/android/recorder/SwVineFrameRecorder;->audioRecordTime:J
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->format:Ljava/lang/String;
move-object/from16 v18, v0
if-eqz v18, :cond_a8
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->format:Ljava/lang/String;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I
move-result v18
if-nez v18, :cond_12c
:cond_a8
const/4 v5, 0x0
:goto_a9
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->filename:Ljava/lang/String;
move-object/from16 v18, v0
const/16 v19, 0x0
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-static {v5, v0, v1}, Lcom/googlecode/javacv/cpp/avformat;->av_guess_format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
move-result-object v18
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
if-nez v18, :cond_132
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->filename:Ljava/lang/String;
move-object/from16 v18, v0
const-string v19, "://"
invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v14
if-lez v14, :cond_df
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->filename:Ljava/lang/String;
move-object/from16 v18, v0
const/16 v19, 0x0
move-object/from16 v0, v18
move/from16 v1, v19
invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v5
:cond_df
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->filename:Ljava/lang/String;
move-object/from16 v18, v0
const/16 v19, 0x0
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-static {v5, v0, v1}, Lcom/googlecode/javacv/cpp/avformat;->av_guess_format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
move-result-object v18
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
if-nez v18, :cond_132
new-instance v18, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
const-string v20, "av_guess_format() error: Could not guess output format for \""
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->filename:Ljava/lang/String;
move-object/from16 v20, v0
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
const-string v20, "\" and "
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->format:Ljava/lang/String;
move-object/from16 v20, v0
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
const-string v20, " format."
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
invoke-direct/range {v18 .. v19}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;)V
throw v18
:cond_12c
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->format:Ljava/lang/String;
goto/16 :goto_a9
:cond_132
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->name()Lcom/googlecode/javacpp/BytePointer;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacpp/BytePointer;->getString()Ljava/lang/String;
move-result-object v5
invoke-static {}, Lcom/googlecode/javacv/cpp/avformat;->avformat_alloc_context()Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
move-result-object v18
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
if-nez v18, :cond_154
new-instance v18, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
const-string v19, "avformat_alloc_context() error: Could not allocate format context"
invoke-direct/range {v18 .. v19}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;)V
throw v18
:cond_154
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
move-object/from16 v19, v0
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->oformat(Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->filename()Lcom/googlecode/javacpp/BytePointer;
move-result-object v18
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->filename:Ljava/lang/String;
move-object/from16 v19, v0
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacpp/BytePointer;->putString(Ljava/lang/String;)Lcom/googlecode/javacpp/BytePointer;
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->imageWidth:I
move/from16 v18, v0
if-lez v18, :cond_3b9
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->imageHeight:I
move/from16 v18, v0
if-lez v18, :cond_3b9
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoCodec:I
move/from16 v18, v0
if-eqz v18, :cond_1ce
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoCodec:I
move/from16 v19, v0
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->video_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
:cond_19d
:goto_19d
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoCodecName:Ljava/lang/String;
move-object/from16 v18, v0
invoke-static/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_find_encoder_by_name(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
move-result-object v10
move-object/from16 v0, p0
iput-object v10, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
if-nez v10, :cond_227
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->video_codec()I
move-result v18
invoke-static/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_find_encoder(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
move-result-object v18
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->video_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
if-nez v18, :cond_227
invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/SwVineFrameRecorder;->release()V
new-instance v18, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
const-string v19, "avcodec_find_encoder() error: Video codec not found."
invoke-direct/range {v18 .. v19}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;)V
throw v18
:cond_1ce
const-string v18, "flv"
move-object/from16 v0, v18
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v18
if-eqz v18, :cond_1e4
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
move-object/from16 v18, v0
const/16 v19, 0x16
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->video_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
goto :goto_19d
:cond_1e4
const-string v18, "mp4"
move-object/from16 v0, v18
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v18
if-eqz v18, :cond_1fa
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
move-object/from16 v18, v0
const/16 v19, 0xd
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->video_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
goto :goto_19d
:cond_1fa
const-string v18, "3gp"
move-object/from16 v0, v18
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v18
if-eqz v18, :cond_210
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
move-object/from16 v18, v0
const/16 v19, 0x5
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->video_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
goto :goto_19d
:cond_210
const-string v18, "avi"
move-object/from16 v0, v18
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v18
if-eqz v18, :cond_19d
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
move-object/from16 v18, v0
const/16 v19, 0x1a
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->video_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
goto/16 :goto_19d
:cond_227
if-eqz v10, :cond_23c
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodec;->id()I
move-result v19
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->video_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
:cond_23c
move-object/from16 v0, p0
iget-wide v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->frameRate:D
move-wide/from16 v18, v0
const v20, 0xf4628
invoke-static/range {v18 .. v20}, Lcom/googlecode/javacv/cpp/avutil;->av_d2q(DI)Lcom/googlecode/javacv/cpp/avutil$AVRational;
move-result-object v6
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodec;->supported_framerates()Lcom/googlecode/javacv/cpp/avutil$AVRational;
move-result-object v17
if-eqz v17, :cond_261
move-object/from16 v0, v17
invoke-static {v6, v0}, Lcom/googlecode/javacv/cpp/avutil;->av_find_nearest_q_idx(Lcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)I
move-result v9
move-object/from16 v0, v17
invoke-virtual {v0, v9}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->position(I)Lcom/googlecode/javacv/cpp/avutil$AVRational;
move-result-object v6
:cond_261
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
move-object/from16 v19, v0
invoke-static/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avformat;->avformat_new_stream(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodec;)Lcom/googlecode/javacv/cpp/avformat$AVStream;
move-result-object v18
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
if-nez v18, :cond_284
invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/SwVineFrameRecorder;->release()V
new-instance v18, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
const-string v19, "avformat_new_stream() error: Could not allocate video stream."
invoke-direct/range {v18 .. v19}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;)V
throw v18
:cond_284
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->codec()Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-result-object v18
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->video_codec()I
move-result v19
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
const/16 v19, 0x0
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_type(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoBitrate:I
move/from16 v19, v0
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->bit_rate(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->imageWidth:I
move/from16 v19, v0
add-int/lit8 v19, v19, 0xf
div-int/lit8 v19, v19, 0x10
mul-int/lit8 v19, v19, 0x10
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->imageHeight:I
move/from16 v19, v0
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
invoke-static {v6}, Lcom/googlecode/javacv/cpp/avutil;->av_inv_q(Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avutil$AVRational;
move-result-object v19
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base(Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
const/16 v19, 0xc
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->gop_size(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v0, p0
iget-wide v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoQuality:D
move-wide/from16 v18, v0
const-wide/16 v20, 0x0
cmpl-double v18, v18, v20
if-ltz v18, :cond_33d
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->flags()I
move-result v19
or-int/lit8 v19, v19, 0x2
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->flags(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
const-wide v19, 0x405d800000000000L
move-object/from16 v0, p0
iget-wide v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoQuality:D
move-wide/from16 v21, v0
mul-double v19, v19, v21
invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J
move-result-wide v19
move-wide/from16 v0, v19
long-to-int v0, v0
move/from16 v19, v0
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->global_quality(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
:cond_33d
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->pixelFormat:I
move/from16 v18, v0
const/16 v19, -0x1
move/from16 v0, v18
move/from16 v1, v19
if-eq v0, v1, :cond_41b
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->pixelFormat:I
move/from16 v19, v0
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
:goto_35a
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I
move-result v18
const/16 v19, 0x2
move/from16 v0, v18
move/from16 v1, v19
if-ne v0, v1, :cond_47d
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
const/16 v19, 0x2
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->max_b_frames(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
:goto_377
:cond_377
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->flags()I
move-result v18
and-int/lit8 v18, v18, 0x40
if-eqz v18, :cond_39c
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->flags()I
move-result v19
const/high16 v20, 0x40
or-int v19, v19, v20
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->flags(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
:cond_39c
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodec;->capabilities()I
move-result v18
move/from16 v0, v18
and-int/lit16 v0, v0, 0x200
move/from16 v18, v0
if-eqz v18, :cond_3b9
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
const/16 v19, -0x2
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->strict_std_compliance(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
:cond_3b9
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioChannels:I
move/from16 v18, v0
if-lez v18, :cond_7a1
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioBitrate:I
move/from16 v18, v0
if-lez v18, :cond_7a1
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->sampleRate:I
move/from16 v18, v0
if-lez v18, :cond_7a1
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioCodec:I
move/from16 v18, v0
if-eqz v18, :cond_59c
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioCodec:I
move/from16 v19, v0
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->audio_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
:goto_3e8
:cond_3e8
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioCodecName:Ljava/lang/String;
move-object/from16 v18, v0
invoke-static/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_find_encoder_by_name(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
move-result-object v18
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
if-nez v18, :cond_5df
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->audio_codec()I
move-result v18
invoke-static/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_find_encoder(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
move-result-object v18
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
if-nez v18, :cond_5df
invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/SwVineFrameRecorder;->release()V
new-instance v18, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
const-string v19, "avcodec_find_encoder() error: Audio codec not found."
invoke-direct/range {v18 .. v19}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;)V
throw v18
:cond_41b
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I
move-result v18
const/16 v19, 0xe
move/from16 v0, v18
move/from16 v1, v19
if-eq v0, v1, :cond_463
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I
move-result v18
const/16 v19, 0x3e
move/from16 v0, v18
move/from16 v1, v19
if-eq v0, v1, :cond_463
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I
move-result v18
const/16 v19, 0x1a
move/from16 v0, v18
move/from16 v1, v19
if-eq v0, v1, :cond_463
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I
move-result v18
const/16 v19, 0x22
move/from16 v0, v18
move/from16 v1, v19
if-ne v0, v1, :cond_470
:cond_463
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
sget v19, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGB32:I
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
goto/16 :goto_35a
:cond_470
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
const/16 v19, 0x0
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
goto/16 :goto_35a
:cond_47d
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I
move-result v18
const/16 v19, 0x1
move/from16 v0, v18
move/from16 v1, v19
if-ne v0, v1, :cond_49c
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
const/16 v19, 0x2
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->mb_decision(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
goto/16 :goto_377
:cond_49c
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I
move-result v18
const/16 v19, 0x5
move/from16 v0, v18
move/from16 v1, v19
if-ne v0, v1, :cond_57d
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->imageWidth:I
move/from16 v18, v0
const/16 v19, 0x80
move/from16 v0, v18
move/from16 v1, v19
if-gt v0, v1, :cond_4dd
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->imageHeight:I
move/from16 v18, v0
const/16 v19, 0x60
move/from16 v0, v18
move/from16 v1, v19
if-gt v0, v1, :cond_4dd
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
const/16 v19, 0x80
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-result-object v18
const/16 v19, 0x60
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
goto/16 :goto_377
:cond_4dd
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->imageWidth:I
move/from16 v18, v0
const/16 v19, 0xb0
move/from16 v0, v18
move/from16 v1, v19
if-gt v0, v1, :cond_50c
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->imageHeight:I
move/from16 v18, v0
const/16 v19, 0x90
move/from16 v0, v18
move/from16 v1, v19
if-gt v0, v1, :cond_50c
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
const/16 v19, 0xb0
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-result-object v18
const/16 v19, 0x90
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
goto/16 :goto_377
:cond_50c
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->imageWidth:I
move/from16 v18, v0
const/16 v19, 0x160
move/from16 v0, v18
move/from16 v1, v19
if-gt v0, v1, :cond_53b
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->imageHeight:I
move/from16 v18, v0
const/16 v19, 0x120
move/from16 v0, v18
move/from16 v1, v19
if-gt v0, v1, :cond_53b
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
const/16 v19, 0x160
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-result-object v18
const/16 v19, 0x120
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
goto/16 :goto_377
:cond_53b
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->imageWidth:I
move/from16 v18, v0
const/16 v19, 0x2c0
move/from16 v0, v18
move/from16 v1, v19
if-gt v0, v1, :cond_56a
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->imageHeight:I
move/from16 v18, v0
const/16 v19, 0x240
move/from16 v0, v18
move/from16 v1, v19
if-gt v0, v1, :cond_56a
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
const/16 v19, 0x2c0
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-result-object v18
const/16 v19, 0x240
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
goto/16 :goto_377
:cond_56a
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
const/16 v19, 0x580
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-result-object v18
const/16 v19, 0x480
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
goto/16 :goto_377
:cond_57d
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I
move-result v18
const/16 v19, 0x1c
move/from16 v0, v18
move/from16 v1, v19
if-ne v0, v1, :cond_377
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
const/16 v19, 0x242
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->profile(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
goto/16 :goto_377
:cond_59c
const-string v18, "flv"
move-object/from16 v0, v18
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v18
if-nez v18, :cond_5ba
const-string v18, "mp4"
move-object/from16 v0, v18
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v18
if-nez v18, :cond_5ba
const-string v18, "3gp"
move-object/from16 v0, v18
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v18
if-eqz v18, :cond_5c8
:cond_5ba
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
move-object/from16 v18, v0
const v19, 0x15002
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->audio_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
goto/16 :goto_3e8
:cond_5c8
const-string v18, "avi"
move-object/from16 v0, v18
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v18
if-eqz v18, :cond_3e8
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
move-object/from16 v18, v0
const/high16 v19, 0x1
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->audio_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
goto/16 :goto_3e8
:cond_5df
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
move-object/from16 v19, v0
invoke-static/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avformat;->avformat_new_stream(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodec;)Lcom/googlecode/javacv/cpp/avformat$AVStream;
move-result-object v18
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
if-nez v18, :cond_602
invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/SwVineFrameRecorder;->release()V
new-instance v18, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
const-string v19, "avformat_new_stream() error: Could not allocate audio stream."
invoke-direct/range {v18 .. v19}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;)V
throw v18
:cond_602
const-string v18, "libvorbis"
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioCodecName:Ljava/lang/String;
move-object/from16 v19, v0
invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v18
move/from16 v0, v18
move-object/from16 v1, p0
iput-boolean v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->isVorbis:Z
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->codec()Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-result-object v18
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->audio_codec()I
move-result v19
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
const/16 v19, 0x1
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_type(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioBitrate:I
move/from16 v19, v0
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->bit_rate(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->sampleRate:I
move/from16 v19, v0
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_rate(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioChannels:I
move/from16 v19, v0
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channels(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioChannels:I
move/from16 v19, v0
invoke-static/range {v19 .. v19}, Lcom/googlecode/javacv/cpp/avutil;->av_get_default_channel_layout(I)J
move-result-wide v19
invoke-virtual/range {v18 .. v20}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channel_layout(J)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->sampleFormat:I
move/from16 v18, v0
const/16 v19, -0x1
move/from16 v0, v18
move/from16 v1, v19
if-eq v0, v1, :cond_6cf
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->sampleFormat:I
move/from16 v19, v0
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_fmt(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
:goto_69f
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;
move-result-object v18
const/16 v19, 0x1
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->num(I)Lcom/googlecode/javacv/cpp/avutil$AVRational;
move-result-object v18
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->sampleRate:I
move/from16 v19, v0
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->den(I)Lcom/googlecode/javacv/cpp/avutil$AVRational;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_fmt()I
move-result v18
packed-switch v18, :pswitch_data_bf4
sget-boolean v18, Lco/vine/android/recorder/SwVineFrameRecorder;->$assertionsDisabled:Z
if-nez v18, :cond_71f
new-instance v18, Ljava/lang/AssertionError;
invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V
throw v18
:cond_6cf
move-object/from16 v0, p0
iget-boolean v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->isVorbis:Z
move/from16 v18, v0
if-nez v18, :cond_6fc
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I
move-result v18
const v19, 0x15002
move/from16 v0, v18
move/from16 v1, v19
if-ne v0, v1, :cond_708
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodec;->capabilities()I
move-result v18
move/from16 v0, v18
and-int/lit16 v0, v0, 0x200
move/from16 v18, v0
if-eqz v18, :cond_708
:cond_6fc
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
const/16 v19, 0x8
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_fmt(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
goto :goto_69f
:cond_708
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
const/16 v19, 0x1
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_fmt(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
goto :goto_69f
:pswitch_714
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
const/16 v19, 0x8
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->bits_per_raw_sample(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
:goto_71f
:cond_71f
move-object/from16 v0, p0
iget-wide v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioQuality:D
move-wide/from16 v18, v0
const-wide/16 v20, 0x0
cmpl-double v18, v18, v20
if-ltz v18, :cond_75f
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->flags()I
move-result v19
or-int/lit8 v19, v19, 0x2
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->flags(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
const-wide v19, 0x405d800000000000L
move-object/from16 v0, p0
iget-wide v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioQuality:D
move-wide/from16 v21, v0
mul-double v19, v19, v21
invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J
move-result-wide v19
move-wide/from16 v0, v19
long-to-int v0, v0
move/from16 v19, v0
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->global_quality(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
:cond_75f
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->flags()I
move-result v18
and-int/lit8 v18, v18, 0x40
if-eqz v18, :cond_784
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->flags()I
move-result v19
const/high16 v20, 0x40
or-int v19, v19, v20
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->flags(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
:cond_784
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodec;->capabilities()I
move-result v18
move/from16 v0, v18
and-int/lit16 v0, v0, 0x200
move/from16 v18, v0
if-eqz v18, :cond_7a1
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
const/16 v19, -0x2
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->strict_std_compliance(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
:cond_7a1
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
move-object/from16 v18, v0
const/16 v19, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->filename:Ljava/lang/String;
move-object/from16 v20, v0
const/16 v21, 0x1
invoke-static/range {v18 .. v21}, Lcom/googlecode/javacv/cpp/avformat;->av_dump_format(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;ILjava/lang/String;I)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
move-object/from16 v18, v0
if-eqz v18, :cond_979
new-instance v11, Lcom/googlecode/javacv/cpp/avutil$AVDictionary;
const/16 v18, 0x0
move-object/from16 v0, v18
invoke-direct {v11, v0}, Lcom/googlecode/javacv/cpp/avutil$AVDictionary;-><init>(Lcom/googlecode/javacpp/Pointer;)V
move-object/from16 v0, p0
iget-wide v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoQuality:D
move-wide/from16 v18, v0
const-wide/16 v20, 0x0
cmpl-double v18, v18, v20
if-ltz v18, :cond_7f7
const-string v18, "crf"
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
const-string v20, ""
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, p0
iget-wide v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoQuality:D
move-wide/from16 v20, v0
invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
const/16 v20, 0x0
move-object/from16 v0, v18
move-object/from16 v1, v19
move/from16 v2, v20
invoke-static {v11, v0, v1, v2}, Lcom/googlecode/javacv/cpp/avutil;->av_dict_set(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Ljava/lang/String;Ljava/lang/String;I)I
:cond_7f7
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->videoOptions:Ljava/util/HashMap;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
move-result-object v18
invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_805
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v18
if-eqz v18, :cond_85d
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/util/Map$Entry;
invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v18
check-cast v18, Ljava/lang/String;
invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v19
check-cast v19, Ljava/lang/String;
const/16 v20, 0x0
move-object/from16 v0, v18
move-object/from16 v1, v19
move/from16 v2, v20
invoke-static {v11, v0, v1, v2}, Lcom/googlecode/javacv/cpp/avutil;->av_dict_set(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Ljava/lang/String;Ljava/lang/String;I)I
goto :goto_805
:pswitch_829
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
const/16 v19, 0x10
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->bits_per_raw_sample(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
goto/16 :goto_71f
:pswitch_836
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
const/16 v19, 0x20
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->bits_per_raw_sample(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
goto/16 :goto_71f
:pswitch_843
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
const/16 v19, 0x20
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->bits_per_raw_sample(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
goto/16 :goto_71f
:pswitch_850
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
const/16 v19, 0x40
invoke-virtual/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->bits_per_raw_sample(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
goto/16 :goto_71f
:cond_85d
sget-object v19, Lco/vine/android/recorder/SwVineFrameRecorder;->LOCK:[I
monitor-enter v19
:try_start_860
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
move-object/from16 v20, v0
move-object/from16 v0, v18
move-object/from16 v1, v20
invoke-static {v0, v1, v11}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_open2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodec;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I
move-result v15
if-gez v15, :cond_8a1
invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/SwVineFrameRecorder;->release()V
new-instance v18, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
const-string v21, "avcodec_open2() error "
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
move-object/from16 v0, v20
invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, ": Could not open video codec."
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
move-object/from16 v0, v18
move-object/from16 v1, v20
invoke-direct {v0, v1}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;)V
throw v18
:catchall_89e
move-exception v18
monitor-exit v19
:try_end_8a0
.catchall {:try_start_860 .. :try_end_8a0} :catchall_89e
throw v18
:try_start_8a1
:cond_8a1
monitor-exit v19
:try_end_8a2
.catchall {:try_start_8a1 .. :try_end_8a2} :catchall_89e
invoke-static {v11}, Lcom/googlecode/javacv/cpp/avutil;->av_dict_free(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)V
const/16 v18, 0x0
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->video_outbuf:Lcom/googlecode/javacpp/BytePointer;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->flags()I
move-result v18
and-int/lit8 v18, v18, 0x20
if-nez v18, :cond_8f9
const/high16 v18, 0x4
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width()I
move-result v19
mul-int/lit8 v19, v19, 0x8
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v20, v0
invoke-virtual/range {v20 .. v20}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height()I
move-result v20
mul-int v19, v19, v20
invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I
move-result v18
move/from16 v0, v18
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->video_outbuf_size:I
new-instance v18, Lcom/googlecode/javacpp/BytePointer;
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_outbuf_size:I
move/from16 v19, v0
move/from16 v0, v19
int-to-long v0, v0
move-wide/from16 v19, v0
invoke-static/range {v19 .. v20}, Lcom/googlecode/javacv/cpp/avutil;->av_malloc(J)Lcom/googlecode/javacpp/Pointer;
move-result-object v19
invoke-direct/range {v18 .. v19}, Lcom/googlecode/javacpp/BytePointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->video_outbuf:Lcom/googlecode/javacpp/BytePointer;
:cond_8f9
invoke-static {}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_alloc_frame()Lcom/googlecode/javacv/cpp/avutil$AVFrame;
move-result-object v18
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
if-nez v18, :cond_910
invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/SwVineFrameRecorder;->release()V
new-instance v18, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
const-string v19, "avcodec_alloc_frame() error: Could not allocate picture."
invoke-direct/range {v18 .. v19}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;)V
throw v18
:cond_910
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
move-object/from16 v18, v0
const-wide/16 v19, 0x0
invoke-virtual/range {v18 .. v20}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->pts(J)Lcom/googlecode/javacv/cpp/avutil$AVFrame;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt()I
move-result v18
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width()I
move-result v19
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v20, v0
invoke-virtual/range {v20 .. v20}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height()I
move-result v20
invoke-static/range {v18 .. v20}, Lcom/googlecode/javacv/cpp/avcodec;->avpicture_get_size(III)I
move-result v16
new-instance v18, Lcom/googlecode/javacpp/BytePointer;
move/from16 v0, v16
int-to-long v0, v0
move-wide/from16 v19, v0
invoke-static/range {v19 .. v20}, Lcom/googlecode/javacv/cpp/avutil;->av_malloc(J)Lcom/googlecode/javacpp/Pointer;
move-result-object v19
invoke-direct/range {v18 .. v19}, Lcom/googlecode/javacpp/BytePointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->picture_buf:Lcom/googlecode/javacpp/BytePointer;
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacpp/BytePointer;->isNull()Z
move-result v18
if-eqz v18, :cond_962
invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/SwVineFrameRecorder;->release()V
new-instance v18, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
const-string v19, "av_malloc() error: Could not allocate picture buffer."
invoke-direct/range {v18 .. v19}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;)V
throw v18
:cond_962
invoke-static {}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_alloc_frame()Lcom/googlecode/javacv/cpp/avutil$AVFrame;
move-result-object v18
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->tmp_picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
if-nez v18, :cond_979
invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/SwVineFrameRecorder;->release()V
new-instance v18, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
const-string v19, "avcodec_alloc_frame() error: Could not allocate temporary picture."
invoke-direct/range {v18 .. v19}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;)V
throw v18
:cond_979
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
move-object/from16 v18, v0
if-eqz v18, :cond_b71
new-instance v11, Lcom/googlecode/javacv/cpp/avutil$AVDictionary;
const/16 v18, 0x0
move-object/from16 v0, v18
invoke-direct {v11, v0}, Lcom/googlecode/javacv/cpp/avutil$AVDictionary;-><init>(Lcom/googlecode/javacpp/Pointer;)V
move-object/from16 v0, p0
iget-wide v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioQuality:D
move-wide/from16 v18, v0
const-wide/16 v20, 0x0
cmpl-double v18, v18, v20
if-ltz v18, :cond_9bc
const-string v18, "crf"
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
const-string v20, ""
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, p0
iget-wide v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioQuality:D
move-wide/from16 v20, v0
invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
const/16 v20, 0x0
move-object/from16 v0, v18
move-object/from16 v1, v19
move/from16 v2, v20
invoke-static {v11, v0, v1, v2}, Lcom/googlecode/javacv/cpp/avutil;->av_dict_set(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Ljava/lang/String;Ljava/lang/String;I)I
:cond_9bc
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audioOptions:Ljava/util/HashMap;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
move-result-object v18
invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_9ca
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v18
if-eqz v18, :cond_9ee
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/util/Map$Entry;
invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v18
check-cast v18, Ljava/lang/String;
invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v19
check-cast v19, Ljava/lang/String;
const/16 v20, 0x0
move-object/from16 v0, v18
move-object/from16 v1, v19
move/from16 v2, v20
invoke-static {v11, v0, v1, v2}, Lcom/googlecode/javacv/cpp/avutil;->av_dict_set(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Ljava/lang/String;Ljava/lang/String;I)I
goto :goto_9ca
:cond_9ee
sget-object v19, Lco/vine/android/recorder/SwVineFrameRecorder;->LOCK:[I
monitor-enter v19
:try_start_9f1
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
move-object/from16 v20, v0
move-object/from16 v0, v18
move-object/from16 v1, v20
invoke-static {v0, v1, v11}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_open2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodec;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I
move-result v15
if-gez v15, :cond_a32
invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/SwVineFrameRecorder;->release()V
new-instance v18, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
const-string v21, "avcodec_open2() error "
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
move-object/from16 v0, v20
invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, ": Could not open audio codec."
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
move-object/from16 v0, v18
move-object/from16 v1, v20
invoke-direct {v0, v1}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;)V
throw v18
:catchall_a2f
move-exception v18
monitor-exit v19
:try_end_a31
.catchall {:try_start_9f1 .. :try_end_a31} :catchall_a2f
throw v18
:try_start_a32
:cond_a32
monitor-exit v19
:try_end_a33
.catchall {:try_start_a32 .. :try_end_a33} :catchall_a2f
invoke-static {v11}, Lcom/googlecode/javacv/cpp/avutil;->av_dict_free(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)V
const/high16 v18, 0x4
move/from16 v0, v18
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_outbuf_size:I
new-instance v18, Lcom/googlecode/javacpp/BytePointer;
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_outbuf_size:I
move/from16 v19, v0
move/from16 v0, v19
int-to-long v0, v0
move-wide/from16 v19, v0
invoke-static/range {v19 .. v20}, Lcom/googlecode/javacv/cpp/avutil;->av_malloc(J)Lcom/googlecode/javacpp/Pointer;
move-result-object v19
invoke-direct/range {v18 .. v19}, Lcom/googlecode/javacpp/BytePointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_outbuf:Lcom/googlecode/javacpp/BytePointer;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->frame_size()I
move-result v18
const/16 v19, 0x1
move/from16 v0, v18
move/from16 v1, v19
if-gt v0, v1, :cond_b1e
const/16 v18, 0x4000
move/from16 v0, v18
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_outbuf_size:I
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_outbuf_size:I
move/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channels()I
move-result v19
div-int v18, v18, v19
move/from16 v0, v18
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_input_frame_size:I
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I
move-result v18
packed-switch v18, :pswitch_data_c0c
:goto_a97
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_fmt()I
move-result v18
invoke-static/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avutil;->av_sample_fmt_is_planar(I)I
move-result v18
if-eqz v18, :cond_b30
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channels()I
move-result v13
:goto_ab1
const/16 v18, 0x0
check-cast v18, Lcom/googlecode/javacpp/IntPointer;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channels()I
move-result v19
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_input_frame_size:I
move/from16 v20, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v21, v0
invoke-virtual/range {v21 .. v21}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_fmt()I
move-result v21
const/16 v22, 0x1
invoke-static/range {v18 .. v22}, Lcom/googlecode/javacv/cpp/avutil;->av_samples_get_buffer_size(Lcom/googlecode/javacpp/IntPointer;IIII)I
move-result v18
div-int v3, v18, v13
new-array v0, v13, [Lcom/googlecode/javacpp/BytePointer;
move-object/from16 v18, v0
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;
const/4 v7, 0x0
:goto_ae2
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;
move-object/from16 v18, v0
move-object/from16 v0, v18
array-length v0, v0
move/from16 v18, v0
move/from16 v0, v18
if-ge v7, v0, :cond_b32
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;
move-object/from16 v18, v0
new-instance v19, Lcom/googlecode/javacpp/BytePointer;
int-to-long v0, v3
move-wide/from16 v20, v0
invoke-static/range {v20 .. v21}, Lcom/googlecode/javacv/cpp/avutil;->av_malloc(J)Lcom/googlecode/javacpp/Pointer;
move-result-object v20
invoke-direct/range {v19 .. v20}, Lcom/googlecode/javacpp/BytePointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
move-object/from16 v0, v19
invoke-virtual {v0, v3}, Lcom/googlecode/javacpp/BytePointer;->capacity(I)Lcom/googlecode/javacpp/BytePointer;
move-result-object v19
aput-object v19, v18, v7
add-int/lit8 v7, v7, 0x1
goto :goto_ae2
:pswitch_b0e
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_input_frame_size:I
move/from16 v18, v0
shr-int/lit8 v18, v18, 0x1
move/from16 v0, v18
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_input_frame_size:I
goto/16 :goto_a97
:cond_b1e
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->frame_size()I
move-result v18
move/from16 v0, v18
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_input_frame_size:I
goto/16 :goto_a97
:cond_b30
const/4 v13, 0x1
goto :goto_ab1
:cond_b32
const/16 v18, 0x8
move/from16 v0, v18
new-array v0, v0, [Lcom/googlecode/javacpp/Pointer;
move-object/from16 v18, v0
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;
new-instance v18, Lcom/googlecode/javacpp/PointerPointer;
const/16 v19, 0x8
invoke-direct/range {v18 .. v19}, Lcom/googlecode/javacpp/PointerPointer;-><init>(I)V
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_in_ptr:Lcom/googlecode/javacpp/PointerPointer;
new-instance v18, Lcom/googlecode/javacpp/PointerPointer;
const/16 v19, 0x8
invoke-direct/range {v18 .. v19}, Lcom/googlecode/javacpp/PointerPointer;-><init>(I)V
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->samples_out_ptr:Lcom/googlecode/javacpp/PointerPointer;
invoke-static {}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_alloc_frame()Lcom/googlecode/javacv/cpp/avutil$AVFrame;
move-result-object v18
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwVineFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
if-nez v18, :cond_b71
invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/SwVineFrameRecorder;->release()V
new-instance v18, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
const-string v19, "avcodec_alloc_frame() error: Could not allocate audio frame."
invoke-direct/range {v18 .. v19}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;)V
throw v18
:cond_b71
new-instance v18, Ljava/io/File;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->filename:Ljava/lang/String;
move-object/from16 v19, v0
invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static/range {v18 .. v18}, Lco/vine/android/util/SystemUtil;->quietlyEnsureParentExists(Ljava/io/File;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->flags()I
move-result v18
and-int/lit8 v18, v18, 0x1
if-nez v18, :cond_be1
new-instance v12, Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
const/16 v18, 0x0
move-object/from16 v0, v18
invoke-direct {v12, v0}, Lcom/googlecode/javacv/cpp/avformat$AVIOContext;-><init>(Lcom/googlecode/javacpp/Pointer;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->filename:Ljava/lang/String;
move-object/from16 v18, v0
const/16 v19, 0x2
move-object/from16 v0, v18
move/from16 v1, v19
invoke-static {v12, v0, v1}, Lcom/googlecode/javacv/cpp/avformat;->avio_open(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Ljava/lang/String;I)I
move-result v15
if-gez v15, :cond_bd6
invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/SwVineFrameRecorder;->release()V
new-instance v18, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
const-string v20, "BAD avio_open error() error "
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v19
const-string v20, ": Could not open \'"
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->filename:Ljava/lang/String;
move-object/from16 v20, v0
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
invoke-direct/range {v18 .. v19}, Lco/vine/android/recorder/SwVineFrameRecorder$Exception;-><init>(Ljava/lang/String;)V
throw v18
:cond_bd6
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
move-object/from16 v18, v0
move-object/from16 v0, v18
invoke-virtual {v0, v12}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->pb(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
:cond_be1
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
move-object/from16 v19, v0
const/16 v18, 0x0
check-cast v18, Lcom/googlecode/javacpp/PointerPointer;
move-object/from16 v0, v19
move-object/from16 v1, v18
invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/avformat;->avformat_write_header(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacpp/PointerPointer;)I
return-void
nop
:pswitch_data_c0c
.packed-switch 0x10000
:pswitch_b0e
:pswitch_b0e
:pswitch_b0e
:pswitch_b0e
.end packed-switch
:pswitch_data_bf4
.packed-switch 0x0
:pswitch_714
:pswitch_829
:pswitch_836
:pswitch_843
:pswitch_850
:pswitch_714
:pswitch_829
:pswitch_836
:pswitch_843
:pswitch_850
.end packed-switch
.end method
.method public stop()V
.registers 6
const/4 v1, 0x0
iget-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
if-eqz v0, :cond_55
:cond_5
iget-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
if-eqz v0, :cond_11
const/4 v0, -0x1
const/4 v2, 0x0
invoke-virtual {p0, v1, v0, v2}, Lco/vine/android/recorder/SwVineFrameRecorder;->record(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;IZ)Z
move-result v0
if-nez v0, :cond_5
:cond_11
iget-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
if-eqz v0, :cond_1e
move-object v0, v1
check-cast v0, Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-virtual {p0, v0}, Lco/vine/android/recorder/SwVineFrameRecorder;->record(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)Z
move-result v0
if-nez v0, :cond_11
:cond_1e
iget-boolean v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->interleaved:Z
if-eqz v0, :cond_59
iget-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
if-eqz v0, :cond_59
iget-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
if-eqz v0, :cond_59
iget-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/avformat;->av_interleaved_write_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I
:goto_2f
iget-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
iget-wide v1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->audio_clock:J
const-wide/16 v3, 0x3e8
mul-long/2addr v1, v3
iget v3, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->sampleRate:I
int-to-long v3, v3
div-long/2addr v1, v3
invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->duration(J)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
iget-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
invoke-static {v0}, Lcom/googlecode/javacv/cpp/avformat;->av_write_trailer(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;)I
iget-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->flags()I
move-result v0
and-int/lit8 v0, v0, 0x1
if-nez v0, :cond_55
iget-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->pb()Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
move-result-object v0
invoke-static {v0}, Lcom/googlecode/javacv/cpp/avformat;->avio_close(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)I
:cond_55
invoke-virtual {p0}, Lco/vine/android/recorder/SwVineFrameRecorder;->release()V
return-void
:cond_59
iget-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/avformat;->av_write_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I
goto :goto_2f
.end method
.method public stopEncoding()V
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
if-eqz v0, :cond_17
iget-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->flags()I
move-result v0
and-int/lit8 v0, v0, 0x1
if-nez v0, :cond_17
iget-object v0, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->pb()Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
move-result-object v0
invoke-static {v0}, Lcom/googlecode/javacv/cpp/avformat;->avio_close(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)I
:cond_17
invoke-virtual {p0}, Lco/vine/android/recorder/SwVineFrameRecorder;->release()V
return-void
.end method
.method public writeEncodedImage([BIIZ)V
.registers 11
const/4 v1, 0x1
iput-boolean v1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->hasData:Z
iget-object v1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-static {v1}, Lcom/googlecode/javacv/cpp/avcodec;->av_init_packet(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)V
iget-object v1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_outbuf:Lcom/googlecode/javacpp/BytePointer;
invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->data(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
iget-object v1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->data()Lcom/googlecode/javacpp/BytePointer;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/BytePointer;->position(I)Lcom/googlecode/javacpp/BytePointer;
invoke-virtual {v0, p1, p2, p3}, Lcom/googlecode/javacpp/BytePointer;->put([BII)Lcom/googlecode/javacpp/BytePointer;
invoke-virtual {v0, p3}, Lcom/googlecode/javacpp/BytePointer;->limit(I)Lcom/googlecode/javacpp/BytePointer;
iget-object v1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v1, p3}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
iget-object v1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->pts()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->pts(J)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
iget-object v1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->pts()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->dts(J)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
iget-object v1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->pts()J
move-result-wide v2
const-wide/16 v4, 0x1
add-long/2addr v2, v4
invoke-virtual {v1, v2, v3}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->pts(J)Lcom/googlecode/javacv/cpp/avutil$AVFrame;
iget-object v1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->pts()J
move-result-wide v1
sget-wide v3, Lcom/googlecode/javacv/cpp/avutil;->AV_NOPTS_VALUE:J
cmp-long v1, v1, v3
if-eqz v1, :cond_6f
iget-object v1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->pts()J
move-result-wide v2
iget-object v4, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;
move-result-object v4
iget-object v5, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;
move-result-object v5
invoke-static {v2, v3, v4, v5}, Lcom/googlecode/javacv/cpp/avutil;->av_rescale_q(JLcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->pts(J)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
:cond_6f
iget-object v1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->dts()J
move-result-wide v1
sget-wide v3, Lcom/googlecode/javacv/cpp/avutil;->AV_NOPTS_VALUE:J
cmp-long v1, v1, v3
if-eqz v1, :cond_96
iget-object v1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->dts()J
move-result-wide v2
iget-object v4, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;
move-result-object v4
iget-object v5, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;
move-result-object v5
invoke-static {v2, v3, v4, v5}, Lcom/googlecode/javacv/cpp/avutil;->av_rescale_q(JLcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->dts(J)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
:cond_96
iget-object v1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->index()I
move-result v2
invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->stream_index(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
if-eqz p4, :cond_b0
iget-object v1, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
iget-object v2, p0, Lco/vine/android/recorder/SwVineFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->flags()I
move-result v2
or-int/lit8 v2, v2, 0x1
invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->flags(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
:cond_b0
invoke-direct {p0}, Lco/vine/android/recorder/SwVineFrameRecorder;->writeVideoFrame()I
return-void
.end method