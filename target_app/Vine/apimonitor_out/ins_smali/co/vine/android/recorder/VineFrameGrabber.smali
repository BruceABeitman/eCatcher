.class public Lco/vine/android/recorder/VineFrameGrabber;
.super Ljava/lang/Object;
.source "VineFrameGrabber.java"
.field static final synthetic $assertionsDisabled:Z
.field protected audioChannels:I
.field private audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.field private audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
.field private buffer_rgb:Lcom/googlecode/javacpp/BytePointer;
.field protected deinterlace:Z
.field private filename:Ljava/lang/String;
.field protected format:Ljava/lang/String;
.field private frame:Lcom/googlecode/javacv/Frame;
.field private frameGrabbed:Z
.field protected frameNumber:I
.field protected frameRate:D
.field protected gamma:D
.field private got_frame:[I
.field protected imageHeight:I
.field protected imageMode:Lco/vine/android/recorder/VineFrameGrabber$ImageMode;
.field protected imageWidth:I
.field private img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;
.field protected numBuffers:I
.field private oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.field private picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
.field private picture_rgb:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
.field protected pixelFormat:I
.field private pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
.field private pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
.field private return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.field protected sampleFormat:I
.field protected sampleRate:I
.field private samples_buf:[Ljava/nio/Buffer;
.field private samples_frame:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
.field private samples_ptr:[Lcom/googlecode/javacpp/BytePointer;
.field private sizeof_pkt:I
.field protected timestamp:J
.field private video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.field private video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
.method static constructor <clinit>()V
.registers 2
const-class v0, Lco/vine/android/recorder/VineFrameGrabber;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_16
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lco/vine/android/recorder/VineFrameGrabber;->$assertionsDisabled:Z
sget-object v1, Lco/vine/android/recorder/SwVineFrameRecorder;->LOCK:[I
monitor-enter v1
:try_start_e
invoke-static {}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_register_all()V
invoke-static {}, Lcom/googlecode/javacv/cpp/avformat;->av_register_all()V
monitor-exit v1
return-void
:cond_16
const/4 v0, 0x0
goto :goto_9
:catchall_18
move-exception v0
monitor-exit v1
:try_end_1a
.catchall {:try_start_e .. :try_end_1a} :catchall_18
throw v0
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 6
const-wide/16 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->format:Ljava/lang/String;
iput v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->imageWidth:I
iput v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->imageHeight:I
iput v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->audioChannels:I
sget-object v0, Lco/vine/android/recorder/VineFrameGrabber$ImageMode;->COLOR:Lco/vine/android/recorder/VineFrameGrabber$ImageMode;
iput-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->imageMode:Lco/vine/android/recorder/VineFrameGrabber$ImageMode;
const/4 v0, -0x1
iput v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->pixelFormat:I
iput-wide v2, p0, Lco/vine/android/recorder/VineFrameGrabber;->frameRate:D
iput v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->sampleFormat:I
iput v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->sampleRate:I
const/4 v0, 0x4
iput v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->numBuffers:I
iput-wide v2, p0, Lco/vine/android/recorder/VineFrameGrabber;->gamma:D
iput-boolean v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->deinterlace:Z
iput v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->frameNumber:I
const-wide/16 v0, 0x0
iput-wide v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->timestamp:J
iput-object p1, p0, Lco/vine/android/recorder/VineFrameGrabber;->filename:Ljava/lang/String;
return-void
.end method
.method private grabFrame(ZZ)Lcom/googlecode/javacv/Frame;
.registers 21
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->frame:Lcom/googlecode/javacv/Frame;
const/4 v14, 0x0
iput-object v14, v13, Lcom/googlecode/javacv/Frame;->image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->frame:Lcom/googlecode/javacv/Frame;
const/4 v14, 0x0
iput-object v14, v13, Lcom/googlecode/javacv/Frame;->samples:[Ljava/nio/Buffer;
move-object/from16 v0, p0
iget-boolean v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->frameGrabbed:Z
if-eqz v13, :cond_2d
const/4 v13, 0x0
move-object/from16 v0, p0
iput-boolean v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->frameGrabbed:Z
if-eqz p1, :cond_1e
invoke-direct/range {p0 .. p0}, Lco/vine/android/recorder/VineFrameGrabber;->processImage()V
:cond_1e
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->frame:Lcom/googlecode/javacv/Frame;
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
iput-object v14, v13, Lcom/googlecode/javacv/Frame;->image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->frame:Lcom/googlecode/javacv/Frame;
:goto_2c
return-object v13
:cond_2d
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
if-eqz v13, :cond_3d
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
invoke-virtual {v13}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->isNull()Z
move-result v13
if-eqz v13, :cond_45
:cond_3d
new-instance v13, Lco/vine/android/recorder/VineFrameGrabber$Exception;
const-string v14, "Could not grab: No AVFormatContext. (Has start() been called?)"
invoke-direct {v13, v14}, Lco/vine/android/recorder/VineFrameGrabber$Exception;-><init>(Ljava/lang/String;)V
throw v13
:cond_45
const/4 v3, 0x0
:goto_46
:cond_46
if-nez v3, :cond_2ca
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v13}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size()I
move-result v13
if-gtz v13, :cond_85
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-static {v13, v14}, Lcom/googlecode/javacv/cpp/avformat;->av_read_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I
move-result v13
if-gez v13, :cond_85
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
if-eqz v13, :cond_11a
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->index()I
move-result v14
invoke-virtual {v13, v14}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->stream_index(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
const/4 v14, 0x0
invoke-virtual {v13, v14}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->data(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
const/4 v14, 0x0
invoke-virtual {v13, v14}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
:cond_85
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
if-eqz v13, :cond_134
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v13}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->stream_index()I
move-result v13
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->index()I
move-result v14
if-ne v13, v14, :cond_134
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/recorder/VineFrameGrabber;->got_frame:[I
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
move-object/from16 v16, v0
invoke-static/range {v13 .. v16}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_decode_video2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avutil$AVFrame;[ILcom/googlecode/javacv/cpp/avcodec$AVPacket;)I
move-result v5
if-ltz v5, :cond_11d
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->got_frame:[I
const/4 v14, 0x0
aget v13, v13, v14
if-eqz v13, :cond_11d
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-static {v13}, Lcom/googlecode/javacv/cpp/avutil;->av_frame_get_best_effort_timestamp(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)J
move-result-wide v8
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
invoke-virtual {v13}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;
move-result-object v12
const-wide/32 v13, 0xf4240
mul-long/2addr v13, v8
invoke-virtual {v12}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->num()I
move-result v15
int-to-long v15, v15
mul-long/2addr v13, v15
invoke-virtual {v12}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->den()I
move-result v15
int-to-long v15, v15
div-long/2addr v13, v15
move-object/from16 v0, p0
iput-wide v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->timestamp:J
move-object/from16 v0, p0
iget-wide v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->timestamp:J
long-to-double v13, v13
invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/VineFrameGrabber;->getFrameRate()D
move-result-wide v15
mul-double/2addr v13, v15
const-wide v15, 0x412e848000000000L
div-double/2addr v13, v15
double-to-int v13, v13
move-object/from16 v0, p0
iput v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->frameNumber:I
if-eqz p1, :cond_fc
invoke-direct/range {p0 .. p0}, Lco/vine/android/recorder/VineFrameGrabber;->processImage()V
:cond_fc
const/4 v3, 0x1
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->frame:Lcom/googlecode/javacv/Frame;
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
iput-object v14, v13, Lcom/googlecode/javacv/Frame;->image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
:goto_107
:cond_107
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v13}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size()I
move-result v13
if-gtz v13, :cond_46
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-static {v13}, Lcom/googlecode/javacv/cpp/avcodec;->av_free_packet(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)V
goto/16 :goto_46
:cond_11a
const/4 v13, 0x0
goto/16 :goto_2c
:cond_11d
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v13}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->data()Lcom/googlecode/javacpp/BytePointer;
move-result-object v13
if-nez v13, :cond_107
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v13}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size()I
move-result v13
if-nez v13, :cond_107
const/4 v13, 0x0
goto/16 :goto_2c
:cond_134
if-eqz p2, :cond_107
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
if-eqz v13, :cond_107
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v13}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->stream_index()I
move-result v13
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->index()I
move-result v14
if-ne v13, v14, :cond_107
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v13}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size()I
move-result v13
if-gtz v13, :cond_168
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
move-object/from16 v0, p0
iget v15, v0, Lco/vine/android/recorder/VineFrameGrabber;->sizeof_pkt:I
int-to-long v15, v15
invoke-static/range {v13 .. v16}, Lcom/googlecode/javacpp/BytePointer;->memcpy(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;J)Lcom/googlecode/javacpp/Pointer;
:cond_168
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_frame:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-static {v13}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_get_frame_defaults(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)V
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_frame:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/recorder/VineFrameGrabber;->got_frame:[I
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
move-object/from16 v16, v0
invoke-static/range {v13 .. v16}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_decode_audio4(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avutil$AVFrame;[ILcom/googlecode/javacv/cpp/avcodec$AVPacket;)I
move-result v5
if-gtz v5, :cond_191
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
const/4 v14, 0x0
invoke-virtual {v13, v14}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
goto/16 :goto_107
:cond_191
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->data()Lcom/googlecode/javacpp/BytePointer;
move-result-object v14
invoke-virtual {v14, v5}, Lcom/googlecode/javacpp/BytePointer;->position(I)Lcom/googlecode/javacpp/BytePointer;
move-result-object v14
invoke-virtual {v13, v14}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->data(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size()I
move-result v14
sub-int/2addr v14, v5
invoke-virtual {v13, v14}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->got_frame:[I
const/4 v14, 0x0
aget v13, v13, v14
if-eqz v13, :cond_107
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_frame:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-static {v13}, Lcom/googlecode/javacv/cpp/avutil;->av_frame_get_best_effort_timestamp(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)J
move-result-wide v8
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
invoke-virtual {v13}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;
move-result-object v12
const-wide/32 v13, 0xf4240
mul-long/2addr v13, v8
invoke-virtual {v12}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->num()I
move-result v15
int-to-long v15, v15
mul-long/2addr v13, v15
invoke-virtual {v12}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->den()I
move-result v15
int-to-long v15, v15
div-long/2addr v13, v15
move-object/from16 v0, p0
iput-wide v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->timestamp:J
const/4 v3, 0x1
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_frame:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-virtual {v13}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->format()I
move-result v10
invoke-static {v10}, Lcom/googlecode/javacv/cpp/avutil;->av_sample_fmt_is_planar(I)I
move-result v13
if-eqz v13, :cond_284
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_frame:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-virtual {v13}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->channels()I
move-result v7
:goto_1f8
const/4 v13, 0x0
check-cast v13, Lcom/googlecode/javacpp/IntPointer;
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channels()I
move-result v14
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_frame:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-virtual {v15}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->nb_samples()I
move-result v15
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v16, v0
invoke-virtual/range {v16 .. v16}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_fmt()I
move-result v16
const/16 v17, 0x1
invoke-static/range {v13 .. v17}, Lcom/googlecode/javacv/cpp/avutil;->av_samples_get_buffer_size(Lcom/googlecode/javacpp/IntPointer;IIII)I
move-result v13
div-int v2, v13, v7
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_buf:[Ljava/nio/Buffer;
if-eqz v13, :cond_22a
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_buf:[Ljava/nio/Buffer;
array-length v13, v13
if-eq v13, v7, :cond_236
:cond_22a
new-array v13, v7, [Lcom/googlecode/javacpp/BytePointer;
move-object/from16 v0, p0
iput-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_ptr:[Lcom/googlecode/javacpp/BytePointer;
new-array v13, v7, [Ljava/nio/Buffer;
move-object/from16 v0, p0
iput-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_buf:[Ljava/nio/Buffer;
:cond_236
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->frame:Lcom/googlecode/javacv/Frame;
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_buf:[Ljava/nio/Buffer;
iput-object v14, v13, Lcom/googlecode/javacv/Frame;->samples:[Ljava/nio/Buffer;
invoke-static {v10}, Lcom/googlecode/javacv/cpp/avutil;->av_get_bytes_per_sample(I)I
move-result v13
div-int v11, v2, v13
const/4 v4, 0x0
:goto_247
if-ge v4, v7, :cond_107
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_frame:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-virtual {v13, v4}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->data(I)Lcom/googlecode/javacpp/BytePointer;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_ptr:[Lcom/googlecode/javacpp/BytePointer;
aget-object v13, v13, v4
invoke-virtual {v6, v13}, Lcom/googlecode/javacpp/BytePointer;->equals(Ljava/lang/Object;)Z
move-result v13
if-eqz v13, :cond_269
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_ptr:[Lcom/googlecode/javacpp/BytePointer;
aget-object v13, v13, v4
invoke-virtual {v13}, Lcom/googlecode/javacpp/BytePointer;->capacity()I
move-result v13
if-ge v13, v2, :cond_28d
:cond_269
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_ptr:[Lcom/googlecode/javacpp/BytePointer;
invoke-virtual {v6, v2}, Lcom/googlecode/javacpp/BytePointer;->capacity(I)Lcom/googlecode/javacpp/BytePointer;
move-result-object v14
aput-object v14, v13, v4
invoke-virtual {v6}, Lcom/googlecode/javacpp/BytePointer;->asBuffer()Ljava/nio/ByteBuffer;
move-result-object v1
packed-switch v10, :pswitch_data_2d0
sget-boolean v13, Lco/vine/android/recorder/VineFrameGrabber;->$assertionsDisabled:Z
if-nez v13, :cond_28d
new-instance v13, Ljava/lang/AssertionError;
invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V
throw v13
:cond_284
const/4 v7, 0x1
goto/16 :goto_1f8
:pswitch_287
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_buf:[Ljava/nio/Buffer;
aput-object v1, v13, v4
:goto_28d
:cond_28d
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_buf:[Ljava/nio/Buffer;
aget-object v13, v13, v4
const/4 v14, 0x0
invoke-virtual {v13, v14}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;
move-result-object v13
invoke-virtual {v13, v11}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;
add-int/lit8 v4, v4, 0x1
goto :goto_247
:pswitch_29e
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_buf:[Ljava/nio/Buffer;
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;
move-result-object v14
aput-object v14, v13, v4
goto :goto_28d
:pswitch_2a9
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_buf:[Ljava/nio/Buffer;
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;
move-result-object v14
aput-object v14, v13, v4
goto :goto_28d
:pswitch_2b4
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_buf:[Ljava/nio/Buffer;
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;
move-result-object v14
aput-object v14, v13, v4
goto :goto_28d
:pswitch_2bf
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_buf:[Ljava/nio/Buffer;
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;
move-result-object v14
aput-object v14, v13, v4
goto :goto_28d
:cond_2ca
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->frame:Lcom/googlecode/javacv/Frame;
goto/16 :goto_2c
:pswitch_data_2d0
.packed-switch 0x0
:pswitch_287
:pswitch_29e
:pswitch_2a9
:pswitch_2b4
:pswitch_2bf
:pswitch_287
:pswitch_29e
:pswitch_2a9
:pswitch_2b4
:pswitch_2bf
.end packed-switch
.end method
.method private processImage()V
.registers 14
const/4 v8, 0x0
const/4 v12, 0x0
sget-object v0, Lco/vine/android/recorder/VineFrameGrabber$1;->$SwitchMap$co$vine$android$recorder$VineFrameGrabber$ImageMode:[I
iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->imageMode:Lco/vine/android/recorder/VineFrameGrabber$ImageMode;
invoke-virtual {v1}, Lco/vine/android/recorder/VineFrameGrabber$ImageMode;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_10a
sget-boolean v0, Lco/vine/android/recorder/VineFrameGrabber;->$assertionsDisabled:Z
if-nez v0, :cond_a8
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:pswitch_19
iget-boolean v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->deinterlace:Z
if-eqz v0, :cond_39
new-instance v11, Lcom/googlecode/javacv/cpp/avcodec$AVPicture;
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-direct {v11, v0}, Lcom/googlecode/javacv/cpp/avcodec$AVPicture;-><init>(Lcom/googlecode/javacpp/Pointer;)V
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt()I
move-result v0
iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width()I
move-result v1
iget-object v2, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height()I
move-result v2
invoke-static {v11, v11, v0, v1, v2}, Lcom/googlecode/javacv/cpp/avcodec;->avpicture_deinterlace(Lcom/googlecode/javacv/cpp/avcodec$AVPicture;Lcom/googlecode/javacv/cpp/avcodec$AVPicture;III)I
:cond_39
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;
iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width()I
move-result v1
iget-object v2, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height()I
move-result v2
iget-object v3, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt()I
move-result v3
invoke-virtual {p0}, Lco/vine/android/recorder/VineFrameGrabber;->getImageWidth()I
move-result v4
invoke-virtual {p0}, Lco/vine/android/recorder/VineFrameGrabber;->getImageHeight()I
move-result v5
invoke-virtual {p0}, Lco/vine/android/recorder/VineFrameGrabber;->getPixelFormat()I
move-result v6
const/4 v7, 0x2
move-object v10, v8
check-cast v10, Lcom/googlecode/javacpp/DoublePointer;
move-object v9, v8
invoke-static/range {v0 .. v10}, Lcom/googlecode/javacv/cpp/swscale;->sws_getCachedContext(Lcom/googlecode/javacv/cpp/swscale$SwsContext;IIIIIIILcom/googlecode/javacv/cpp/swscale$SwsFilter;Lcom/googlecode/javacv/cpp/swscale$SwsFilter;Lcom/googlecode/javacpp/DoublePointer;)Lcom/googlecode/javacv/cpp/swscale$SwsContext;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;
if-nez v0, :cond_70
new-instance v0, Lco/vine/android/recorder/VineFrameGrabber$Exception;
const-string v1, "sws_getCachedContext() error: Cannot initialize the conversion context."
invoke-direct {v0, v1}, Lco/vine/android/recorder/VineFrameGrabber$Exception;-><init>(Ljava/lang/String;)V
throw v0
:cond_70
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;
new-instance v1, Lcom/googlecode/javacpp/PointerPointer;
iget-object v2, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-direct {v1, v2}, Lcom/googlecode/javacpp/PointerPointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
iget-object v2, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->linesize()Lcom/googlecode/javacpp/IntPointer;
move-result-object v2
iget-object v3, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height()I
move-result v4
new-instance v5, Lcom/googlecode/javacpp/PointerPointer;
iget-object v3, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture_rgb:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-direct {v5, v3}, Lcom/googlecode/javacpp/PointerPointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
iget-object v3, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture_rgb:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->linesize()Lcom/googlecode/javacpp/IntPointer;
move-result-object v6
move v3, v12
invoke-static/range {v0 .. v6}, Lcom/googlecode/javacv/cpp/swscale;->sws_scale(Lcom/googlecode/javacv/cpp/swscale$SwsContext;Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;IILcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;)I
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->buffer_rgb:Lcom/googlecode/javacpp/BytePointer;
invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->imageData(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture_rgb:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-virtual {v1, v12}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->linesize(I)I
move-result v1
invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
:goto_a8
:cond_a8
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I
move-result v1
iget-object v2, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I
move-result v2
mul-int/2addr v1, v2
invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->imageSize(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I
move-result v1
iget-object v2, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I
move-result v2
div-int/2addr v1, v2
invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
return-void
:pswitch_cd
sget-boolean v0, Lco/vine/android/recorder/VineFrameGrabber;->$assertionsDisabled:Z
if-nez v0, :cond_f3
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width()I
move-result v0
iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I
move-result v1
if-ne v0, v1, :cond_ed
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height()I
move-result v0
iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I
move-result v1
if-eq v0, v1, :cond_f3
:cond_ed
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_f3
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-virtual {v1, v12}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->data(I)Lcom/googlecode/javacpp/BytePointer;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->imageData(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-virtual {v1, v12}, Lcom/googlecode/javacv/cpp/avutil$AVFrame;->linesize(I)I
move-result v1
invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
goto :goto_a8
:pswitch_data_10a
.packed-switch 0x1
:pswitch_19
:pswitch_19
:pswitch_cd
.end packed-switch
.end method
.method protected finalize()V
.registers 1
invoke-super {p0}, Ljava/lang/Object;->finalize()V
invoke-virtual {p0}, Lco/vine/android/recorder/VineFrameGrabber;->release()V
return-void
.end method
.method public getAudioChannels()I
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
if-nez v0, :cond_7
iget v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->audioChannels:I
:goto_6
return v0
:cond_7
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channels()I
move-result v0
goto :goto_6
.end method
.method public getFormat()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
if-nez v0, :cond_7
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->format:Ljava/lang/String;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->iformat()Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
move-result-object v0
invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;->name()Lcom/googlecode/javacpp/BytePointer;
move-result-object v0
invoke-virtual {v0}, Lcom/googlecode/javacpp/BytePointer;->getString()Ljava/lang/String;
move-result-object v0
goto :goto_6
.end method
.method public getFrameRate()D
.registers 6
iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
if-nez v1, :cond_7
iget-wide v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->frameRate:D
:goto_6
return-wide v1
:cond_7
iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->r_frame_rate()Lcom/googlecode/javacv/cpp/avutil$AVRational;
move-result-object v0
invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->num()I
move-result v1
int-to-double v1, v1
invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->den()I
move-result v3
int-to-double v3, v3
div-double/2addr v1, v3
goto :goto_6
.end method
.method public getGamma()D
.registers 5
iget-wide v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->gamma:D
const-wide/16 v2, 0x0
cmpl-double v0, v0, v2
if-nez v0, :cond_e
const-wide v0, 0x400199999999999aL
:goto_d
return-wide v0
:cond_e
iget-wide v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->gamma:D
goto :goto_d
.end method
.method public getImageHeight()I
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
if-nez v0, :cond_7
iget v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->imageHeight:I
:goto_6
return v0
:cond_7
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I
move-result v0
goto :goto_6
.end method
.method public getImageWidth()I
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
if-nez v0, :cond_7
iget v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->imageWidth:I
:goto_6
return v0
:cond_7
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I
move-result v0
goto :goto_6
.end method
.method public getLengthInFrames()I
.registers 5
invoke-virtual {p0}, Lco/vine/android/recorder/VineFrameGrabber;->getLengthInTime()J
move-result-wide v0
long-to-double v0, v0
invoke-virtual {p0}, Lco/vine/android/recorder/VineFrameGrabber;->getFrameRate()D
move-result-wide v2
mul-double/2addr v0, v2
const-wide v2, 0x412e848000000000L
div-double/2addr v0, v2
double-to-int v0, v0
return v0
.end method
.method public getLengthInTime()J
.registers 5
const-wide/32 v2, 0xf4240
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->duration()J
move-result-wide v0
mul-long/2addr v0, v2
div-long/2addr v0, v2
return-wide v0
.end method
.method public getPixelFormat()I
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->imageMode:Lco/vine/android/recorder/VineFrameGrabber$ImageMode;
sget-object v1, Lco/vine/android/recorder/VineFrameGrabber$ImageMode;->COLOR:Lco/vine/android/recorder/VineFrameGrabber$ImageMode;
if-eq v0, v1, :cond_c
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->imageMode:Lco/vine/android/recorder/VineFrameGrabber$ImageMode;
sget-object v1, Lco/vine/android/recorder/VineFrameGrabber$ImageMode;->GRAY:Lco/vine/android/recorder/VineFrameGrabber$ImageMode;
if-ne v0, v1, :cond_1f
:cond_c
iget v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->pixelFormat:I
const/4 v1, -0x1
if-ne v0, v1, :cond_1c
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->imageMode:Lco/vine/android/recorder/VineFrameGrabber$ImageMode;
sget-object v1, Lco/vine/android/recorder/VineFrameGrabber$ImageMode;->COLOR:Lco/vine/android/recorder/VineFrameGrabber$ImageMode;
if-ne v0, v1, :cond_19
const/4 v0, 0x3
:goto_18
return v0
:cond_19
const/16 v0, 0x8
goto :goto_18
:cond_1c
iget v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->pixelFormat:I
goto :goto_18
:cond_1f
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
if-eqz v0, :cond_2a
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt()I
move-result v0
goto :goto_18
:cond_2a
iget v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->pixelFormat:I
goto :goto_18
.end method
.method public getSampleFormat()I
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
if-nez v0, :cond_7
iget v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->sampleFormat:I
:goto_6
return v0
:cond_7
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_fmt()I
move-result v0
goto :goto_6
.end method
.method public getSampleRate()I
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
if-nez v0, :cond_7
iget v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->sampleRate:I
:goto_6
return v0
:cond_7
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_rate()I
move-result v0
goto :goto_6
.end method
.method public getTimestamp()J
.registers 3
iget-wide v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->timestamp:J
return-wide v0
.end method
.method public getVideoCodecContext()Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
return-object v0
.end method
.method public grab()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.registers 4
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {p0, v1, v2}, Lco/vine/android/recorder/VineFrameGrabber;->grabFrame(ZZ)Lcom/googlecode/javacv/Frame;
move-result-object v0
if-eqz v0, :cond_b
iget-object v1, v0, Lcom/googlecode/javacv/Frame;->image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
:goto_a
return-object v1
:cond_b
const/4 v1, 0x0
goto :goto_a
.end method
.method public grab(Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.registers 4
const/4 v1, 0x0
invoke-direct {p0, p1, v1}, Lco/vine/android/recorder/VineFrameGrabber;->grabFrame(ZZ)Lcom/googlecode/javacv/Frame;
move-result-object v0
if-eqz v0, :cond_a
iget-object v1, v0, Lcom/googlecode/javacv/Frame;->image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
:goto_9
return-object v1
:cond_a
const/4 v1, 0x0
goto :goto_9
.end method
.method public grabFrame()Lcom/googlecode/javacv/Frame;
.registers 2
const/4 v0, 0x1
invoke-direct {p0, v0, v0}, Lco/vine/android/recorder/VineFrameGrabber;->grabFrame(ZZ)Lcom/googlecode/javacv/Frame;
move-result-object v0
return-object v0
.end method
.method public release()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
if-eqz v0, :cond_1b
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
if-eqz v0, :cond_1b
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size()I
move-result v0
if-lez v0, :cond_17
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-static {v0}, Lcom/googlecode/javacv/cpp/avcodec;->av_free_packet(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)V
:cond_17
iput-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
iput-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
:cond_1b
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->buffer_rgb:Lcom/googlecode/javacpp/BytePointer;
if-eqz v0, :cond_26
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->buffer_rgb:Lcom/googlecode/javacpp/BytePointer;
invoke-static {v0}, Lcom/googlecode/javacv/cpp/avutil;->av_free(Lcom/googlecode/javacpp/Pointer;)V
iput-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->buffer_rgb:Lcom/googlecode/javacpp/BytePointer;
:cond_26
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture_rgb:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
if-eqz v0, :cond_31
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture_rgb:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-static {v0}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_free_frame(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)V
iput-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture_rgb:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
:cond_31
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
if-eqz v0, :cond_3c
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-static {v0}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_free_frame(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)V
iput-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
:cond_3c
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
if-eqz v0, :cond_47
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-static {v0}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_close(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;)I
iput-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
:cond_47
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->samples_frame:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
if-eqz v0, :cond_52
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->samples_frame:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-static {v0}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_free_frame(Lcom/googlecode/javacv/cpp/avutil$AVFrame;)V
iput-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->samples_frame:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
:cond_52
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
if-eqz v0, :cond_5d
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-static {v0}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_close(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;)I
iput-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
:cond_5d
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
if-eqz v0, :cond_70
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->isNull()Z
move-result v0
if-nez v0, :cond_70
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
invoke-static {v0}, Lcom/googlecode/javacv/cpp/avformat;->avformat_close_input(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;)V
iput-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
:cond_70
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;
if-eqz v0, :cond_7b
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;
invoke-static {v0}, Lcom/googlecode/javacv/cpp/swscale;->sws_freeContext(Lcom/googlecode/javacv/cpp/swscale$SwsContext;)V
iput-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;
:cond_7b
iput-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->got_frame:[I
iput-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
iput-boolean v2, p0, Lco/vine/android/recorder/VineFrameGrabber;->frameGrabbed:Z
iput-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->frame:Lcom/googlecode/javacv/Frame;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->timestamp:J
iput v2, p0, Lco/vine/android/recorder/VineFrameGrabber;->frameNumber:I
return-void
.end method
.method public setFormat(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/VineFrameGrabber;->format:Ljava/lang/String;
return-void
.end method
.method public setFrameNumber(I)V
.registers 6
const-wide/32 v0, 0xf4240
int-to-long v2, p1
mul-long/2addr v0, v2
long-to-double v0, v0
invoke-virtual {p0}, Lco/vine/android/recorder/VineFrameGrabber;->getFrameRate()D
move-result-wide v2
div-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lco/vine/android/recorder/VineFrameGrabber;->setTimestamp(J)V
return-void
.end method
.method public setFrameRate(D)V
.registers 3
iput-wide p1, p0, Lco/vine/android/recorder/VineFrameGrabber;->frameRate:D
return-void
.end method
.method public setTimestamp(J)V
.registers 14
const-wide/32 v2, 0xf4240
const/4 v8, 0x1
const/4 v10, 0x0
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
if-eqz v0, :cond_d
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
if-nez v0, :cond_10
:cond_d
iput-wide p1, p0, Lco/vine/android/recorder/VineFrameGrabber;->timestamp:J
:goto_f
return-void
:cond_10
mul-long v0, p1, v2
div-long p1, v0, v2
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->start_time()J
move-result-wide v0
sget-wide v2, Lcom/googlecode/javacv/cpp/avutil;->AV_NOPTS_VALUE:J
cmp-long v0, v0, v2
if-eqz v0, :cond_27
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->start_time()J
move-result-wide v0
add-long/2addr p1, v0
:cond_27
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
const/4 v1, -0x1
const-wide/high16 v2, -0x8000
const-wide v6, 0x7fffffffffffffffL
move-wide v4, p1
invoke-static/range {v0 .. v8}, Lcom/googlecode/javacv/cpp/avformat;->avformat_seek_file(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;IJJJI)I
move-result v9
if-gez v9, :cond_61
new-instance v0, Lco/vine/android/recorder/VineFrameGrabber$Exception;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "avformat_seek_file() error "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ": Could not seek file to timestamp "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lco/vine/android/recorder/VineFrameGrabber$Exception;-><init>(Ljava/lang/String;)V
throw v0
:cond_61
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-static {v0}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_flush_buffers(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;)V
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
if-eqz v0, :cond_6f
iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-static {v0}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_flush_buffers(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;)V
:cond_6f
iget-wide v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->timestamp:J
cmp-long v0, v0, p1
if-lez v0, :cond_7b
invoke-virtual {p0, v10}, Lco/vine/android/recorder/VineFrameGrabber;->grab(Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move-result-object v0
if-nez v0, :cond_6f
:cond_7b
iget-wide v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->timestamp:J
cmp-long v0, v0, p1
if-gez v0, :cond_87
invoke-virtual {p0, v10}, Lco/vine/android/recorder/VineFrameGrabber;->grab(Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move-result-object v0
if-nez v0, :cond_7b
:cond_87
iput-boolean v8, p0, Lco/vine/android/recorder/VineFrameGrabber;->frameGrabbed:Z
goto :goto_f
.end method
.method public start()V
.registers 19
const/4 v14, 0x0
move-object/from16 v0, p0
iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;
new-instance v14, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
const/4 v15, 0x0
invoke-direct {v14, v15}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;-><init>(Lcom/googlecode/javacpp/Pointer;)V
move-object/from16 v0, p0
iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
const/4 v14, 0x0
move-object/from16 v0, p0
iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
const/4 v14, 0x0
move-object/from16 v0, p0
iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
new-instance v14, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-direct {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;-><init>()V
move-object/from16 v0, p0
iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
new-instance v14, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-direct {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;-><init>()V
move-object/from16 v0, p0
iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->sizeof()I
move-result v14
move-object/from16 v0, p0
iput v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->sizeof_pkt:I
const/4 v14, 0x1
new-array v14, v14, [I
move-object/from16 v0, p0
iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->got_frame:[I
const/4 v14, 0x0
move-object/from16 v0, p0
iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
const/4 v14, 0x0
move-object/from16 v0, p0
iput-boolean v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->frameGrabbed:Z
new-instance v14, Lcom/googlecode/javacv/Frame;
invoke-direct {v14}, Lcom/googlecode/javacv/Frame;-><init>()V
move-object/from16 v0, p0
iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->frame:Lcom/googlecode/javacv/Frame;
const-wide/16 v14, 0x0
move-object/from16 v0, p0
iput-wide v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->timestamp:J
const/4 v14, 0x0
move-object/from16 v0, p0
iput v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->frameNumber:I
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
const/4 v15, 0x0
invoke-virtual {v14, v15}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
const/4 v3, 0x0
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->format:Ljava/lang/String;
if-eqz v14, :cond_a4
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->format:Ljava/lang/String;
invoke-virtual {v14}, Ljava/lang/String;->length()I
move-result v14
if-lez v14, :cond_a4
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->format:Ljava/lang/String;
invoke-static {v14}, Lcom/googlecode/javacv/cpp/avformat;->av_find_input_format(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
move-result-object v3
if-nez v3, :cond_a4
new-instance v14, Lco/vine/android/recorder/VineFrameGrabber$Exception;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
const-string v16, "av_find_input_format() error: Could not find input format \""
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/VineFrameGrabber;->format:Ljava/lang/String;
move-object/from16 v16, v0
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, "\"."
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-direct {v14, v15}, Lco/vine/android/recorder/VineFrameGrabber$Exception;-><init>(Ljava/lang/String;)V
throw v14
:cond_a4
new-instance v8, Lcom/googlecode/javacv/cpp/avutil$AVDictionary;
const/4 v14, 0x0
invoke-direct {v8, v14}, Lcom/googlecode/javacv/cpp/avutil$AVDictionary;-><init>(Lcom/googlecode/javacpp/Pointer;)V
move-object/from16 v0, p0
iget-wide v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->frameRate:D
const-wide/16 v16, 0x0
cmpl-double v14, v14, v16
if-lez v14, :cond_e7
move-object/from16 v0, p0
iget-wide v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->frameRate:D
const v16, 0xf4628
invoke-static/range {v14 .. v16}, Lcom/googlecode/javacv/cpp/avutil;->av_d2q(DI)Lcom/googlecode/javacv/cpp/avutil$AVRational;
move-result-object v9
const-string v14, "framerate"
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v9}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->num()I
move-result v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, "/"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v9}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->den()I
move-result v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
const/16 v16, 0x0
move/from16 v0, v16
invoke-static {v8, v14, v15, v0}, Lcom/googlecode/javacv/cpp/avutil;->av_dict_set(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Ljava/lang/String;Ljava/lang/String;I)I
:cond_e7
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->imageMode:Lco/vine/android/recorder/VineFrameGrabber$ImageMode;
sget-object v15, Lco/vine/android/recorder/VineFrameGrabber$ImageMode;->RAW:Lco/vine/android/recorder/VineFrameGrabber$ImageMode;
if-eq v14, v15, :cond_104
const-string v15, "pixel_format"
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->imageMode:Lco/vine/android/recorder/VineFrameGrabber$ImageMode;
sget-object v16, Lco/vine/android/recorder/VineFrameGrabber$ImageMode;->COLOR:Lco/vine/android/recorder/VineFrameGrabber$ImageMode;
move-object/from16 v0, v16
if-ne v14, v0, :cond_1c9
const-string v14, "bgr24"
:goto_fd
const/16 v16, 0x0
move/from16 v0, v16
invoke-static {v8, v15, v14, v0}, Lcom/googlecode/javacv/cpp/avutil;->av_dict_set(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Ljava/lang/String;Ljava/lang/String;I)I
:cond_104
move-object/from16 v0, p0
iget v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->imageWidth:I
if-lez v14, :cond_13c
move-object/from16 v0, p0
iget v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->imageHeight:I
if-lez v14, :cond_13c
const-string v14, "video_size"
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/VineFrameGrabber;->imageWidth:I
move/from16 v16, v0
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, "x"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/VineFrameGrabber;->imageHeight:I
move/from16 v16, v0
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
const/16 v16, 0x0
move/from16 v0, v16
invoke-static {v8, v14, v15, v0}, Lcom/googlecode/javacv/cpp/avutil;->av_dict_set(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Ljava/lang/String;Ljava/lang/String;I)I
:cond_13c
move-object/from16 v0, p0
iget v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->sampleRate:I
if-lez v14, :cond_164
const-string v14, "sample_rate"
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
const-string v16, ""
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/VineFrameGrabber;->sampleRate:I
move/from16 v16, v0
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
const/16 v16, 0x0
move/from16 v0, v16
invoke-static {v8, v14, v15, v0}, Lcom/googlecode/javacv/cpp/avutil;->av_dict_set(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Ljava/lang/String;Ljava/lang/String;I)I
:cond_164
move-object/from16 v0, p0
iget v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->audioChannels:I
if-lez v14, :cond_18c
const-string v14, "channels"
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
const-string v16, ""
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/VineFrameGrabber;->audioChannels:I
move/from16 v16, v0
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
const/16 v16, 0x0
move/from16 v0, v16
invoke-static {v8, v14, v15, v0}, Lcom/googlecode/javacv/cpp/avutil;->av_dict_set(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Ljava/lang/String;Ljava/lang/String;I)I
:cond_18c
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/recorder/VineFrameGrabber;->filename:Ljava/lang/String;
invoke-static {v14, v15, v3, v8}, Lcom/googlecode/javacv/cpp/avformat;->avformat_open_input(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Ljava/lang/String;Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I
move-result v10
if-gez v10, :cond_1cd
new-instance v14, Lco/vine/android/recorder/VineFrameGrabber$Exception;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
const-string v16, "avformat_open_input() error "
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, ": Could not open input \""
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/VineFrameGrabber;->filename:Ljava/lang/String;
move-object/from16 v16, v0
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, "\". (Has setFormat() been called?)"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-direct {v14, v15}, Lco/vine/android/recorder/VineFrameGrabber$Exception;-><init>(Ljava/lang/String;)V
throw v14
:cond_1c9
const-string v14, "gray8"
goto/16 :goto_fd
:cond_1cd
invoke-static {v8}, Lcom/googlecode/javacv/cpp/avutil;->av_dict_free(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)V
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
const/4 v14, 0x0
check-cast v14, Lcom/googlecode/javacpp/PointerPointer;
invoke-static {v15, v14}, Lcom/googlecode/javacv/cpp/avformat;->avformat_find_stream_info(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacpp/PointerPointer;)I
move-result v10
if-gez v10, :cond_1fc
new-instance v14, Lco/vine/android/recorder/VineFrameGrabber$Exception;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
const-string v16, "avformat_find_stream_info() error "
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, ": Could not find stream information."
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-direct {v14, v15}, Lco/vine/android/recorder/VineFrameGrabber$Exception;-><init>(Ljava/lang/String;)V
throw v14
:cond_1fc
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
const/4 v15, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/VineFrameGrabber;->filename:Ljava/lang/String;
move-object/from16 v16, v0
const/16 v17, 0x0
invoke-static/range {v14 .. v17}, Lcom/googlecode/javacv/cpp/avformat;->av_dump_format(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;ILjava/lang/String;I)V
const/4 v14, 0x0
move-object/from16 v0, p0
iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
move-object/from16 v0, p0
iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->nb_streams()I
move-result v7
const/4 v6, 0x0
:goto_21e
if-ge v6, v7, :cond_259
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
invoke-virtual {v14, v6}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->streams(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
move-result-object v12
invoke-virtual {v12}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->codec()Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-result-object v1
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
if-nez v14, :cond_243
invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_type()I
move-result v14
if-nez v14, :cond_243
move-object/from16 v0, p0
iput-object v12, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
move-object/from16 v0, p0
iput-object v1, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
:cond_240
:goto_240
add-int/lit8 v6, v6, 0x1
goto :goto_21e
:cond_243
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
if-nez v14, :cond_240
invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_type()I
move-result v14
const/4 v15, 0x1
if-ne v14, v15, :cond_240
move-object/from16 v0, p0
iput-object v12, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
move-object/from16 v0, p0
iput-object v1, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
goto :goto_240
:cond_259
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
if-nez v14, :cond_28a
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
if-nez v14, :cond_28a
new-instance v14, Lco/vine/android/recorder/VineFrameGrabber$Exception;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
const-string v16, "Did not find a video or audio stream inside \""
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/VineFrameGrabber;->filename:Ljava/lang/String;
move-object/from16 v16, v0
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, "\"."
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-direct {v14, v15}, Lco/vine/android/recorder/VineFrameGrabber$Exception;-><init>(Ljava/lang/String;)V
throw v14
:cond_28a
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
if-eqz v14, :cond_3b3
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I
move-result v14
invoke-static {v14}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_find_decoder(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
move-result-object v2
if-nez v2, :cond_2c7
new-instance v14, Lco/vine/android/recorder/VineFrameGrabber$Exception;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
const-string v16, "avcodec_find_decoder() error: Unsupported video format or codec not found: "
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v16, v0
invoke-virtual/range {v16 .. v16}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I
move-result v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, "."
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-direct {v14, v15}, Lco/vine/android/recorder/VineFrameGrabber$Exception;-><init>(Ljava/lang/String;)V
throw v14
:cond_2c7
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
const/4 v14, 0x0
check-cast v14, Lcom/googlecode/javacpp/PointerPointer;
invoke-static {v15, v2, v14}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_open2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodec;Lcom/googlecode/javacpp/PointerPointer;)I
move-result v10
if-gez v10, :cond_2f3
new-instance v14, Lco/vine/android/recorder/VineFrameGrabber$Exception;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
const-string v16, "avcodec_open2() error "
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, ": Could not open video codec."
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-direct {v14, v15}, Lco/vine/android/recorder/VineFrameGrabber$Exception;-><init>(Ljava/lang/String;)V
throw v14
:cond_2f3
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;
move-result-object v14
invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->num()I
move-result v14
const/16 v15, 0x3e8
if-le v14, v15, :cond_31f
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;
move-result-object v14
invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->den()I
move-result v14
const/4 v15, 0x1
if-ne v14, v15, :cond_31f
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;
move-result-object v14
const/16 v15, 0x3e8
invoke-virtual {v14, v15}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->den(I)Lcom/googlecode/javacv/cpp/avutil$AVRational;
:cond_31f
invoke-static {}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_alloc_frame()Lcom/googlecode/javacv/cpp/avutil$AVFrame;
move-result-object v14
move-object/from16 v0, p0
iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->picture:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
if-nez v14, :cond_331
new-instance v14, Lco/vine/android/recorder/VineFrameGrabber$Exception;
const-string v15, "avcodec_alloc_frame() error: Could not allocate raw picture frame."
invoke-direct {v14, v15}, Lco/vine/android/recorder/VineFrameGrabber$Exception;-><init>(Ljava/lang/String;)V
throw v14
:cond_331
invoke-static {}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_alloc_frame()Lcom/googlecode/javacv/cpp/avutil$AVFrame;
move-result-object v14
move-object/from16 v0, p0
iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->picture_rgb:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
if-nez v14, :cond_343
new-instance v14, Lco/vine/android/recorder/VineFrameGrabber$Exception;
const-string v15, "avcodec_alloc_frame() error: Could not allocate RGB picture frame."
invoke-direct {v14, v15}, Lco/vine/android/recorder/VineFrameGrabber$Exception;-><init>(Ljava/lang/String;)V
throw v14
:cond_343
invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/VineFrameGrabber;->getImageWidth()I
move-result v14
if-lez v14, :cond_370
invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/VineFrameGrabber;->getImageWidth()I
move-result v13
:goto_34d
invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/VineFrameGrabber;->getImageHeight()I
move-result v14
if-lez v14, :cond_379
invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/VineFrameGrabber;->getImageHeight()I
move-result v5
:goto_357
sget-object v14, Lco/vine/android/recorder/VineFrameGrabber$1;->$SwitchMap$co$vine$android$recorder$VineFrameGrabber$ImageMode:[I
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/recorder/VineFrameGrabber;->imageMode:Lco/vine/android/recorder/VineFrameGrabber$ImageMode;
invoke-virtual {v15}, Lco/vine/android/recorder/VineFrameGrabber$ImageMode;->ordinal()I
move-result v15
aget v14, v14, v15
packed-switch v14, :pswitch_data_452
sget-boolean v14, Lco/vine/android/recorder/VineFrameGrabber;->$assertionsDisabled:Z
if-nez v14, :cond_3b3
new-instance v14, Ljava/lang/AssertionError;
invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V
throw v14
:cond_370
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width()I
move-result v13
goto :goto_34d
:cond_379
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height()I
move-result v5
goto :goto_357
:pswitch_382
invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/VineFrameGrabber;->getPixelFormat()I
move-result v4
invoke-static {v4, v13, v5}, Lcom/googlecode/javacv/cpp/avcodec;->avpicture_get_size(III)I
move-result v11
new-instance v14, Lcom/googlecode/javacpp/BytePointer;
int-to-long v15, v11
invoke-static/range {v15 .. v16}, Lcom/googlecode/javacv/cpp/avutil;->av_malloc(J)Lcom/googlecode/javacpp/Pointer;
move-result-object v15
invoke-direct {v14, v15}, Lcom/googlecode/javacpp/BytePointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
move-object/from16 v0, p0
iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->buffer_rgb:Lcom/googlecode/javacpp/BytePointer;
new-instance v14, Lcom/googlecode/javacv/cpp/avcodec$AVPicture;
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/recorder/VineFrameGrabber;->picture_rgb:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
invoke-direct {v14, v15}, Lcom/googlecode/javacv/cpp/avcodec$AVPicture;-><init>(Lcom/googlecode/javacpp/Pointer;)V
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/recorder/VineFrameGrabber;->buffer_rgb:Lcom/googlecode/javacpp/BytePointer;
invoke-static {v14, v15, v4, v13, v5}, Lcom/googlecode/javacv/cpp/avcodec;->avpicture_fill(Lcom/googlecode/javacv/cpp/avcodec$AVPicture;Lcom/googlecode/javacpp/BytePointer;III)I
const/16 v14, 0x8
const/4 v15, 0x1
invoke-static {v13, v5, v14, v15}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->createHeader(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move-result-object v14
move-object/from16 v0, p0
iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
:cond_3b3
:goto_3b3
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
if-eqz v14, :cond_450
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I
move-result v14
invoke-static {v14}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_find_decoder(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
move-result-object v2
if-nez v2, :cond_412
new-instance v14, Lco/vine/android/recorder/VineFrameGrabber$Exception;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
const-string v16, "avcodec_find_decoder() error: Unsupported audio format or codec not found: "
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
move-object/from16 v16, v0
invoke-virtual/range {v16 .. v16}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I
move-result v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, "."
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-direct {v14, v15}, Lco/vine/android/recorder/VineFrameGrabber$Exception;-><init>(Ljava/lang/String;)V
throw v14
:pswitch_3f0
const/4 v14, 0x0
move-object/from16 v0, p0
iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->buffer_rgb:Lcom/googlecode/javacpp/BytePointer;
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width()I
move-result v14
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
invoke-virtual {v15}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height()I
move-result v15
const/16 v16, 0x8
const/16 v17, 0x1
invoke-static/range {v14 .. v17}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->createHeader(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move-result-object v14
move-object/from16 v0, p0
iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
goto :goto_3b3
:cond_412
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
const/4 v14, 0x0
check-cast v14, Lcom/googlecode/javacpp/PointerPointer;
invoke-static {v15, v2, v14}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_open2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodec;Lcom/googlecode/javacpp/PointerPointer;)I
move-result v10
if-gez v10, :cond_43e
new-instance v14, Lco/vine/android/recorder/VineFrameGrabber$Exception;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
const-string v16, "avcodec_open2() error "
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, ": Could not open audio codec."
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-direct {v14, v15}, Lco/vine/android/recorder/VineFrameGrabber$Exception;-><init>(Ljava/lang/String;)V
throw v14
:cond_43e
invoke-static {}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_alloc_frame()Lcom/googlecode/javacv/cpp/avutil$AVFrame;
move-result-object v14
move-object/from16 v0, p0
iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_frame:Lcom/googlecode/javacv/cpp/avutil$AVFrame;
if-nez v14, :cond_450
new-instance v14, Lco/vine/android/recorder/VineFrameGrabber$Exception;
const-string v15, "avcodec_alloc_frame() error: Could not allocate audio frame."
invoke-direct {v14, v15}, Lco/vine/android/recorder/VineFrameGrabber$Exception;-><init>(Ljava/lang/String;)V
throw v14
:cond_450
return-void
nop
:pswitch_data_452
.packed-switch 0x1
:pswitch_382
:pswitch_382
:pswitch_3f0
.end packed-switch
.end method
.method public stop()V
.registers 1
invoke-virtual {p0}, Lco/vine/android/recorder/VineFrameGrabber;->release()V
return-void
.end method
.method public trigger()V
.registers 4
iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
if-eqz v1, :cond_c
iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->isNull()Z
move-result v1
if-eqz v1, :cond_14
:cond_c
new-instance v1, Lco/vine/android/recorder/VineFrameGrabber$Exception;
const-string v2, "Could not trigger: No AVFormatContext. (Has start() been called?)"
invoke-direct {v1, v2}, Lco/vine/android/recorder/VineFrameGrabber$Exception;-><init>(Ljava/lang/String;)V
throw v1
:cond_14
iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size()I
move-result v1
if-lez v1, :cond_27
iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-static {v1}, Lcom/googlecode/javacv/cpp/avcodec;->av_free_packet(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)V
:cond_27
const/4 v0, 0x0
:goto_28
iget v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->numBuffers:I
add-int/lit8 v1, v1, 0x1
if-ge v0, v1, :cond_38
iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
iget-object v2, p0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-static {v1, v2}, Lcom/googlecode/javacv/cpp/avformat;->av_read_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I
move-result v1
if-gez v1, :cond_39
:cond_38
return-void
:cond_39
iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
invoke-static {v1}, Lcom/googlecode/javacv/cpp/avcodec;->av_free_packet(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)V
add-int/lit8 v0, v0, 0x1
goto :goto_28
.end method