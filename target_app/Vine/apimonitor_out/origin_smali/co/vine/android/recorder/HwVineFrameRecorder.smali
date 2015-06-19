.class public Lco/vine/android/recorder/HwVineFrameRecorder;
.super Ljava/lang/Object;
.source "HwVineFrameRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/recorder/HwVineFrameRecorder$Exception;
    }
.end annotation


# static fields
.field private static final LOCK:[I = null

.field private static final LOGGING:Z = false

.field private static final TAG:Ljava/lang/String; = "Recorder"


# instance fields
.field private mAudioRecordTime:J

.field private final mCoder:Lcom/lifevibes/mediacoder/LVMediaCoderImpl;

.field private mEncodingCount:I

.field private mFrameNumber:I

.field private mHasData:Z

.field private mLastTimestamp:I

.field private mLoggingVideoFile:Ljava/io/ObjectOutputStream;

.field private final mOutput:Ljava/lang/String;

.field private final mTpfMs:D

.field private final mTpfUs:D

.field private mVideoEncodeTime:J

.field private mVideoRecordTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lco/vine/android/recorder/HwVineFrameRecorder;->LOCK:[I

    const-string v0, "LV3GPWriterAndColorFilters"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_15

    const-string v0, "LifeVibesSFEncoder"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 9

    const-wide v3, 0x408f400000000000L

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "Recorder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created frame recorder: encoding only? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_4a

    const/4 v0, 0x1

    :goto_18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lco/vine/android/recorder/HwVineFrameRecorder;->LOCK:[I

    monitor-enter v1

    :try_start_26
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    iput-object p2, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mOutput:Ljava/lang/String;

    invoke-static {}, Lco/vine/android/recorder/RecordConfigUtils;->getEncoderConfiguration()Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->create(Landroid/content/Context;Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;)Lcom/lifevibes/mediacoder/LVMediaCoderImpl;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mCoder:Lcom/lifevibes/mediacoder/LVMediaCoderImpl;

    iget-object v0, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mOutput:Ljava/lang/String;

    if-nez v0, :cond_4c

    iget-object v0, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mCoder:Lcom/lifevibes/mediacoder/LVMediaCoderImpl;

    invoke-virtual {v0}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->startEncoding()V

    :goto_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_26 .. :try_end_3f} :catchall_54

    int-to-double v0, p3

    div-double v0, v3, v0

    iput-wide v0, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mTpfMs:D

    iget-wide v0, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mTpfMs:D

    mul-double/2addr v0, v3

    iput-wide v0, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mTpfUs:D

    return-void

    :cond_4a
    const/4 v0, 0x0

    goto :goto_18

    :cond_4c
    :try_start_4c
    iget-object v0, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mCoder:Lcom/lifevibes/mediacoder/LVMediaCoderImpl;

    iget-object v2, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mOutput:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->startRecording(Ljava/lang/String;)V

    goto :goto_3e

    :catchall_54
    move-exception v0

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_54

    throw v0
.end method


# virtual methods
.method public encode(Ljava/nio/ByteBuffer;[BIZ)I
    .registers 14

    const/4 v2, -0x1

    const/4 v7, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-boolean v7, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mHasData:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_2a

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_2b

    iget-object v5, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mCoder:Lcom/lifevibes/mediacoder/LVMediaCoderImpl;

    invoke-virtual {v5, p1, v7}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->encodeVideo(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    :goto_17
    iget-object v5, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mLoggingVideoFile:Ljava/io/ObjectOutputStream;

    if-eqz v5, :cond_28

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :try_start_1f
    iget-object v5, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mLoggingVideoFile:Ljava/io/ObjectOutputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_28} :catch_31

    :cond_28
    :goto_28
    if-nez v1, :cond_36

    :cond_2a
    :goto_2a
    return v2

    :cond_2b
    iget-object v5, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mCoder:Lcom/lifevibes/mediacoder/LVMediaCoderImpl;

    invoke-virtual {v5, p1, v7, p4}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->encodeVideoAsync(Ljava/nio/ByteBuffer;IZ)V

    goto :goto_17

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_28

    :cond_36
    invoke-virtual {p0, v1, p2, p3}, Lco/vine/android/recorder/HwVineFrameRecorder;->putEncodedData(Ljava/nio/ByteBuffer;[BI)I

    move-result v2

    iget v5, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mEncodingCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mEncodingCount:I

    iget-wide v5, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mVideoEncodeTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    add-long/2addr v5, v7

    iput-wide v5, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mVideoEncodeTime:J

    goto :goto_2a
.end method

.method public getFrameNumber()I
    .registers 2

    iget v0, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mFrameNumber:I

    return v0
.end method

.method public getLastTimestamp()J
    .registers 3

    iget v0, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mLastTimestamp:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getOutput()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mOutput:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 5

    iget v0, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mFrameNumber:I

    int-to-double v0, v0

    iget-wide v2, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mTpfUs:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasData()Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mHasData:Z

    return v0
.end method

.method public putEncodedData(Ljava/nio/ByteBuffer;[BI)I
    .registers 6

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v1, p3

    return v1
.end method

.method public recordAudio([BII)V
    .registers 12

    const/4 v4, 0x1

    iput-boolean v4, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mHasData:Z

    const/16 v1, 0x800

    const-string v4, "Audio buffer size: {}."

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_12
    if-lez p3, :cond_29

    if-ge p3, v1, :cond_17

    move v1, p3

    :cond_17
    iget-object v4, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mCoder:Lcom/lifevibes/mediacoder/LVMediaCoderImpl;

    invoke-virtual {v4, p1, p2, v1}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->encodeAudio([BII)Ljava/nio/ShortBuffer;

    move-result-object v0

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v4, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mCoder:Lcom/lifevibes/mediacoder/LVMediaCoderImpl;

    invoke-virtual {v4, v0}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->recordAudio(Ljava/nio/ShortBuffer;)V

    goto :goto_12

    :cond_29
    iget-wide v4, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mAudioRecordTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mAudioRecordTime:J

    return-void
.end method

.method public setDataListener(Lco/vine/android/recorder/HwEncodingRunnable$EncodingProcessRunnable;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_b

    iget-object v0, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mCoder:Lcom/lifevibes/mediacoder/LVMediaCoderImpl;

    invoke-virtual {v0, p1}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->setEncoderVideoAsyncListener(Lcom/lifevibes/mediacoder/LVMediaCoder$LVMediaCoderICSEncoderProgressListener;)V

    :cond_b
    return-void
.end method

.method public setTimestamp(J)V
    .registers 7

    long-to-double v0, p1

    iget-wide v2, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mTpfUs:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mFrameNumber:I

    return-void
.end method

.method public stopCombining()V
    .registers 5

    iget-object v1, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mLoggingVideoFile:Ljava/io/ObjectOutputStream;

    if-eqz v1, :cond_15

    :try_start_4
    iget-object v1, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mLoggingVideoFile:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    iget-object v1, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mLoggingVideoFile:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    const-string v1, "Recorder"

    const-string v2, "Video file binary saved."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_15} :catch_31

    :cond_15
    :goto_15
    const-string v1, "Recording audio took: {}ms"

    iget-wide v2, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mAudioRecordTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/edisonwang/android/slog/SLog;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Recording video took: {}ms."

    iget-wide v2, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mVideoRecordTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/edisonwang/android/slog/SLog;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mCoder:Lcom/lifevibes/mediacoder/LVMediaCoderImpl;

    invoke-virtual {v1}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->stop()V

    return-void

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15
.end method

.method public stopEncoding()V
    .registers 6

    const-string v0, "Stop Encoding Start."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mCoder:Lcom/lifevibes/mediacoder/LVMediaCoderImpl;

    invoke-virtual {v0}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->stop()V

    const-string v0, "Stop Encoding Done."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    iget v0, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mEncodingCount:I

    if-lez v0, :cond_2f

    const-string v0, "Encoding video took: {}ms."

    iget-wide v1, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mVideoEncodeTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Encoding fps: {}fps, "

    iget v1, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mEncodingCount:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    iget-wide v3, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mVideoEncodeTime:J

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2f
    return-void
.end method

.method public writeEncodedImage([BII)V
    .registers 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mHasData:Z

    iget v2, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mFrameNumber:I

    int-to-double v2, v2

    iget-wide v4, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mTpfMs:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mLastTimestamp:I

    iget-object v2, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mCoder:Lcom/lifevibes/mediacoder/LVMediaCoderImpl;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mLastTimestamp:I

    add-int/lit8 v4, v4, 0x21

    invoke-virtual {v2, v3, v4}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->recordVideo(Ljava/nio/ByteBuffer;I)V

    iget v2, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mFrameNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mFrameNumber:I

    iget-wide v2, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mVideoRecordTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lco/vine/android/recorder/HwVineFrameRecorder;->mVideoRecordTime:J

    return-void
.end method
