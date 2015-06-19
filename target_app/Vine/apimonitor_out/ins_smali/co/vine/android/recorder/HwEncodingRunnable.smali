.class public Lco/vine/android/recorder/HwEncodingRunnable;
.super Lco/vine/android/recorder/AbstractEncodingRunnable;
.source "HwEncodingRunnable.java"
.field private mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
.field private final mByteBufferQueue:Lco/vine/android/recorder/ByteBufferQueue;
.field private final mCameraManager:Lco/vine/android/recorder/CameraManager;
.field private final mContext:Landroid/content/Context;
.field private final mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
.field private mEncoder:Lco/vine/android/recorder/HwVineFrameRecorder;
.field private final mEncodingRunnable:Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;
.field private final mEncodingThread:Ljava/lang/Thread;
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
.field private final mVideoDataBufferMax:[B
.field private mVideoDataBufferPosition:I
.field private timeToMatrix:J
.field private timeToRGB:J
.field private timeToRecord:J
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ConcurrentLinkedQueue;[BLco/vine/android/recorder/RecordController;Ljava/lang/String;ILjava/nio/ByteBuffer;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lco/vine/android/recorder/PictureConverter;ILco/vine/android/recorder/CameraManager;Lco/vine/android/recorder/ByteBufferQueue;Landroid/graphics/Matrix;Landroid/graphics/Canvas;Landroid/graphics/Canvas;)V
.registers 20
invoke-direct {p0}, Lco/vine/android/recorder/AbstractEncodingRunnable;-><init>()V
const/4 v1, 0x0
iput-boolean v1, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mTerminateImmediately:Z
iput-object p1, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mContext:Landroid/content/Context;
iput-object p2, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
iput-object p4, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mProducer:Lco/vine/android/recorder/RecordController;
iput-object p8, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mMatrixBitmap:Landroid/graphics/Bitmap;
iput-object p9, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mThumbnailBitmap:Landroid/graphics/Bitmap;
iput-object p12, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mCameraManager:Lco/vine/android/recorder/CameraManager;
move-object/from16 v0, p15
iput-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mThumbnailCanvas:Landroid/graphics/Canvas;
move-object/from16 v0, p16
iput-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mMatrixCanvas:Landroid/graphics/Canvas;
iput-object p3, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mVideoDataBufferMax:[B
iput p11, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mVideoDataBufferPosition:I
iput-object p10, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mPictureConverter:Lco/vine/android/recorder/PictureConverter;
iput p6, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mRecorderFrameRate:I
iput-object p5, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mOutput:Ljava/lang/String;
move-object/from16 v0, p14
iput-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mThumbnailMatrix:Landroid/graphics/Matrix;
move-object/from16 v0, p13
iput-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mByteBufferQueue:Lco/vine/android/recorder/ByteBufferQueue;
new-instance v1, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;
invoke-direct {v1, p0, p7}, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;-><init>(Lco/vine/android/recorder/HwEncodingRunnable;Ljava/nio/ByteBuffer;)V
iput-object v1, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mEncodingRunnable:Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;
new-instance v1, Ljava/lang/Thread;
iget-object v2, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mEncodingRunnable:Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;
invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
iput-object v1, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mEncodingThread:Ljava/lang/Thread;
iget-object v1, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mByteBufferQueue:Lco/vine/android/recorder/ByteBufferQueue;
invoke-virtual {v1}, Lco/vine/android/recorder/ByteBufferQueue;->isFresh()Z
move-result v1
if-nez v1, :cond_4c
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "Invalid buffer queue."
invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:cond_4c
return-void
.end method
.method static synthetic access$000(Lco/vine/android/recorder/HwEncodingRunnable;)Lco/vine/android/recorder/ByteBufferQueue;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mByteBufferQueue:Lco/vine/android/recorder/ByteBufferQueue;
return-object v0
.end method
.method static synthetic access$100(Lco/vine/android/recorder/HwEncodingRunnable;)Lco/vine/android/recorder/RecordController;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mProducer:Lco/vine/android/recorder/RecordController;
return-object v0
.end method
.method static synthetic access$1000(Lco/vine/android/recorder/HwEncodingRunnable;)Lco/vine/android/recorder/PictureConverter;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mPictureConverter:Lco/vine/android/recorder/PictureConverter;
return-object v0
.end method
.method static synthetic access$1114(Lco/vine/android/recorder/HwEncodingRunnable;J)J
.registers 5
iget-wide v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->timeToRGB:J
add-long/2addr v0, p1
iput-wide v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->timeToRGB:J
return-wide v0
.end method
.method static synthetic access$1200(Lco/vine/android/recorder/HwEncodingRunnable;)Landroid/graphics/Canvas;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mMatrixCanvas:Landroid/graphics/Canvas;
return-object v0
.end method
.method static synthetic access$1314(Lco/vine/android/recorder/HwEncodingRunnable;J)J
.registers 5
iget-wide v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->timeToMatrix:J
add-long/2addr v0, p1
iput-wide v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->timeToMatrix:J
return-wide v0
.end method
.method static synthetic access$1400(Lco/vine/android/recorder/HwEncodingRunnable;)Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mMatrixBitmap:Landroid/graphics/Bitmap;
return-object v0
.end method
.method static synthetic access$1500(Lco/vine/android/recorder/HwEncodingRunnable;)Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mTerminateImmediately:Z
return v0
.end method
.method static synthetic access$1502(Lco/vine/android/recorder/HwEncodingRunnable;Z)Z
.registers 2
iput-boolean p1, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mTerminateImmediately:Z
return p1
.end method
.method static synthetic access$1600(Lco/vine/android/recorder/HwEncodingRunnable;)Landroid/graphics/Canvas;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mThumbnailCanvas:Landroid/graphics/Canvas;
return-object v0
.end method
.method static synthetic access$1700(Lco/vine/android/recorder/HwEncodingRunnable;)Landroid/graphics/Matrix;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mThumbnailMatrix:Landroid/graphics/Matrix;
return-object v0
.end method
.method static synthetic access$1800(Lco/vine/android/recorder/HwEncodingRunnable;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mOutput:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$1900(Lco/vine/android/recorder/HwEncodingRunnable;)Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mThumbnailBitmap:Landroid/graphics/Bitmap;
return-object v0
.end method
.method static synthetic access$200(Lco/vine/android/recorder/HwEncodingRunnable;)Lco/vine/android/recorder/BaseFinishProcessTask;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
return-object v0
.end method
.method static synthetic access$2014(Lco/vine/android/recorder/HwEncodingRunnable;J)J
.registers 5
iget-wide v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->timeToRecord:J
add-long/2addr v0, p1
iput-wide v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->timeToRecord:J
return-wide v0
.end method
.method static synthetic access$300(Lco/vine/android/recorder/HwEncodingRunnable;)[B
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mVideoDataBufferMax:[B
return-object v0
.end method
.method static synthetic access$400(Lco/vine/android/recorder/HwEncodingRunnable;)I
.registers 2
iget v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mVideoDataBufferPosition:I
return v0
.end method
.method static synthetic access$412(Lco/vine/android/recorder/HwEncodingRunnable;I)I
.registers 3
iget v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mVideoDataBufferPosition:I
add-int/2addr v0, p1
iput v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mVideoDataBufferPosition:I
return v0
.end method
.method static synthetic access$500(Lco/vine/android/recorder/HwEncodingRunnable;)Lco/vine/android/recorder/HwVineFrameRecorder;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mEncoder:Lco/vine/android/recorder/HwVineFrameRecorder;
return-object v0
.end method
.method static synthetic access$502(Lco/vine/android/recorder/HwEncodingRunnable;Lco/vine/android/recorder/HwVineFrameRecorder;)Lco/vine/android/recorder/HwVineFrameRecorder;
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mEncoder:Lco/vine/android/recorder/HwVineFrameRecorder;
return-object p1
.end method
.method static synthetic access$600(Lco/vine/android/recorder/HwEncodingRunnable;)I
.registers 2
iget v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mTotalProcessed:I
return v0
.end method
.method static synthetic access$602(Lco/vine/android/recorder/HwEncodingRunnable;I)I
.registers 2
iput p1, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mTotalProcessed:I
return p1
.end method
.method static synthetic access$608(Lco/vine/android/recorder/HwEncodingRunnable;)I
.registers 3
iget v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mTotalProcessed:I
add-int/lit8 v1, v0, 0x1
iput v1, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mTotalProcessed:I
return v0
.end method
.method static synthetic access$700(Lco/vine/android/recorder/HwEncodingRunnable;)I
.registers 2
iget v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mMaxEncodedSize:I
return v0
.end method
.method static synthetic access$702(Lco/vine/android/recorder/HwEncodingRunnable;I)I
.registers 2
iput p1, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mMaxEncodedSize:I
return p1
.end method
.method static synthetic access$800(Lco/vine/android/recorder/HwEncodingRunnable;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mContext:Landroid/content/Context;
return-object v0
.end method
.method static synthetic access$900(Lco/vine/android/recorder/HwEncodingRunnable;)I
.registers 2
iget v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mRecorderFrameRate:I
return v0
.end method
.method private process(Z)V
.registers 7
:goto_0
:cond_0
iget-boolean v3, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mTerminateImmediately:Z
if-nez v3, :cond_26
iget-object v3, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/recorder/VideoData;
if-nez v2, :cond_16
iget-object v3, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mProducer:Lco/vine/android/recorder/RecordController;
invoke-virtual {v3}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z
move-result v3
if-eqz v3, :cond_26
:cond_16
if-nez v2, :cond_27
if-eqz p1, :cond_0
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
iget-object v3, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mEncodingRunnable:Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;
invoke-virtual {v3, v2}, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->add(Lco/vine/android/recorder/VideoData;)[B
move-result-object v0
iget-object v4, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mCameraManager:Lco/vine/android/recorder/CameraManager;
if-nez p1, :cond_36
const/4 v3, 0x1
:goto_32
invoke-virtual {v4, v0, v3}, Lco/vine/android/recorder/CameraManager;->addBuffer([BZ)V
goto :goto_0
:cond_36
const/4 v3, 0x0
goto :goto_32
.end method
.method public getOutput()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mOutput:Ljava/lang/String;
return-object v0
.end method
.method public run()V
.registers 7
const/4 v5, 0x0
const/4 v4, 0x1
const/16 v1, 0x13
invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V
const-string v1, "Processing started: {}."
new-array v2, v4, [Ljava/lang/Object;
iget-object v3, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mOutput:Ljava/lang/String;
aput-object v3, v2, v5
invoke-static {v1, v2}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v1, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mEncodingRunnable:Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;
iput-boolean v4, v1, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mRun:Z
iget-object v1, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mEncodingThread:Ljava/lang/Thread;
invoke-virtual {v1}, Ljava/lang/Thread;->start()V
:goto_1b
iget-object v1, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mProducer:Lco/vine/android/recorder/RecordController;
invoke-virtual {v1}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z
move-result v1
if-eqz v1, :cond_2b
iget-boolean v1, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mTerminateImmediately:Z
if-nez v1, :cond_2b
invoke-direct {p0, v4}, Lco/vine/android/recorder/HwEncodingRunnable;->process(Z)V
goto :goto_1b
:cond_2b
const-string v1, "Flushing..."
invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
iget-boolean v1, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mTerminateImmediately:Z
if-nez v1, :cond_84
invoke-direct {p0, v5}, Lco/vine/android/recorder/HwEncodingRunnable;->process(Z)V
:goto_37
iget-object v1, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mByteBufferQueue:Lco/vine/android/recorder/ByteBufferQueue;
invoke-virtual {v1}, Lco/vine/android/recorder/ByteBufferQueue;->endOfPut()V
:try_start_3c
iget-object v1, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mEncodingThread:Ljava/lang/Thread;
invoke-virtual {v1}, Ljava/lang/Thread;->join()V
:goto_41
:try_end_41
.catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_41} :catch_8a
iget-object v1, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
if-eqz v1, :cond_4c
iget-object v1, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
const/16 v2, 0x5a
invoke-virtual {v1, v2}, Lco/vine/android/recorder/BaseFinishProcessTask;->publish(I)V
:cond_4c
const-string v1, "Time used: rgb: {}ms"
iget-wide v2, p0, Lco/vine/android/recorder/HwEncodingRunnable;->timeToRGB:J
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-static {v1, v2}, Lcom/edisonwang/android/slog/SLog;->b(Ljava/lang/String;Ljava/lang/Object;)V
const-string v1, "Time used: matrix: {}ms."
iget-wide v2, p0, Lco/vine/android/recorder/HwEncodingRunnable;->timeToMatrix:J
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-static {v1, v2}, Lcom/edisonwang/android/slog/SLog;->b(Ljava/lang/String;Ljava/lang/Object;)V
const-string v1, "Total Processed: {}."
iget v2, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mTotalProcessed:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-static {v1, v2}, Lcom/edisonwang/android/slog/SLog;->b(Ljava/lang/String;Ljava/lang/Object;)V
const-string v1, "Total Encoding time: {}ms."
iget-wide v2, p0, Lco/vine/android/recorder/HwEncodingRunnable;->timeToRecord:J
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-static {v1, v2}, Lcom/edisonwang/android/slog/SLog;->b(Ljava/lang/String;Ljava/lang/Object;)V
const-string v1, "Processing Ended: {}."
new-array v2, v4, [Ljava/lang/Object;
iget-object v3, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mOutput:Ljava/lang/String;
aput-object v3, v2, v5
invoke-static {v1, v2}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
return-void
:cond_84
const-string v1, "Terminate without saving...."
invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
goto :goto_37
:catch_8a
move-exception v0
const-string v1, "Interrupted."
invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
goto :goto_41
.end method
.method public setAsyncTask(Lco/vine/android/recorder/BaseFinishProcessTask;)V
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
return-void
.end method
.method public terminate()V
.registers 2
const-string v0, "Terminate without saving turned on."
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/recorder/HwEncodingRunnable;->mTerminateImmediately:Z
return-void
.end method