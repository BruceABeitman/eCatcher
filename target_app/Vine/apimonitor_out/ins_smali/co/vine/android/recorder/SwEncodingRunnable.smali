.class public Lco/vine/android/recorder/SwEncodingRunnable;
.super Lco/vine/android/recorder/AbstractEncodingRunnable;
.source "SwEncodingRunnable.java"
.field private static final sInstanceCounter:Lco/vine/android/util/InstanceCounter;
.field private static sRunningInstances:I
.field private mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
.field private final mByteBufferQueue:Lco/vine/android/recorder/ByteBufferQueue;
.field private final mCameraManager:Lco/vine/android/recorder/CameraManager;
.field private final mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
.field private mEncoder:Lco/vine/android/recorder/SwVineFrameRecorder;
.field private final mEncodingImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.field private final mEncodingTempPath:Ljava/lang/String;
.field private mLastSegment:Lco/vine/android/recorder/RecordSegment;
.field private mMatrixBitmap:Landroid/graphics/Bitmap;
.field private mMatrixCanvas:Landroid/graphics/Canvas;
.field private mMaxEncodedSize:I
.field private final mOutput:Ljava/lang/String;
.field private final mPictureConverter:Lco/vine/android/recorder/PictureConverter;
.field private final mProducer:Lco/vine/android/recorder/RecordController;
.field private final mRecorderFrameRate:I
.field private volatile mTerminateImmediately:Z
.field private final mThumbnailBitmap:Landroid/graphics/Bitmap;
.field private final mThumbnailCanvas:Landroid/graphics/Canvas;
.field private final mThumbnailMatrix:Landroid/graphics/Matrix;
.field private mTotalProcessed:I
.field private final mUseMp4:Z
.field private final mVideoDataBufferMax:[B
.field private mVideoDataBufferPosition:I
.field private timeToMatrix:J
.field private timeToRGB:J
.field private timeToRecord:J
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lco/vine/android/util/InstanceCounter;
const/4 v1, 0x3
invoke-direct {v0, v1}, Lco/vine/android/util/InstanceCounter;-><init>(I)V
sput-object v0, Lco/vine/android/recorder/SwEncodingRunnable;->sInstanceCounter:Lco/vine/android/util/InstanceCounter;
return-void
.end method
.method public constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;[BLco/vine/android/recorder/RecordController;Ljava/lang/String;ILcom/googlecode/javacv/cpp/opencv_core$IplImage;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lco/vine/android/recorder/PictureConverter;ILco/vine/android/recorder/CameraManager;Lco/vine/android/recorder/ByteBufferQueue;Landroid/graphics/Matrix;Landroid/graphics/Canvas;Landroid/graphics/Canvas;Z)V
.registers 20
invoke-direct {p0}, Lco/vine/android/recorder/AbstractEncodingRunnable;-><init>()V
const/4 v1, 0x0
iput-boolean v1, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mTerminateImmediately:Z
sget-object v1, Lco/vine/android/recorder/SwEncodingRunnable;->sInstanceCounter:Lco/vine/android/util/InstanceCounter;
invoke-virtual {v1, p0}, Lco/vine/android/util/InstanceCounter;->onCreate(Ljava/lang/Object;)I
iput-object p6, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mEncodingImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move/from16 v0, p16
iput-boolean v0, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mUseMp4:Z
iput-object p1, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
iput-object p3, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mProducer:Lco/vine/android/recorder/RecordController;
iput-object p7, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mMatrixBitmap:Landroid/graphics/Bitmap;
iput-object p8, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mThumbnailBitmap:Landroid/graphics/Bitmap;
iput-object p11, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mCameraManager:Lco/vine/android/recorder/CameraManager;
move-object/from16 v0, p14
iput-object v0, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mThumbnailCanvas:Landroid/graphics/Canvas;
move-object/from16 v0, p15
iput-object v0, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mMatrixCanvas:Landroid/graphics/Canvas;
iput-object p2, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mVideoDataBufferMax:[B
iput p10, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mVideoDataBufferPosition:I
iput-object p9, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mPictureConverter:Lco/vine/android/recorder/PictureConverter;
iput p5, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mRecorderFrameRate:I
iput-object p4, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mOutput:Ljava/lang/String;
move-object/from16 v0, p13
iput-object v0, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mThumbnailMatrix:Landroid/graphics/Matrix;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mOutput:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ".encode"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mEncodingTempPath:Ljava/lang/String;
iput-object p12, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mByteBufferQueue:Lco/vine/android/recorder/ByteBufferQueue;
iget-object v1, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mByteBufferQueue:Lco/vine/android/recorder/ByteBufferQueue;
if-eqz v1, :cond_56
iget-object v1, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mByteBufferQueue:Lco/vine/android/recorder/ByteBufferQueue;
invoke-virtual {v1}, Lco/vine/android/recorder/ByteBufferQueue;->isFresh()Z
move-result v1
if-nez v1, :cond_5e
:cond_56
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "Invalid buffer queue."
invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:cond_5e
return-void
.end method
.method static synthetic access$000(Lco/vine/android/recorder/SwEncodingRunnable;)V
.registers 1
invoke-direct {p0}, Lco/vine/android/recorder/SwEncodingRunnable;->makeNewEncoder()V
return-void
.end method
.method static synthetic access$100(Lco/vine/android/recorder/SwEncodingRunnable;)Lco/vine/android/recorder/ByteBufferQueue;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mByteBufferQueue:Lco/vine/android/recorder/ByteBufferQueue;
return-object v0
.end method
.method static synthetic access$200(Lco/vine/android/recorder/SwEncodingRunnable;)Lco/vine/android/recorder/RecordController;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mProducer:Lco/vine/android/recorder/RecordController;
return-object v0
.end method
.method static synthetic access$300(Lco/vine/android/recorder/SwEncodingRunnable;)Lco/vine/android/recorder/BaseFinishProcessTask;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
return-object v0
.end method
.method static synthetic access$400(Lco/vine/android/recorder/SwEncodingRunnable;Ljava/util/LinkedList;)V
.registers 2
invoke-direct {p0, p1}, Lco/vine/android/recorder/SwEncodingRunnable;->stopEncoder(Ljava/util/LinkedList;)V
return-void
.end method
.method private doVideoFrame(Ljava/util/LinkedList;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)Z
.registers 9
const/4 v1, 0x1
iget-object v2, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mEncoder:Lco/vine/android/recorder/SwVineFrameRecorder;
if-nez v2, :cond_51
invoke-direct {p0}, Lco/vine/android/recorder/SwEncodingRunnable;->makeNewEncoder()V
:goto_8
:cond_8
invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/recorder/VideoData;
iget-object v2, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mEncoder:Lco/vine/android/recorder/SwVineFrameRecorder;
iget-object v3, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mVideoDataBufferMax:[B
iget v4, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mVideoDataBufferPosition:I
invoke-virtual {v2, p2, v3, v4}, Lco/vine/android/recorder/SwVineFrameRecorder;->encode(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[BI)I
move-result v2
iput v2, v0, Lco/vine/android/recorder/VideoData;->size:I
const-string v2, "Encoded video frame size {}. Total processed {}."
iget v3, v0, Lco/vine/android/recorder/VideoData;->size:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
iget v4, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mTotalProcessed:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-static {v2, v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
iget v2, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mTotalProcessed:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mTotalProcessed:I
iget v2, v0, Lco/vine/android/recorder/VideoData;->size:I
const/4 v3, -0x1
if-eq v2, v3, :cond_5a
iget v2, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mVideoDataBufferPosition:I
iput v2, v0, Lco/vine/android/recorder/VideoData;->start:I
iput-boolean v1, v0, Lco/vine/android/recorder/VideoData;->keyFrame:Z
iget v2, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mMaxEncodedSize:I
iget v3, v0, Lco/vine/android/recorder/VideoData;->size:I
invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I
move-result v2
iput v2, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mMaxEncodedSize:I
iget v2, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mVideoDataBufferPosition:I
iget v3, v0, Lco/vine/android/recorder/VideoData;->size:I
add-int/2addr v2, v3
iput v2, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mVideoDataBufferPosition:I
invoke-virtual {p1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;
:goto_50
return v1
:cond_51
if-eqz p3, :cond_8
invoke-direct {p0, p1}, Lco/vine/android/recorder/SwEncodingRunnable;->stopEncoder(Ljava/util/LinkedList;)V
invoke-direct {p0}, Lco/vine/android/recorder/SwEncodingRunnable;->makeNewEncoder()V
goto :goto_8
:cond_5a
const-string v1, "******Image was buffered to the next frame.********"
invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
const/4 v1, 0x0
goto :goto_50
.end method
.method private makeNewEncoder()V
.registers 6
iget-object v1, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mEncodingTempPath:Ljava/lang/String;
iget v2, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mRecorderFrameRate:I
const/16 v3, 0x1e0
iget-boolean v4, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mUseMp4:Z
invoke-static {v1, v2, v3, v4}, Lco/vine/android/recorder/RecordConfigUtils;->newVideoRecorder(Ljava/lang/String;IIZ)Lco/vine/android/recorder/SwVineFrameRecorder;
move-result-object v1
iput-object v1, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mEncoder:Lco/vine/android/recorder/SwVineFrameRecorder;
:try_start_e
iget-object v1, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mEncoder:Lco/vine/android/recorder/SwVineFrameRecorder;
invoke-virtual {v1}, Lco/vine/android/recorder/SwVineFrameRecorder;->start()V
:try_end_13
.catch Lco/vine/android/recorder/SwVineFrameRecorder$Exception; {:try_start_e .. :try_end_13} :catch_14
:goto_13
return-void
:catch_14
move-exception v0
const-string v1, "Failed to start encoder"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_13
.end method
.method private process(Lco/vine/android/recorder/SwEncodingRunnable$EncodingProcessRunnable;Z)V
.registers 8
:goto_0
:cond_0
iget-boolean v3, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mTerminateImmediately:Z
if-nez v3, :cond_26
iget-object v3, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/recorder/VideoData;
if-nez v2, :cond_16
iget-object v3, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mProducer:Lco/vine/android/recorder/RecordController;
invoke-virtual {v3}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z
move-result v3
if-eqz v3, :cond_26
:cond_16
if-nez v2, :cond_27
if-eqz p2, :cond_0
const-wide/16 v3, 0x64
:try_start_1c
invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
:try_end_1f
.catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1f} :catch_20
goto :goto_0
:catch_20
move-exception v1
const-string v3, "Break signal reached."
invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
:cond_26
return-void
:cond_27
invoke-virtual {p1, v2}, Lco/vine/android/recorder/SwEncodingRunnable$EncodingProcessRunnable;->add(Lco/vine/android/recorder/VideoData;)[B
move-result-object v0
iget-object v4, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mCameraManager:Lco/vine/android/recorder/CameraManager;
if-nez p2, :cond_34
const/4 v3, 0x1
:goto_30
invoke-virtual {v4, v0, v3}, Lco/vine/android/recorder/CameraManager;->addBuffer([BZ)V
goto :goto_0
:cond_34
const/4 v3, 0x0
goto :goto_30
.end method
.method private stopEncoder(Ljava/util/LinkedList;)V
.registers 5
:try_start_0
:cond_0
invoke-virtual {p1}, Ljava/util/LinkedList;->size()I
move-result v1
if-lez v1, :cond_e
const/4 v1, 0x0
const/4 v2, 0x0
invoke-direct {p0, p1, v1, v2}, Lco/vine/android/recorder/SwEncodingRunnable;->doVideoFrame(Ljava/util/LinkedList;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)Z
move-result v1
if-nez v1, :cond_0
:cond_e
iget-object v1, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mEncoder:Lco/vine/android/recorder/SwVineFrameRecorder;
invoke-virtual {v1}, Lco/vine/android/recorder/SwVineFrameRecorder;->stopEncoding()V
:try_end_13
.catchall {:try_start_0 .. :try_end_13} :catchall_25
.catch Lco/vine/android/recorder/SwVineFrameRecorder$Exception; {:try_start_0 .. :try_end_13} :catch_19
iget-object v1, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mEncoder:Lco/vine/android/recorder/SwVineFrameRecorder;
invoke-virtual {v1}, Lco/vine/android/recorder/SwVineFrameRecorder;->release()V
:goto_18
return-void
:catch_19
move-exception v0
:try_start_1a
const-string v1, "Error flushing..."
invoke-static {v1, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_1f
.catchall {:try_start_1a .. :try_end_1f} :catchall_25
iget-object v1, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mEncoder:Lco/vine/android/recorder/SwVineFrameRecorder;
invoke-virtual {v1}, Lco/vine/android/recorder/SwVineFrameRecorder;->release()V
goto :goto_18
:catchall_25
move-exception v1
iget-object v2, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mEncoder:Lco/vine/android/recorder/SwVineFrameRecorder;
invoke-virtual {v2}, Lco/vine/android/recorder/SwVineFrameRecorder;->release()V
throw v1
.end method
.method public getOutput()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mOutput:Ljava/lang/String;
return-object v0
.end method
.method public processVideoData(Ljava/util/LinkedList;Lco/vine/android/recorder/VideoData;)[B
.registers 26
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwEncodingRunnable;->mLastSegment:Lco/vine/android/recorder/RecordSegment;
move-object/from16 v17, v0
move-object/from16 v0, p2
iget-object v0, v0, Lco/vine/android/recorder/VideoData;->segment:Lco/vine/android/recorder/RecordSegment;
move-object/from16 v18, v0
move-object/from16 v0, v17
move-object/from16 v1, v18
if-eq v0, v1, :cond_181
const/4 v11, 0x1
:goto_13
move-object/from16 v0, p2
iget-object v0, v0, Lco/vine/android/recorder/VideoData;->segment:Lco/vine/android/recorder/RecordSegment;
move-object/from16 v17, v0
move-object/from16 v0, v17
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/SwEncodingRunnable;->mLastSegment:Lco/vine/android/recorder/RecordSegment;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwEncodingRunnable;->mPictureConverter:Lco/vine/android/recorder/PictureConverter;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget-object v0, v0, Lco/vine/android/recorder/PictureConverter;->LOCK:[I
move-object/from16 v18, v0
monitor-enter v18
:try_start_2c
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v14
move-object/from16 v0, p2
iget-object v0, v0, Lco/vine/android/recorder/VideoData;->segment:Lco/vine/android/recorder/RecordSegment;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lco/vine/android/recorder/RecordSegment;->getCameraSetting()Lco/vine/android/recorder/CameraSetting;
move-result-object v4
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwEncodingRunnable;->mPictureConverter:Lco/vine/android/recorder/PictureConverter;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-virtual {v0, v4}, Lco/vine/android/recorder/PictureConverter;->updateSettingsIfNeeded(Lco/vine/android/recorder/CameraSetting;)Z
move-result v10
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwEncodingRunnable;->mPictureConverter:Lco/vine/android/recorder/PictureConverter;
move-object/from16 v17, v0
iget v0, v4, Lco/vine/android/recorder/CameraSetting;->degrees:I
move/from16 v19, v0
const/16 v20, 0x0
move-object/from16 v0, v17
move/from16 v1, v19
move/from16 v2, v20
invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/PictureConverter;->giveMatrixNewValuesWithScaleIfDegreeHasChangedWithKnownConfigs(IZ)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwEncodingRunnable;->mPictureConverter:Lco/vine/android/recorder/PictureConverter;
move-object/from16 v17, v0
move-object/from16 v0, v17
move-object/from16 v1, p2
invoke-virtual {v0, v4, v1, v10}, Lco/vine/android/recorder/PictureConverter;->convert(Lco/vine/android/recorder/CameraSetting;Lco/vine/android/recorder/VideoData;Z)Z
move-object/from16 v0, p0
iget-wide v0, v0, Lco/vine/android/recorder/SwEncodingRunnable;->timeToRGB:J
move-wide/from16 v19, v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v21
sub-long v21, v21, v14
add-long v19, v19, v21
move-wide/from16 v0, v19
move-object/from16 v2, p0
iput-wide v0, v2, Lco/vine/android/recorder/SwEncodingRunnable;->timeToRGB:J
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v14
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwEncodingRunnable;->mPictureConverter:Lco/vine/android/recorder/PictureConverter;
move-object/from16 v17, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwEncodingRunnable;->mMatrixCanvas:Landroid/graphics/Canvas;
move-object/from16 v19, v0
move-object/from16 v0, v17
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lco/vine/android/recorder/PictureConverter;->draw(Landroid/graphics/Canvas;)V
move-object/from16 v0, p0
iget-wide v0, v0, Lco/vine/android/recorder/SwEncodingRunnable;->timeToMatrix:J
move-wide/from16 v19, v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v21
sub-long v21, v21, v14
add-long v19, v19, v21
move-wide/from16 v0, v19
move-object/from16 v2, p0
iput-wide v0, v2, Lco/vine/android/recorder/SwEncodingRunnable;->timeToMatrix:J
monitor-exit v18
:try_end_a8
.catchall {:try_start_2c .. :try_end_a8} :catchall_184
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwEncodingRunnable;->mMatrixBitmap:Landroid/graphics/Bitmap;
move-object/from16 v17, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwEncodingRunnable;->mEncodingImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;
move-result-object v18
invoke-virtual/range {v17 .. v18}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V
if-eqz v11, :cond_142
move-object/from16 v0, p0
iget-boolean v0, v0, Lco/vine/android/recorder/SwEncodingRunnable;->mTerminateImmediately:Z
move/from16 v17, v0
if-nez v17, :cond_142
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwEncodingRunnable;->mPictureConverter:Lco/vine/android/recorder/PictureConverter;
move-object/from16 v17, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwEncodingRunnable;->mThumbnailCanvas:Landroid/graphics/Canvas;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwEncodingRunnable;->mMatrixBitmap:Landroid/graphics/Bitmap;
move-object/from16 v19, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwEncodingRunnable;->mThumbnailMatrix:Landroid/graphics/Matrix;
move-object/from16 v20, v0
invoke-virtual/range {v17 .. v20}, Lco/vine/android/recorder/PictureConverter;->drawGeneric(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
new-instance v17, Ljava/lang/StringBuilder;
invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwEncodingRunnable;->mOutput:Ljava/lang/String;
move-object/from16 v18, v0
invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
const-string v18, "."
invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v18
invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v17
const-string v18, ".jpg"
invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
move-object/from16 v0, p2
iget-object v0, v0, Lco/vine/android/recorder/VideoData;->segment:Lco/vine/android/recorder/RecordSegment;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-virtual {v0, v13}, Lco/vine/android/recorder/RecordSegment;->setThumbnailPath(Ljava/lang/String;)V
new-instance v8, Ljava/io/File;
invoke-direct {v8, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v12
:try_start_11b
new-instance v3, Ljava/io/ByteArrayOutputStream;
invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwEncodingRunnable;->mThumbnailBitmap:Landroid/graphics/Bitmap;
move-object/from16 v17, v0
sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v19, 0x64
move-object/from16 v0, v17
move-object/from16 v1, v18
move/from16 v2, v19
invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v5
new-instance v9, Ljava/io/FileOutputStream;
invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
invoke-virtual {v9, v5}, Ljava/io/FileOutputStream;->write([B)V
invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
:goto_142
:cond_142
:try_end_142
.catch Ljava/lang/Throwable; {:try_start_11b .. :try_end_142} :catch_187
move-object/from16 v0, p0
iget-boolean v0, v0, Lco/vine/android/recorder/SwEncodingRunnable;->mTerminateImmediately:Z
move/from16 v17, v0
if-nez v17, :cond_174
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v14
invoke-virtual/range {p1 .. p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwEncodingRunnable;->mEncodingImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move-object/from16 v17, v0
move-object/from16 v0, p0
move-object/from16 v1, p1
move-object/from16 v2, v17
invoke-direct {v0, v1, v2, v11}, Lco/vine/android/recorder/SwEncodingRunnable;->doVideoFrame(Ljava/util/LinkedList;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)Z
move-object/from16 v0, p0
iget-wide v0, v0, Lco/vine/android/recorder/SwEncodingRunnable;->timeToRecord:J
move-wide/from16 v17, v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v19
sub-long v19, v19, v14
add-long v17, v17, v19
move-wide/from16 v0, v17
move-object/from16 v2, p0
iput-wide v0, v2, Lco/vine/android/recorder/SwEncodingRunnable;->timeToRecord:J
:cond_174
move-object/from16 v0, p2
iget-object v6, v0, Lco/vine/android/recorder/VideoData;->data:[B
const/16 v17, 0x0
move-object/from16 v0, v17
move-object/from16 v1, p2
iput-object v0, v1, Lco/vine/android/recorder/VideoData;->data:[B
return-object v6
:cond_181
const/4 v11, 0x0
goto/16 :goto_13
:catchall_184
move-exception v17
:try_start_185
monitor-exit v18
:try_end_186
.catchall {:try_start_185 .. :try_end_186} :catchall_184
throw v17
:catch_187
move-exception v7
invoke-static {v12}, Lco/vine/android/recorder/RecordSessionManager;->wasSessionJustDeleted(Ljava/io/File;)Z
move-result v16
if-eqz v16, :cond_19a
const/16 v17, 0x1
move/from16 v0, v17
move-object/from16 v1, p0
iput-boolean v0, v1, Lco/vine/android/recorder/SwEncodingRunnable;->mTerminateImmediately:Z
invoke-static {v7}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
goto :goto_142
:cond_19a
throw v7
.end method
.method public run()V
.registers 11
const/4 v9, 0x2
const/4 v8, 0x0
const/4 v7, 0x1
sget v3, Lco/vine/android/recorder/SwEncodingRunnable;->sRunningInstances:I
add-int/lit8 v3, v3, 0x1
sput v3, Lco/vine/android/recorder/SwEncodingRunnable;->sRunningInstances:I
const-string v3, "Encoder Count"
sget v4, Lco/vine/android/recorder/SwEncodingRunnable;->sRunningInstances:I
invoke-static {v3, v4}, Lco/vine/android/util/CrashUtil;->set(Ljava/lang/String;I)V
const/16 v3, 0x13
invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V
const-string v3, "[ML] Processing started: {}, running: {}"
new-array v4, v9, [Ljava/lang/Object;
iget-object v5, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mOutput:Ljava/lang/String;
aput-object v5, v4, v8
sget v5, Lco/vine/android/recorder/SwEncodingRunnable;->sRunningInstances:I
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v7
invoke-static {v3, v4}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
new-instance v1, Lco/vine/android/recorder/SwEncodingRunnable$EncodingProcessRunnable;
invoke-direct {v1, p0}, Lco/vine/android/recorder/SwEncodingRunnable$EncodingProcessRunnable;-><init>(Lco/vine/android/recorder/SwEncodingRunnable;)V
iput-boolean v7, v1, Lco/vine/android/recorder/SwEncodingRunnable$EncodingProcessRunnable;->mRun:Z
new-instance v2, Ljava/lang/Thread;
invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v2}, Ljava/lang/Thread;->start()V
:goto_37
iget-object v3, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mProducer:Lco/vine/android/recorder/RecordController;
invoke-virtual {v3}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z
move-result v3
if-eqz v3, :cond_47
iget-boolean v3, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mTerminateImmediately:Z
if-nez v3, :cond_47
invoke-direct {p0, v1, v7}, Lco/vine/android/recorder/SwEncodingRunnable;->process(Lco/vine/android/recorder/SwEncodingRunnable$EncodingProcessRunnable;Z)V
goto :goto_37
:cond_47
const-string v3, "[ML] Flushing..."
invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
iget-boolean v3, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mTerminateImmediately:Z
if-nez v3, :cond_c1
invoke-direct {p0, v1, v8}, Lco/vine/android/recorder/SwEncodingRunnable;->process(Lco/vine/android/recorder/SwEncodingRunnable$EncodingProcessRunnable;Z)V
:goto_53
iget-object v3, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mByteBufferQueue:Lco/vine/android/recorder/ByteBufferQueue;
invoke-virtual {v3}, Lco/vine/android/recorder/ByteBufferQueue;->endOfPut()V
const-string v3, "[ML] Waiting for encoding prcess thread to end..."
invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
:try_start_5d
invoke-virtual {v2}, Ljava/lang/Thread;->join()V
:try_end_60
.catch Ljava/lang/InterruptedException; {:try_start_5d .. :try_end_60} :catch_c7
:goto_60
const-string v3, "[ML] Encoding process thread ended"
invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
new-instance v3, Ljava/io/File;
iget-object v4, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mEncodingTempPath:Ljava/lang/String;
invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v3}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z
iget-object v3, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
if-eqz v3, :cond_7a
iget-object v3, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
const/16 v4, 0x5a
invoke-virtual {v3, v4}, Lco/vine/android/recorder/BaseFinishProcessTask;->publish(I)V
:cond_7a
const-string v3, "Time used: rgb: {}, matrix: {}, encode: {}, n: {}, max: {}."
const/4 v4, 0x5
new-array v4, v4, [Ljava/lang/Object;
iget-wide v5, p0, Lco/vine/android/recorder/SwEncodingRunnable;->timeToRGB:J
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
aput-object v5, v4, v8
iget-wide v5, p0, Lco/vine/android/recorder/SwEncodingRunnable;->timeToMatrix:J
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
aput-object v5, v4, v7
iget-wide v5, p0, Lco/vine/android/recorder/SwEncodingRunnable;->timeToRecord:J
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
aput-object v5, v4, v9
const/4 v5, 0x3
iget v6, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mTotalProcessed:I
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x4
iget v6, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mMaxEncodedSize:I
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
const/4 v3, 0x0
iput-object v3, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mLastSegment:Lco/vine/android/recorder/RecordSegment;
const-string v3, "[ML] Processing Ended: {}."
new-array v4, v7, [Ljava/lang/Object;
iget-object v5, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mOutput:Ljava/lang/String;
aput-object v5, v4, v8
invoke-static {v3, v4}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
sget v3, Lco/vine/android/recorder/SwEncodingRunnable;->sRunningInstances:I
add-int/lit8 v3, v3, -0x1
sput v3, Lco/vine/android/recorder/SwEncodingRunnable;->sRunningInstances:I
return-void
:cond_c1
const-string v3, "Terminate without saving...."
invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
goto :goto_53
:catch_c7
move-exception v0
const-string v3, "Interrupted."
invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
goto :goto_60
.end method
.method public setAsyncTask(Lco/vine/android/recorder/BaseFinishProcessTask;)V
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
return-void
.end method
.method public terminate()V
.registers 2
const-string v0, "Terminate without saving turned on."
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/recorder/SwEncodingRunnable;->mTerminateImmediately:Z
return-void
.end method