.class  Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;
.super Ljava/lang/Object;
.source "HwEncodingRunnable.java"
.implements Ljava/lang/Runnable;
.implements Lcom/lifevibes/mediacoder/LVMediaCoder$LVMediaCoderICSEncoderProgressListener;
.field private final LOCK:[I
.field private mBufferedVideoData:Ljava/util/LinkedList;
.field private mByteBuffer:Ljava/nio/ByteBuffer;
.field private mErrorCount:I
.field private mLast:Lco/vine/android/recorder/VideoData;
.field private mLastSegment:Lco/vine/android/recorder/RecordSegment;
.field private mReceived:I
.field public mRun:Z
.field private notFirst:Z
.field final synthetic this$0:Lco/vine/android/recorder/HwEncodingRunnable;
.field private totalSizeToWait:I
.method public constructor <init>(Lco/vine/android/recorder/HwEncodingRunnable;Ljava/nio/ByteBuffer;)V
.registers 4
iput-object p1, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
new-array v0, v0, [I
iput-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->LOCK:[I
const/4 v0, -0x1
iput v0, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->totalSizeToWait:I
iput-object p2, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;
invoke-direct {p0}, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->makeNewEncoder()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mBufferedVideoData:Ljava/util/LinkedList;
return-void
.end method
.method private doVideoFrameEncoded(Ljava/nio/ByteBuffer;)Z
.registers 6
iget-object v1, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mBufferedVideoData:Ljava/util/LinkedList;
invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/recorder/VideoData;
iget-object v1, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mEncoder:Lco/vine/android/recorder/HwVineFrameRecorder;
invoke-static {v1}, Lco/vine/android/recorder/HwEncodingRunnable;->access$500(Lco/vine/android/recorder/HwEncodingRunnable;)Lco/vine/android/recorder/HwVineFrameRecorder;
move-result-object v1
iget-object v2, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mVideoDataBufferMax:[B
invoke-static {v2}, Lco/vine/android/recorder/HwEncodingRunnable;->access$300(Lco/vine/android/recorder/HwEncodingRunnable;)[B
move-result-object v2
iget-object v3, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mVideoDataBufferPosition:I
invoke-static {v3}, Lco/vine/android/recorder/HwEncodingRunnable;->access$400(Lco/vine/android/recorder/HwEncodingRunnable;)I
move-result v3
invoke-virtual {v1, p1, v2, v3}, Lco/vine/android/recorder/HwVineFrameRecorder;->putEncodedData(Ljava/nio/ByteBuffer;[BI)I
move-result v1
iput v1, v0, Lco/vine/android/recorder/VideoData;->size:I
invoke-direct {p0, v0}, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->putVideoFrame(Lco/vine/android/recorder/VideoData;)Z
move-result v1
return v1
.end method
.method private doVideoFrameRaw([BZZ)Z
.registers 9
const/4 v2, 0x1
iget-object v1, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mEncoder:Lco/vine/android/recorder/HwVineFrameRecorder;
invoke-static {v1}, Lco/vine/android/recorder/HwEncodingRunnable;->access$500(Lco/vine/android/recorder/HwEncodingRunnable;)Lco/vine/android/recorder/HwVineFrameRecorder;
move-result-object v1
if-nez v1, :cond_32
invoke-direct {p0}, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->makeNewEncoder()V
:goto_c
iget-object v1, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
invoke-static {v1}, Lco/vine/android/recorder/HwEncodingRunnable;->access$608(Lco/vine/android/recorder/HwEncodingRunnable;)I
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x10
if-ge v1, v2, :cond_41
iget-object v1, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mEncoder:Lco/vine/android/recorder/HwVineFrameRecorder;
invoke-static {v1}, Lco/vine/android/recorder/HwEncodingRunnable;->access$500(Lco/vine/android/recorder/HwEncodingRunnable;)Lco/vine/android/recorder/HwVineFrameRecorder;
move-result-object v1
invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
move-result-object v2
iget-object v3, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mVideoDataBufferMax:[B
invoke-static {v3}, Lco/vine/android/recorder/HwEncodingRunnable;->access$300(Lco/vine/android/recorder/HwEncodingRunnable;)[B
move-result-object v3
iget-object v4, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mVideoDataBufferPosition:I
invoke-static {v4}, Lco/vine/android/recorder/HwEncodingRunnable;->access$400(Lco/vine/android/recorder/HwEncodingRunnable;)I
move-result v4
invoke-virtual {v1, v2, v3, v4, p3}, Lco/vine/android/recorder/HwVineFrameRecorder;->encode(Ljava/nio/ByteBuffer;[BIZ)I
const/4 v1, 0x0
:goto_31
return v1
:cond_32
if-eqz p2, :cond_3e
iget-boolean v1, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->notFirst:Z
if-eqz v1, :cond_3e
invoke-direct {p0, v2}, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->stopEncoder(I)V
invoke-direct {p0}, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->makeNewEncoder()V
:cond_3e
iput-boolean v2, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->notFirst:Z
goto :goto_c
:cond_41
iget-object v1, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mBufferedVideoData:Ljava/util/LinkedList;
invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/recorder/VideoData;
iget-object v1, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mEncoder:Lco/vine/android/recorder/HwVineFrameRecorder;
invoke-static {v1}, Lco/vine/android/recorder/HwEncodingRunnable;->access$500(Lco/vine/android/recorder/HwEncodingRunnable;)Lco/vine/android/recorder/HwVineFrameRecorder;
move-result-object v1
invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
move-result-object v2
iget-object v3, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mVideoDataBufferMax:[B
invoke-static {v3}, Lco/vine/android/recorder/HwEncodingRunnable;->access$300(Lco/vine/android/recorder/HwEncodingRunnable;)[B
move-result-object v3
iget-object v4, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mVideoDataBufferPosition:I
invoke-static {v4}, Lco/vine/android/recorder/HwEncodingRunnable;->access$400(Lco/vine/android/recorder/HwEncodingRunnable;)I
move-result v4
invoke-virtual {v1, v2, v3, v4, p3}, Lco/vine/android/recorder/HwVineFrameRecorder;->encode(Ljava/nio/ByteBuffer;[BIZ)I
move-result v1
iput v1, v0, Lco/vine/android/recorder/VideoData;->size:I
const-string v1, "onFrameAvailable Write video frame size {}. Total processed {}, last Frame? {}."
iget v2, v0, Lco/vine/android/recorder/VideoData;->size:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
iget-object v3, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mTotalProcessed:I
invoke-static {v3}, Lco/vine/android/recorder/HwEncodingRunnable;->access$600(Lco/vine/android/recorder/HwEncodingRunnable;)I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
invoke-static {v1, v2, v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
invoke-direct {p0, v0}, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->putVideoFrame(Lco/vine/android/recorder/VideoData;)Z
move-result v1
goto :goto_31
.end method
.method private makeNewEncoder()V
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
#setter for: Lco/vine/android/recorder/HwEncodingRunnable;->mTotalProcessed:I
invoke-static {v0, v1}, Lco/vine/android/recorder/HwEncodingRunnable;->access$602(Lco/vine/android/recorder/HwEncodingRunnable;I)I
iput v1, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mReceived:I
iget-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
iget-object v1, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mContext:Landroid/content/Context;
invoke-static {v1}, Lco/vine/android/recorder/HwEncodingRunnable;->access$800(Lco/vine/android/recorder/HwEncodingRunnable;)Landroid/content/Context;
move-result-object v1
const/4 v2, 0x0
iget-object v3, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mRecorderFrameRate:I
invoke-static {v3}, Lco/vine/android/recorder/HwEncodingRunnable;->access$900(Lco/vine/android/recorder/HwEncodingRunnable;)I
move-result v3
invoke-static {v1, v2, v3}, Lco/vine/android/recorder/RecordConfigUtils;->newVideoRecorder(Landroid/content/Context;Ljava/lang/String;I)Lco/vine/android/recorder/HwVineFrameRecorder;
move-result-object v1
#setter for: Lco/vine/android/recorder/HwEncodingRunnable;->mEncoder:Lco/vine/android/recorder/HwVineFrameRecorder;
invoke-static {v0, v1}, Lco/vine/android/recorder/HwEncodingRunnable;->access$502(Lco/vine/android/recorder/HwEncodingRunnable;Lco/vine/android/recorder/HwVineFrameRecorder;)Lco/vine/android/recorder/HwVineFrameRecorder;
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x10
if-ge v0, v1, :cond_2d
iget-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mEncoder:Lco/vine/android/recorder/HwVineFrameRecorder;
invoke-static {v0}, Lco/vine/android/recorder/HwEncodingRunnable;->access$500(Lco/vine/android/recorder/HwEncodingRunnable;)Lco/vine/android/recorder/HwVineFrameRecorder;
move-result-object v0
invoke-virtual {v0, p0}, Lco/vine/android/recorder/HwVineFrameRecorder;->setDataListener(Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;)V
:cond_2d
return-void
.end method
.method private putVideoFrame(Lco/vine/android/recorder/VideoData;)Z
.registers 5
iget v0, p1, Lco/vine/android/recorder/VideoData;->size:I
const/4 v1, -0x1
if-eq v0, v1, :cond_2c
iget-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mVideoDataBufferPosition:I
invoke-static {v0}, Lco/vine/android/recorder/HwEncodingRunnable;->access$400(Lco/vine/android/recorder/HwEncodingRunnable;)I
move-result v0
iput v0, p1, Lco/vine/android/recorder/VideoData;->start:I
iget-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
iget-object v1, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mMaxEncodedSize:I
invoke-static {v1}, Lco/vine/android/recorder/HwEncodingRunnable;->access$700(Lco/vine/android/recorder/HwEncodingRunnable;)I
move-result v1
iget v2, p1, Lco/vine/android/recorder/VideoData;->size:I
invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I
move-result v1
#setter for: Lco/vine/android/recorder/HwEncodingRunnable;->mMaxEncodedSize:I
invoke-static {v0, v1}, Lco/vine/android/recorder/HwEncodingRunnable;->access$702(Lco/vine/android/recorder/HwEncodingRunnable;I)I
iget-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
iget v1, p1, Lco/vine/android/recorder/VideoData;->size:I
invoke-static {v0, v1}, Lco/vine/android/recorder/HwEncodingRunnable;->access$412(Lco/vine/android/recorder/HwEncodingRunnable;I)I
iget-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mBufferedVideoData:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;
const/4 v0, 0x1
:goto_2b
return v0
:cond_2c
const-string v0, "******Image was buffered to the next frame.********"
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_2b
.end method
.method private stopEncoder(I)V
.registers 6
:try_start_0
const-string v1, "Stopping encoder. Error count: {}."
iget v2, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mErrorCount:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-static {v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
iget-object v1, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mEncoder:Lco/vine/android/recorder/HwVineFrameRecorder;
invoke-static {v1}, Lco/vine/android/recorder/HwEncodingRunnable;->access$500(Lco/vine/android/recorder/HwEncodingRunnable;)Lco/vine/android/recorder/HwVineFrameRecorder;
move-result-object v1
invoke-virtual {v1}, Lco/vine/android/recorder/HwVineFrameRecorder;->stopEncoding()V
const-string v1, "Frames left? {}, allowed? {}."
iget-object v2, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mBufferedVideoData:Ljava/util/LinkedList;
invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
:goto_27
iget-object v1, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mBufferedVideoData:Ljava/util/LinkedList;
invoke-virtual {v1}, Ljava/util/LinkedList;->size()I
:try_end_2c
.catch Lco/vine/android/recorder/HwVineFrameRecorder$Exception; {:try_start_0 .. :try_end_2c} :catch_3a
move-result v1
if-le v1, p1, :cond_41
const-wide/16 v1, 0xa
:try_start_31
invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
:try_end_34
.catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_34} :catch_35
.catch Lco/vine/android/recorder/HwVineFrameRecorder$Exception; {:try_start_31 .. :try_end_34} :catch_3a
goto :goto_27
:catch_35
move-exception v0
:try_start_36
invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
:try_end_39
.catch Lco/vine/android/recorder/HwVineFrameRecorder$Exception; {:try_start_36 .. :try_end_39} :catch_3a
goto :goto_27
:catch_3a
move-exception v0
const-string v1, "Error flushing..."
invoke-static {v1, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
:goto_40
return-void
:cond_41
const/4 v1, 0x0
:try_start_42
iput v1, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mErrorCount:I
:try_end_44
.catch Lco/vine/android/recorder/HwVineFrameRecorder$Exception; {:try_start_42 .. :try_end_44} :catch_3a
goto :goto_40
.end method
.method public add(Lco/vine/android/recorder/VideoData;)[B
.registers 6
iget-object v1, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->LOCK:[I
monitor-enter v1
:try_start_3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Added to the queue. "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mByteBufferQueue:Lco/vine/android/recorder/ByteBufferQueue;
invoke-static {v0}, Lco/vine/android/recorder/HwEncodingRunnable;->access$000(Lco/vine/android/recorder/HwEncodingRunnable;)Lco/vine/android/recorder/ByteBufferQueue;
move-result-object v0
new-instance v2, Lco/vine/android/recorder/ByteBufferQueue$QueueItem;
iget-object v3, p1, Lco/vine/android/recorder/VideoData;->data:[B
invoke-direct {v2, v3, p1}, Lco/vine/android/recorder/ByteBufferQueue$QueueItem;-><init>([BLjava/lang/Object;)V
invoke-virtual {v0, v2}, Lco/vine/android/recorder/ByteBufferQueue;->put(Lco/vine/android/recorder/ByteBufferQueue$QueueItem;)Z
move-result v0
if-nez v0, :cond_31
const-string v0, "Not enough memory left. (BufferOverflow)"
invoke-static {v0}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
:cond_31
iget-object v0, p1, Lco/vine/android/recorder/VideoData;->data:[B
monitor-exit v1
return-object v0
:catchall_35
move-exception v0
monitor-exit v1
:try_end_37
.catchall {:try_start_3 .. :try_end_37} :catchall_35
throw v0
.end method
.method public onComplete()V
.registers 1
return-void
.end method
.method public onError(Ljava/lang/Exception;I)V
.registers 5
const-string v0, "Encoding error: {}."
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-static {v0, v1, p1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
iget v0, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mErrorCount:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mErrorCount:I
return-void
.end method
.method public onFrameAvailable(Ljava/nio/ByteBuffer;)V
.registers 5
iget v0, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mReceived:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mReceived:I
const-string v0, "Got Frame! Processed: {}, Received: {}."
iget-object v1, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mTotalProcessed:I
invoke-static {v1}, Lco/vine/android/recorder/HwEncodingRunnable;->access$600(Lco/vine/android/recorder/HwEncodingRunnable;)I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
iget v2, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mReceived:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->doVideoFrameEncoded(Ljava/nio/ByteBuffer;)Z
return-void
.end method
.method public processVideoData(Lco/vine/android/recorder/VideoData;Z)[B
.registers 24
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mLastSegment:Lco/vine/android/recorder/RecordSegment;
move-object/from16 v17, v0
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/recorder/VideoData;->segment:Lco/vine/android/recorder/RecordSegment;
move-object/from16 v18, v0
move-object/from16 v0, v17
move-object/from16 v1, v18
if-eq v0, v1, :cond_1bd
const/4 v11, 0x1
:goto_13
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/recorder/VideoData;->segment:Lco/vine/android/recorder/RecordSegment;
move-object/from16 v17, v0
move-object/from16 v0, v17
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mLastSegment:Lco/vine/android/recorder/RecordSegment;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
move-object/from16 v17, v0
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mPictureConverter:Lco/vine/android/recorder/PictureConverter;
invoke-static/range {v17 .. v17}, Lco/vine/android/recorder/HwEncodingRunnable;->access$1000(Lco/vine/android/recorder/HwEncodingRunnable;)Lco/vine/android/recorder/PictureConverter;
move-result-object v17
move-object/from16 v0, v17
iget-object v0, v0, Lco/vine/android/recorder/PictureConverter;->LOCK:[I
move-object/from16 v18, v0
monitor-enter v18
:try_start_30
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v14
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/recorder/VideoData;->segment:Lco/vine/android/recorder/RecordSegment;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lco/vine/android/recorder/RecordSegment;->getCameraSetting()Lco/vine/android/recorder/CameraSetting;
move-result-object v4
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
move-object/from16 v17, v0
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mPictureConverter:Lco/vine/android/recorder/PictureConverter;
invoke-static/range {v17 .. v17}, Lco/vine/android/recorder/HwEncodingRunnable;->access$1000(Lco/vine/android/recorder/HwEncodingRunnable;)Lco/vine/android/recorder/PictureConverter;
move-result-object v17
move-object/from16 v0, v17
invoke-virtual {v0, v4}, Lco/vine/android/recorder/PictureConverter;->updateSettingsIfNeeded(Lco/vine/android/recorder/CameraSetting;)Z
move-result v10
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
move-object/from16 v17, v0
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mPictureConverter:Lco/vine/android/recorder/PictureConverter;
invoke-static/range {v17 .. v17}, Lco/vine/android/recorder/HwEncodingRunnable;->access$1000(Lco/vine/android/recorder/HwEncodingRunnable;)Lco/vine/android/recorder/PictureConverter;
move-result-object v17
iget v0, v4, Lco/vine/android/recorder/CameraSetting;->degrees:I
move/from16 v19, v0
const/16 v20, 0x0
move-object/from16 v0, v17
move/from16 v1, v19
move/from16 v2, v20
invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/PictureConverter;->giveMatrixNewValuesWithScaleIfDegreeHasChangedWithKnownConfigs(IZ)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
move-object/from16 v17, v0
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mPictureConverter:Lco/vine/android/recorder/PictureConverter;
invoke-static/range {v17 .. v17}, Lco/vine/android/recorder/HwEncodingRunnable;->access$1000(Lco/vine/android/recorder/HwEncodingRunnable;)Lco/vine/android/recorder/PictureConverter;
move-result-object v17
move-object/from16 v0, v17
move-object/from16 v1, p1
invoke-virtual {v0, v4, v1, v10}, Lco/vine/android/recorder/PictureConverter;->convert(Lco/vine/android/recorder/CameraSetting;Lco/vine/android/recorder/VideoData;Z)Z
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
move-object/from16 v17, v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v19
sub-long v19, v19, v14
move-object/from16 v0, v17
move-wide/from16 v1, v19
invoke-static {v0, v1, v2}, Lco/vine/android/recorder/HwEncodingRunnable;->access$1114(Lco/vine/android/recorder/HwEncodingRunnable;J)J
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v14
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
move-object/from16 v17, v0
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mPictureConverter:Lco/vine/android/recorder/PictureConverter;
invoke-static/range {v17 .. v17}, Lco/vine/android/recorder/HwEncodingRunnable;->access$1000(Lco/vine/android/recorder/HwEncodingRunnable;)Lco/vine/android/recorder/PictureConverter;
move-result-object v17
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
move-object/from16 v19, v0
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mMatrixCanvas:Landroid/graphics/Canvas;
invoke-static/range {v19 .. v19}, Lco/vine/android/recorder/HwEncodingRunnable;->access$1200(Lco/vine/android/recorder/HwEncodingRunnable;)Landroid/graphics/Canvas;
move-result-object v19
move-object/from16 v0, v17
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lco/vine/android/recorder/PictureConverter;->draw(Landroid/graphics/Canvas;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
move-object/from16 v17, v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v19
sub-long v19, v19, v14
move-object/from16 v0, v17
move-wide/from16 v1, v19
invoke-static {v0, v1, v2}, Lco/vine/android/recorder/HwEncodingRunnable;->access$1314(Lco/vine/android/recorder/HwEncodingRunnable;J)J
monitor-exit v18
:try_end_be
.catchall {:try_start_30 .. :try_end_be} :catchall_1c0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
move-object/from16 v17, v0
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mMatrixBitmap:Landroid/graphics/Bitmap;
invoke-static/range {v17 .. v17}, Lco/vine/android/recorder/HwEncodingRunnable;->access$1400(Lco/vine/android/recorder/HwEncodingRunnable;)Landroid/graphics/Bitmap;
move-result-object v17
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;
move-object/from16 v18, v0
invoke-virtual/range {v17 .. v18}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V
if-eqz v11, :cond_17d
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
move-object/from16 v17, v0
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mTerminateImmediately:Z
invoke-static/range {v17 .. v17}, Lco/vine/android/recorder/HwEncodingRunnable;->access$1500(Lco/vine/android/recorder/HwEncodingRunnable;)Z
move-result v17
if-nez v17, :cond_17d
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
move-object/from16 v17, v0
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mPictureConverter:Lco/vine/android/recorder/PictureConverter;
invoke-static/range {v17 .. v17}, Lco/vine/android/recorder/HwEncodingRunnable;->access$1000(Lco/vine/android/recorder/HwEncodingRunnable;)Lco/vine/android/recorder/PictureConverter;
move-result-object v17
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
move-object/from16 v18, v0
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mThumbnailCanvas:Landroid/graphics/Canvas;
invoke-static/range {v18 .. v18}, Lco/vine/android/recorder/HwEncodingRunnable;->access$1600(Lco/vine/android/recorder/HwEncodingRunnable;)Landroid/graphics/Canvas;
move-result-object v18
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
move-object/from16 v19, v0
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mMatrixBitmap:Landroid/graphics/Bitmap;
invoke-static/range {v19 .. v19}, Lco/vine/android/recorder/HwEncodingRunnable;->access$1400(Lco/vine/android/recorder/HwEncodingRunnable;)Landroid/graphics/Bitmap;
move-result-object v19
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
move-object/from16 v20, v0
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mThumbnailMatrix:Landroid/graphics/Matrix;
invoke-static/range {v20 .. v20}, Lco/vine/android/recorder/HwEncodingRunnable;->access$1700(Lco/vine/android/recorder/HwEncodingRunnable;)Landroid/graphics/Matrix;
move-result-object v20
invoke-virtual/range {v17 .. v20}, Lco/vine/android/recorder/PictureConverter;->drawGeneric(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
new-instance v17, Ljava/lang/StringBuilder;
invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
move-object/from16 v18, v0
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mOutput:Ljava/lang/String;
invoke-static/range {v18 .. v18}, Lco/vine/android/recorder/HwEncodingRunnable;->access$1800(Lco/vine/android/recorder/HwEncodingRunnable;)Ljava/lang/String;
move-result-object v18
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
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/recorder/VideoData;->segment:Lco/vine/android/recorder/RecordSegment;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-virtual {v0, v13}, Lco/vine/android/recorder/RecordSegment;->setThumbnailPath(Ljava/lang/String;)V
new-instance v8, Ljava/io/File;
invoke-direct {v8, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v12
:try_start_152
new-instance v3, Ljava/io/ByteArrayOutputStream;
invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
move-object/from16 v17, v0
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mThumbnailBitmap:Landroid/graphics/Bitmap;
invoke-static/range {v17 .. v17}, Lco/vine/android/recorder/HwEncodingRunnable;->access$1900(Lco/vine/android/recorder/HwEncodingRunnable;)Landroid/graphics/Bitmap;
move-result-object v17
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
:goto_17d
:cond_17d
:try_end_17d
.catch Ljava/lang/Throwable; {:try_start_152 .. :try_end_17d} :catch_1c3
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v14
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mBufferedVideoData:Ljava/util/LinkedList;
move-object/from16 v17, v0
move-object/from16 v0, v17
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->array()[B
move-result-object v17
move-object/from16 v0, p0
move-object/from16 v1, v17
move/from16 v2, p2
invoke-direct {v0, v1, v11, v2}, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->doVideoFrameRaw([BZZ)Z
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
move-object/from16 v17, v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v18
sub-long v18, v18, v14
invoke-static/range {v17 .. v19}, Lco/vine/android/recorder/HwEncodingRunnable;->access$2014(Lco/vine/android/recorder/HwEncodingRunnable;J)J
move-object/from16 v0, p1
iget-object v6, v0, Lco/vine/android/recorder/VideoData;->data:[B
const/16 v17, 0x0
move-object/from16 v0, v17
move-object/from16 v1, p1
iput-object v0, v1, Lco/vine/android/recorder/VideoData;->data:[B
return-object v6
:cond_1bd
const/4 v11, 0x0
goto/16 :goto_13
:catchall_1c0
move-exception v17
:try_start_1c1
monitor-exit v18
:try_end_1c2
.catchall {:try_start_1c1 .. :try_end_1c2} :catchall_1c0
throw v17
:catch_1c3
move-exception v7
invoke-static {v12}, Lco/vine/android/recorder/RecordSessionManager;->wasSessionJustDeleted(Ljava/io/File;)Z
move-result v16
if-eqz v16, :cond_1d9
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
move-object/from16 v17, v0
const/16 v18, 0x1
#setter for: Lco/vine/android/recorder/HwEncodingRunnable;->mTerminateImmediately:Z
invoke-static/range {v17 .. v18}, Lco/vine/android/recorder/HwEncodingRunnable;->access$1502(Lco/vine/android/recorder/HwEncodingRunnable;Z)Z
invoke-static {v7}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
goto :goto_17d
:cond_1d9
throw v7
.end method
.method public run()V
.registers 11
const/4 v9, 0x0
const/4 v5, 0x1
const/4 v6, 0x0
const/16 v4, 0x13
invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V
iput-object v9, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mLastSegment:Lco/vine/android/recorder/RecordSegment;
const-string v4, "EncodingProcessRunnable started."
invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
:goto_f
iget-boolean v4, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mRun:Z
if-eqz v4, :cond_b4
iget-object v4, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mByteBufferQueue:Lco/vine/android/recorder/ByteBufferQueue;
invoke-static {v4}, Lco/vine/android/recorder/HwEncodingRunnable;->access$000(Lco/vine/android/recorder/HwEncodingRunnable;)Lco/vine/android/recorder/ByteBufferQueue;
move-result-object v4
invoke-virtual {v4}, Lco/vine/android/recorder/ByteBufferQueue;->get()Lco/vine/android/recorder/ByteBufferQueue$QueueItem;
move-result-object v0
iget-object v4, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mProducer:Lco/vine/android/recorder/RecordController;
invoke-static {v4}, Lco/vine/android/recorder/HwEncodingRunnable;->access$100(Lco/vine/android/recorder/HwEncodingRunnable;)Lco/vine/android/recorder/RecordController;
move-result-object v4
invoke-virtual {v4}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z
move-result v4
if-nez v4, :cond_66
iget-object v4, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
invoke-static {v4}, Lco/vine/android/recorder/HwEncodingRunnable;->access$200(Lco/vine/android/recorder/HwEncodingRunnable;)Lco/vine/android/recorder/BaseFinishProcessTask;
move-result-object v4
if-eqz v4, :cond_66
iget-object v4, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mByteBufferQueue:Lco/vine/android/recorder/ByteBufferQueue;
invoke-static {v4}, Lco/vine/android/recorder/HwEncodingRunnable;->access$000(Lco/vine/android/recorder/HwEncodingRunnable;)Lco/vine/android/recorder/ByteBufferQueue;
move-result-object v4
invoke-virtual {v4}, Lco/vine/android/recorder/ByteBufferQueue;->size()I
move-result v3
invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I
move-result v3
iget v4, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->totalSizeToWait:I
const/4 v7, -0x1
if-ne v4, v7, :cond_55
iput v3, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->totalSizeToWait:I
const/4 v4, -0x8
invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V
const-string v4, "Size to wait: {}."
iget v7, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->totalSizeToWait:I
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
invoke-static {v4, v7}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V
:cond_55
iget-object v4, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
invoke-static {v4}, Lco/vine/android/recorder/HwEncodingRunnable;->access$200(Lco/vine/android/recorder/HwEncodingRunnable;)Lco/vine/android/recorder/BaseFinishProcessTask;
move-result-object v4
iget v7, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->totalSizeToWait:I
sub-int/2addr v7, v3
mul-int/lit8 v7, v7, 0x5a
iget v8, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->totalSizeToWait:I
div-int/2addr v7, v8
invoke-virtual {v4, v7}, Lco/vine/android/recorder/BaseFinishProcessTask;->publish(I)V
:cond_66
if-eqz v0, :cond_95
const-string v4, "Got data. {}"
invoke-static {v4, p0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
iget-object v2, v0, Lco/vine/android/recorder/ByteBufferQueue$QueueItem;->tag:Ljava/lang/Object;
check-cast v2, Lco/vine/android/recorder/VideoData;
iget-object v4, v0, Lco/vine/android/recorder/ByteBufferQueue$QueueItem;->bytes:[B
iput-object v4, v2, Lco/vine/android/recorder/VideoData;->data:[B
iget-object v4, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mLast:Lco/vine/android/recorder/VideoData;
if-eqz v4, :cond_89
:try_start_79
iget-object v7, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mLast:Lco/vine/android/recorder/VideoData;
iget-object v4, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mLast:Lco/vine/android/recorder/VideoData;
iget-object v4, v4, Lco/vine/android/recorder/VideoData;->segment:Lco/vine/android/recorder/RecordSegment;
iget-object v8, v2, Lco/vine/android/recorder/VideoData;->segment:Lco/vine/android/recorder/RecordSegment;
if-eq v4, v8, :cond_8c
move v4, v5
:goto_84
invoke-virtual {p0, v7, v4}, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->processVideoData(Lco/vine/android/recorder/VideoData;Z)[B
:try_end_87
.catch Ljava/lang/Exception; {:try_start_79 .. :try_end_87} :catch_8e
iput-object v9, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mLast:Lco/vine/android/recorder/VideoData;
:cond_89
iput-object v2, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mLast:Lco/vine/android/recorder/VideoData;
goto :goto_f
:cond_8c
move v4, v6
goto :goto_84
:catch_8e
move-exception v1
new-instance v4, Ljava/lang/RuntimeException;
invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v4
:cond_95
iget-object v4, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->this$0:Lco/vine/android/recorder/HwEncodingRunnable;
#getter for: Lco/vine/android/recorder/HwEncodingRunnable;->mByteBufferQueue:Lco/vine/android/recorder/ByteBufferQueue;
invoke-static {v4}, Lco/vine/android/recorder/HwEncodingRunnable;->access$000(Lco/vine/android/recorder/HwEncodingRunnable;)Lco/vine/android/recorder/ByteBufferQueue;
move-result-object v4
invoke-virtual {v4}, Lco/vine/android/recorder/ByteBufferQueue;->isEndOfPut()Z
move-result v4
if-eqz v4, :cond_a5
iput-boolean v6, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mRun:Z
goto/16 :goto_f
:cond_a5
const-wide/16 v7, 0x64
:try_start_a7
invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
:try_end_aa
.catch Ljava/lang/InterruptedException; {:try_start_a7 .. :try_end_aa} :catch_ac
goto/16 :goto_f
:catch_ac
move-exception v1
const-string v4, "Interrupted."
invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
goto/16 :goto_f
:cond_b4
iget-object v4, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mLast:Lco/vine/android/recorder/VideoData;
if-eqz v4, :cond_c0
:try_start_b8
iget-object v4, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mLast:Lco/vine/android/recorder/VideoData;
const/4 v5, 0x1
invoke-virtual {p0, v4, v5}, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->processVideoData(Lco/vine/android/recorder/VideoData;Z)[B
:try_end_be
.catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_be} :catch_c4
iput-object v9, p0, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->mLast:Lco/vine/android/recorder/VideoData;
:cond_c0
invoke-direct {p0, v6}, Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;->stopEncoder(I)V
return-void
:catch_c4
move-exception v1
new-instance v4, Ljava/lang/RuntimeException;
invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v4
.end method