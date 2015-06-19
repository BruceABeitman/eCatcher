.class public Lco/vine/android/recorder/HwCombiningRunnable;
.super Lco/vine/android/recorder/AbstractCombiningRunnable;
.source "HwCombiningRunnable.java"
.field private hasLoggedException:Z
.field private final mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
.field private final mAudioArray:[B
.field private final mIsPreview:Z
.field private mLastFrameOnlyModePath:Ljava/lang/String;
.field private mSegments:Ljava/util/ArrayList;
.field private mSingleSegment:Z
.field private mThumbnailPath:Ljava/lang/String;
.field private mTimeOffset:J
.field private final mVideoArray:[B
.field private mVideoPath:Ljava/lang/String;
.field private final mVideoRecorder:Lco/vine/android/recorder/HwVineFrameRecorder;
.method public constructor <init>(Lco/vine/android/recorder/RecordingFile;Lco/vine/android/recorder/RecordSegment;Lco/vine/android/recorder/HwVineFrameRecorder;Lco/vine/android/recorder/BaseFinishProcessTask;Z)V
.registers 12
const/4 v1, 0x1
invoke-virtual {p1}, Lco/vine/android/recorder/RecordingFile;->getSession()Lco/vine/android/recorder/RecordSession;
move-result-object v0
invoke-virtual {v0}, Lco/vine/android/recorder/RecordSession;->getAudioData()Lco/vine/android/recorder/AudioArray;
move-result-object v0
invoke-virtual {v0}, Lco/vine/android/recorder/AudioArray;->getDataByte()[B
move-result-object v2
invoke-virtual {p1}, Lco/vine/android/recorder/RecordingFile;->getSession()Lco/vine/android/recorder/RecordSession;
move-result-object v0
invoke-virtual {v0}, Lco/vine/android/recorder/RecordSession;->getVideoData()[B
move-result-object v3
move-object v0, p0
move-object v4, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lco/vine/android/recorder/HwCombiningRunnable;-><init>(Z[B[BLco/vine/android/recorder/HwVineFrameRecorder;Lco/vine/android/recorder/BaseFinishProcessTask;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lco/vine/android/recorder/HwCombiningRunnable;->mSegments:Ljava/util/ArrayList;
iget-object v0, p0, Lco/vine/android/recorder/HwCombiningRunnable;->mSegments:Ljava/util/ArrayList;
invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iput-boolean v1, p0, Lco/vine/android/recorder/HwCombiningRunnable;->mSingleSegment:Z
invoke-virtual {p1}, Lco/vine/android/recorder/RecordingFile;->getSegmentVideoPath()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/HwCombiningRunnable;->mVideoPath:Ljava/lang/String;
iget-object v0, p0, Lco/vine/android/recorder/HwCombiningRunnable;->mVideoPath:Ljava/lang/String;
iput-object v0, p2, Lco/vine/android/recorder/RecordSegment;->videoPath:Ljava/lang/String;
invoke-virtual {p1}, Lco/vine/android/recorder/RecordingFile;->getSegmentThumbnailPath()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/HwCombiningRunnable;->mThumbnailPath:Ljava/lang/String;
if-eqz p5, :cond_41
invoke-virtual {p1}, Lco/vine/android/recorder/RecordingFile;->getPreviewThumbnailPath()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/HwCombiningRunnable;->mLastFrameOnlyModePath:Ljava/lang/String;
:cond_41
return-void
.end method
.method public constructor <init>(Lco/vine/android/recorder/RecordingFile;ZLco/vine/android/recorder/AudioArray;[BLjava/util/ArrayList;Lco/vine/android/recorder/HwVineFrameRecorder;Lco/vine/android/recorder/BaseFinishProcessTask;)V
.registers 14
invoke-virtual {p3}, Lco/vine/android/recorder/AudioArray;->getDataByte()[B
move-result-object v2
move-object v0, p0
move v1, p2
move-object v3, p4
move-object v4, p6
move-object v5, p7
invoke-direct/range {v0 .. v5}, Lco/vine/android/recorder/HwCombiningRunnable;-><init>(Z[B[BLco/vine/android/recorder/HwVineFrameRecorder;Lco/vine/android/recorder/BaseFinishProcessTask;)V
iput-object p5, p0, Lco/vine/android/recorder/HwCombiningRunnable;->mSegments:Ljava/util/ArrayList;
if-eqz p2, :cond_1f
invoke-virtual {p1}, Lco/vine/android/recorder/RecordingFile;->getPreviewVideoPath()Ljava/lang/String;
move-result-object v0
:goto_14
iput-object v0, p0, Lco/vine/android/recorder/HwCombiningRunnable;->mVideoPath:Ljava/lang/String;
if-eqz p2, :cond_24
invoke-virtual {p1}, Lco/vine/android/recorder/RecordingFile;->getPreviewThumbnailPath()Ljava/lang/String;
move-result-object v0
:goto_1c
iput-object v0, p0, Lco/vine/android/recorder/HwCombiningRunnable;->mThumbnailPath:Ljava/lang/String;
return-void
:cond_1f
invoke-virtual {p1}, Lco/vine/android/recorder/RecordingFile;->getVideoPath()Ljava/lang/String;
move-result-object v0
goto :goto_14
:cond_24
invoke-virtual {p1}, Lco/vine/android/recorder/RecordingFile;->getThumbnailPath()Ljava/lang/String;
move-result-object v0
goto :goto_1c
.end method
.method private constructor <init>(Z[B[BLco/vine/android/recorder/HwVineFrameRecorder;Lco/vine/android/recorder/BaseFinishProcessTask;)V
.registers 8
invoke-direct {p0}, Lco/vine/android/recorder/AbstractCombiningRunnable;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/recorder/HwCombiningRunnable;->mLastFrameOnlyModePath:Ljava/lang/String;
iput-object p2, p0, Lco/vine/android/recorder/HwCombiningRunnable;->mAudioArray:[B
iput-object p3, p0, Lco/vine/android/recorder/HwCombiningRunnable;->mVideoArray:[B
iput-boolean p1, p0, Lco/vine/android/recorder/HwCombiningRunnable;->mIsPreview:Z
iput-object p4, p0, Lco/vine/android/recorder/HwCombiningRunnable;->mVideoRecorder:Lco/vine/android/recorder/HwVineFrameRecorder;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lco/vine/android/recorder/HwCombiningRunnable;->mTimeOffset:J
iput-object p5, p0, Lco/vine/android/recorder/HwCombiningRunnable;->mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
return-void
.end method
.method public combineVideos()Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;
.registers 44
const/4 v3, -0x8
invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mSegments:Ljava/util/ArrayList;
move-object/from16 v29, v0
invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I
move-result v30
const-wide/16 v39, 0x0
const-wide/16 v13, 0x0
const-string v3, "Processing started: {}."
invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
const-wide/16 v34, 0x0
const-wide/16 v9, 0x0
const/16 v27, 0x0
if-lez v30, :cond_265
move-object/from16 v0, p0
iget-object v8, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mAudioArray:[B
const/16 v20, 0x0
:goto_29
move/from16 v0, v20
move/from16 v1, v30
if-ge v0, v1, :cond_19e
move-object/from16 v0, v29
move/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v28
check-cast v28, Lco/vine/android/recorder/RecordSegment;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v11
invoke-virtual/range {v28 .. v28}, Lco/vine/android/recorder/RecordSegment;->getCombinedAudioData()Lco/vine/android/recorder/AudioData;
move-result-object v15
:try_start_41
iget v3, v15, Lco/vine/android/recorder/AudioData;->size:I
if-lez v3, :cond_61
const-string v3, "Recording segment audio: {}, {}."
iget v4, v15, Lco/vine/android/recorder/AudioData;->start:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
iget v5, v15, Lco/vine/android/recorder/AudioData;->size:I
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-static {v3, v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mVideoRecorder:Lco/vine/android/recorder/HwVineFrameRecorder;
iget v4, v15, Lco/vine/android/recorder/AudioData;->start:I
iget v5, v15, Lco/vine/android/recorder/AudioData;->size:I
invoke-virtual {v3, v8, v4, v5}, Lco/vine/android/recorder/HwVineFrameRecorder;->recordAudio([BII)V
:try_end_61
.catch Lco/vine/android/recorder/HwVineFrameRecorder$Exception; {:try_start_41 .. :try_end_61} :catch_b6
:cond_61
:goto_61
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
sub-long/2addr v3, v11
add-long/2addr v13, v3
invoke-virtual/range {v28 .. v28}, Lco/vine/android/recorder/RecordSegment;->getVideoData()Ljava/util/ArrayList;
move-result-object v31
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mVideoArray:[B
move-object/from16 v32, v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v37
invoke-virtual/range {v28 .. v28}, Lco/vine/android/recorder/RecordSegment;->getCameraSetting()Lco/vine/android/recorder/CameraSetting;
move-result-object v3
iget v0, v3, Lco/vine/android/recorder/CameraSetting;->frameRate:I
move/from16 v19, v0
invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I
move-result v33
const-wide/16 v25, 0x0
const/16 v21, 0x0
:goto_85
move/from16 v0, v21
move/from16 v1, v33
if-ge v0, v1, :cond_14f
move-object/from16 v0, v31
move/from16 v1, v21
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v36
check-cast v36, Lco/vine/android/recorder/VideoData;
move-object/from16 v0, p0
iget-boolean v3, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mSingleSegment:Z
if-eqz v3, :cond_ad
if-nez v21, :cond_a3
move-object/from16 v0, v36
iget-wide v0, v0, Lco/vine/android/recorder/VideoData;->timestamp:J
move-wide/from16 v25, v0
:cond_a3
move-object/from16 v0, v36
iget-wide v3, v0, Lco/vine/android/recorder/VideoData;->timestamp:J
sub-long v3, v3, v25
move-object/from16 v0, v36
iput-wide v3, v0, Lco/vine/android/recorder/VideoData;->timestamp:J
:cond_ad
move-object/from16 v0, v36
iget v3, v0, Lco/vine/android/recorder/VideoData;->size:I
if-gez v3, :cond_ca
:goto_b3
add-int/lit8 v21, v21, 0x1
goto :goto_85
:catch_b6
move-exception v18
move-object/from16 v0, p0
iget-boolean v3, v0, Lco/vine/android/recorder/HwCombiningRunnable;->hasLoggedException:Z
if-eqz v3, :cond_c1
sget-boolean v3, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z
if-eqz v3, :cond_61
:cond_c1
const/4 v3, 0x1
move-object/from16 v0, p0
iput-boolean v3, v0, Lco/vine/android/recorder/HwCombiningRunnable;->hasLoggedException:Z
invoke-static/range {v18 .. v18}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
goto :goto_61
:cond_ca
move-object/from16 v0, v36
iget-wide v3, v0, Lco/vine/android/recorder/VideoData;->timestamp:J
const-wide/16 v5, 0x0
cmp-long v3, v3, v5
if-nez v3, :cond_e0
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mVideoRecorder:Lco/vine/android/recorder/HwVineFrameRecorder;
invoke-virtual {v3}, Lco/vine/android/recorder/HwVineFrameRecorder;->getTimestamp()J
move-result-wide v3
move-object/from16 v0, p0
iput-wide v3, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mTimeOffset:J
:cond_e0
move-object/from16 v0, v36
iget-wide v3, v0, Lco/vine/android/recorder/VideoData;->timestamp:J
move-object/from16 v0, p0
iget-wide v5, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mTimeOffset:J
add-long v16, v3, v5
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mVideoRecorder:Lco/vine/android/recorder/HwVineFrameRecorder;
invoke-virtual {v3}, Lco/vine/android/recorder/HwVineFrameRecorder;->getFrameNumber()I
move-result v22
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mVideoRecorder:Lco/vine/android/recorder/HwVineFrameRecorder;
invoke-virtual {v3}, Lco/vine/android/recorder/HwVineFrameRecorder;->getTimestamp()J
move-result-wide v23
sub-long v3, v16, v23
const v5, 0xf4240
div-int v5, v5, v19
int-to-long v5, v5
cmp-long v3, v3, v5
if-lez v3, :cond_14c
const-string v3, "*******Skipped frame*******"
invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mVideoRecorder:Lco/vine/android/recorder/HwVineFrameRecorder;
move-wide/from16 v0, v16
invoke-virtual {v3, v0, v1}, Lco/vine/android/recorder/HwVineFrameRecorder;->setTimestamp(J)V
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mVideoRecorder:Lco/vine/android/recorder/HwVineFrameRecorder;
invoke-virtual {v3}, Lco/vine/android/recorder/HwVineFrameRecorder;->getFrameNumber()I
move-result v22
:goto_11c
:try_start_11c
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mVideoRecorder:Lco/vine/android/recorder/HwVineFrameRecorder;
move-object/from16 v0, v36
iget v4, v0, Lco/vine/android/recorder/VideoData;->start:I
move-object/from16 v0, v36
iget v5, v0, Lco/vine/android/recorder/VideoData;->size:I
move-object/from16 v0, v32
invoke-virtual {v3, v0, v4, v5}, Lco/vine/android/recorder/HwVineFrameRecorder;->writeEncodedImage([BII)V
const-string v3, "Successfully did video frame at {}, #{}."
invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-static {v3, v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
:try_end_13a
.catch Lco/vine/android/recorder/HwVineFrameRecorder$Exception; {:try_start_11c .. :try_end_13a} :catch_13c
goto/16 :goto_b3
:catch_13c
move-exception v18
const-string v3, "Failed to record video frame at {}. #{}."
invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-static {v3, v4, v5}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
goto/16 :goto_b3
:cond_14c
move-wide/from16 v16, v23
goto :goto_11c
:cond_14f
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
sub-long v3, v3, v37
add-long v39, v39, v3
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
if-eqz v3, :cond_16a
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
mul-int/lit8 v4, v20, 0xa
div-int v4, v4, v30
add-int/lit8 v4, v4, 0x5a
invoke-virtual {v3, v4}, Lco/vine/android/recorder/BaseFinishProcessTask;->publish(I)V
:cond_16a
sget-boolean v3, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z
if-eqz v3, :cond_19a
invoke-virtual {v15}, Lco/vine/android/recorder/AudioData;->getDurationNs()J
move-result-wide v3
const-wide/16 v5, 0x3e8
div-long/2addr v3, v5
add-long/2addr v9, v3
const/16 v3, 0x3e8
div-int v3, v3, v19
mul-int v3, v3, v33
int-to-long v3, v3
add-long v34, v34, v3
const-string v3, "Recorded segment with time: audio: {}, video: {}."
invoke-virtual {v15}, Lco/vine/android/recorder/AudioData;->getDurationNs()J
move-result-wide v4
const-wide/16 v41, 0x3e8
div-long v4, v4, v41
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
const/16 v5, 0x3e8
div-int v5, v5, v19
mul-int v5, v5, v33
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-static {v3, v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
:cond_19a
add-int/lit8 v20, v20, 0x1
goto/16 :goto_29
:cond_19e
const-string v3, "Done with all segments. total time: audio: {}, video: {}."
invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
invoke-static {v3, v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
:try_start_1ab
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mVideoRecorder:Lco/vine/android/recorder/HwVineFrameRecorder;
invoke-virtual {v3}, Lco/vine/android/recorder/HwVineFrameRecorder;->stopCombining()V
const-string v3, "Video file renamed: {}, {}."
new-instance v4, Ljava/io/File;
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mVideoRecorder:Lco/vine/android/recorder/HwVineFrameRecorder;
invoke-virtual {v5}, Lco/vine/android/recorder/HwVineFrameRecorder;->getOutput()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v5, Ljava/io/File;
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mVideoPath:Ljava/lang/String;
invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
move-result v4
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mVideoPath:Ljava/lang/String;
invoke-static {v3, v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mThumbnailPath:Ljava/lang/String;
if-eqz v3, :cond_265
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mVideoRecorder:Lco/vine/android/recorder/HwVineFrameRecorder;
invoke-virtual {v3}, Lco/vine/android/recorder/HwVineFrameRecorder;->hasData()Z
move-result v3
if-eqz v3, :cond_265
move-object/from16 v0, p0
iget-boolean v3, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mSingleSegment:Z
if-eqz v3, :cond_1f5
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mLastFrameOnlyModePath:Ljava/lang/String;
if-eqz v3, :cond_24e
:cond_1f5
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mLastFrameOnlyModePath:Ljava/lang/String;
if-nez v3, :cond_249
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mThumbnailPath:Ljava/lang/String;
:goto_1ff
move-object/from16 v0, p0
iget-boolean v4, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mIsPreview:Z
invoke-static {v3, v4}, Lco/vine/android/recorder/RecordingFile;->getLastFramePathThumbnailFromThumbnailPath(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v7
:goto_207
new-instance v2, Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mVideoRecorder:Lco/vine/android/recorder/HwVineFrameRecorder;
invoke-virtual {v3}, Lco/vine/android/recorder/HwVineFrameRecorder;->getLastTimestamp()J
move-result-wide v3
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mVideoPath:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mThumbnailPath:Ljava/lang/String;
invoke-direct/range {v2 .. v7}, Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:try_end_21c
.catch Lco/vine/android/recorder/HwVineFrameRecorder$Exception; {:try_start_1ab .. :try_end_21c} :catch_250
.catch Ljava/lang/Exception; {:try_start_1ab .. :try_end_21c} :catch_25f
:goto_21c
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
if-eqz v3, :cond_22b
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
const/16 v4, 0x63
invoke-virtual {v3, v4}, Lco/vine/android/recorder/BaseFinishProcessTask;->publish(I)V
:cond_22b
const-string v3, "Time used: video: {}, audio: {}, n: {}."
const/4 v4, 0x3
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x1
invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x2
invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V
return-object v2
:try_start_249
:cond_249
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/HwCombiningRunnable;->mLastFrameOnlyModePath:Ljava/lang/String;
:try_end_24d
.catch Lco/vine/android/recorder/HwVineFrameRecorder$Exception; {:try_start_249 .. :try_end_24d} :catch_250
.catch Ljava/lang/Exception; {:try_start_249 .. :try_end_24d} :catch_25f
goto :goto_1ff
:cond_24e
const/4 v7, 0x0
goto :goto_207
:catch_250
move-exception v18
const-string v3, "Error flushing..."
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
aput-object v18, v4, v5
invoke-static {v3, v4}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
move-object/from16 v2, v27
goto :goto_21c
:catch_25f
move-exception v18
const-string v3, "Failed to generate thumbnail."
invoke-static {v3}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
:cond_265
move-object/from16 v2, v27
goto :goto_21c
.end method