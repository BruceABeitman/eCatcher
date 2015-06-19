.class public Lco/vine/android/recorder/SwCombiningRunnable;
.super Lco/vine/android/recorder/AbstractCombiningRunnable;
.source "SwCombiningRunnable.java"
.field private errorCount:I
.field private hasLoggedException:Z
.field private final mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
.field private final mAudioArray:[S
.field private mBitmap:Landroid/graphics/Bitmap;
.field private mLastFrameOnlyModePath:Ljava/lang/String;
.field private mLastFramePath:Ljava/lang/String;
.field private mSegments:Ljava/util/ArrayList;
.field private mSingleSegment:Z
.field private mTempFrame:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.field private mThumbnailPath:Ljava/lang/String;
.field private mTimeOffset:J
.field private final mVideoArray:[B
.field private mVideoPath:Ljava/lang/String;
.field private final mVideoRecorder:Lco/vine/android/recorder/SwVineFrameRecorder;
.field public mVideoSize:I
.method private constructor <init>(Lco/vine/android/recorder/AudioArray;[BLco/vine/android/recorder/SwVineFrameRecorder;Lco/vine/android/recorder/BaseFinishProcessTask;Landroid/graphics/Bitmap;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
.registers 9
const/4 v0, 0x0
invoke-direct {p0}, Lco/vine/android/recorder/AbstractCombiningRunnable;-><init>()V
const/4 v1, 0x0
iput v1, p0, Lco/vine/android/recorder/SwCombiningRunnable;->errorCount:I
iput-object v0, p0, Lco/vine/android/recorder/SwCombiningRunnable;->mLastFrameOnlyModePath:Ljava/lang/String;
if-eqz p1, :cond_f
invoke-virtual {p1}, Lco/vine/android/recorder/AudioArray;->getDataShort()[S
move-result-object v0
:cond_f
iput-object v0, p0, Lco/vine/android/recorder/SwCombiningRunnable;->mAudioArray:[S
iput-object p2, p0, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoArray:[B
iput-object p5, p0, Lco/vine/android/recorder/SwCombiningRunnable;->mBitmap:Landroid/graphics/Bitmap;
iput-object p6, p0, Lco/vine/android/recorder/SwCombiningRunnable;->mTempFrame:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
iput-object p3, p0, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoRecorder:Lco/vine/android/recorder/SwVineFrameRecorder;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lco/vine/android/recorder/SwCombiningRunnable;->mTimeOffset:J
iput-object p4, p0, Lco/vine/android/recorder/SwCombiningRunnable;->mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
return-void
.end method
.method public constructor <init>(Lco/vine/android/recorder/RecordingFile;Lco/vine/android/recorder/RecordSegment;Lco/vine/android/recorder/SwVineFrameRecorder;Lco/vine/android/recorder/BaseFinishProcessTask;Landroid/graphics/Bitmap;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)V
.registers 16
const/4 v7, 0x1
invoke-virtual {p1}, Lco/vine/android/recorder/RecordingFile;->getSession()Lco/vine/android/recorder/RecordSession;
move-result-object v0
invoke-virtual {v0}, Lco/vine/android/recorder/RecordSession;->getAudioData()Lco/vine/android/recorder/AudioArray;
move-result-object v1
invoke-virtual {p1}, Lco/vine/android/recorder/RecordingFile;->getSession()Lco/vine/android/recorder/RecordSession;
move-result-object v0
invoke-virtual {v0}, Lco/vine/android/recorder/RecordSession;->getVideoData()[B
move-result-object v2
move-object v0, p0
move-object v3, p3
move-object v4, p4
move-object v5, p5
move-object v6, p6
invoke-direct/range {v0 .. v6}, Lco/vine/android/recorder/SwCombiningRunnable;-><init>(Lco/vine/android/recorder/AudioArray;[BLco/vine/android/recorder/SwVineFrameRecorder;Lco/vine/android/recorder/BaseFinishProcessTask;Landroid/graphics/Bitmap;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lco/vine/android/recorder/SwCombiningRunnable;->mSegments:Ljava/util/ArrayList;
iget-object v0, p0, Lco/vine/android/recorder/SwCombiningRunnable;->mSegments:Ljava/util/ArrayList;
invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iput-boolean v7, p0, Lco/vine/android/recorder/SwCombiningRunnable;->mSingleSegment:Z
invoke-virtual {p1}, Lco/vine/android/recorder/RecordingFile;->getSegmentVideoPath()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoPath:Ljava/lang/String;
iget-object v0, p0, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoPath:Ljava/lang/String;
iput-object v0, p2, Lco/vine/android/recorder/RecordSegment;->videoPath:Ljava/lang/String;
invoke-virtual {p1}, Lco/vine/android/recorder/RecordingFile;->getSegmentThumbnailPath()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/SwCombiningRunnable;->mThumbnailPath:Ljava/lang/String;
if-eqz p7, :cond_3f
invoke-virtual {p1}, Lco/vine/android/recorder/RecordingFile;->getPreviewThumbnailPath()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/SwCombiningRunnable;->mLastFrameOnlyModePath:Ljava/lang/String;
:cond_3f
invoke-direct {p0, v7}, Lco/vine/android/recorder/SwCombiningRunnable;->initLastFramePath(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/SwCombiningRunnable;->mLastFramePath:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lco/vine/android/recorder/RecordingFile;ZLco/vine/android/recorder/AudioArray;[BLjava/util/ArrayList;Lco/vine/android/recorder/SwVineFrameRecorder;Lco/vine/android/recorder/BaseFinishProcessTask;Landroid/graphics/Bitmap;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
.registers 20
if-eqz p2, :cond_22
invoke-virtual {p1}, Lco/vine/android/recorder/RecordingFile;->getPreviewVideoPath()Ljava/lang/String;
move-result-object v1
:goto_6
if-eqz p2, :cond_27
invoke-virtual {p1}, Lco/vine/android/recorder/RecordingFile;->getPreviewThumbnailPath()Ljava/lang/String;
move-result-object v2
:goto_c
move-object v0, p0
move-object v3, p3
move-object v4, p4
move-object v5, p5
move-object/from16 v6, p6
move-object/from16 v7, p7
move-object/from16 v8, p8
move-object/from16 v9, p9
invoke-direct/range {v0 .. v9}, Lco/vine/android/recorder/SwCombiningRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;Lco/vine/android/recorder/AudioArray;[BLjava/util/ArrayList;Lco/vine/android/recorder/SwVineFrameRecorder;Lco/vine/android/recorder/BaseFinishProcessTask;Landroid/graphics/Bitmap;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
invoke-direct {p0, p2}, Lco/vine/android/recorder/SwCombiningRunnable;->initLastFramePath(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/SwCombiningRunnable;->mLastFramePath:Ljava/lang/String;
return-void
:cond_22
invoke-virtual {p1}, Lco/vine/android/recorder/RecordingFile;->getVideoPath()Ljava/lang/String;
move-result-object v1
goto :goto_6
:cond_27
invoke-virtual {p1}, Lco/vine/android/recorder/RecordingFile;->getThumbnailPath()Ljava/lang/String;
move-result-object v2
goto :goto_c
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lco/vine/android/recorder/AudioArray;[BLjava/util/ArrayList;Lco/vine/android/recorder/SwVineFrameRecorder;Lco/vine/android/recorder/BaseFinishProcessTask;Landroid/graphics/Bitmap;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
.registers 17
move-object v0, p0
move-object v1, p3
move-object v2, p4
move-object v3, p6
move-object v4, p7
move-object v5, p8
move-object/from16 v6, p9
invoke-direct/range {v0 .. v6}, Lco/vine/android/recorder/SwCombiningRunnable;-><init>(Lco/vine/android/recorder/AudioArray;[BLco/vine/android/recorder/SwVineFrameRecorder;Lco/vine/android/recorder/BaseFinishProcessTask;Landroid/graphics/Bitmap;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
iput-object p5, p0, Lco/vine/android/recorder/SwCombiningRunnable;->mSegments:Ljava/util/ArrayList;
iput-object p1, p0, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoPath:Ljava/lang/String;
iput-object p2, p0, Lco/vine/android/recorder/SwCombiningRunnable;->mThumbnailPath:Ljava/lang/String;
return-void
.end method
.method private initLastFramePath(Z)Ljava/lang/String;
.registers 4
iget-boolean v1, p0, Lco/vine/android/recorder/SwCombiningRunnable;->mSingleSegment:Z
if-eqz v1, :cond_8
iget-object v1, p0, Lco/vine/android/recorder/SwCombiningRunnable;->mLastFrameOnlyModePath:Ljava/lang/String;
if-eqz v1, :cond_16
:cond_8
iget-object v1, p0, Lco/vine/android/recorder/SwCombiningRunnable;->mLastFrameOnlyModePath:Ljava/lang/String;
if-nez v1, :cond_13
iget-object v1, p0, Lco/vine/android/recorder/SwCombiningRunnable;->mThumbnailPath:Ljava/lang/String;
:goto_e
invoke-static {v1, p1}, Lco/vine/android/recorder/RecordingFile;->getLastFramePathThumbnailFromThumbnailPath(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v0
:goto_12
return-object v0
:cond_13
iget-object v1, p0, Lco/vine/android/recorder/SwCombiningRunnable;->mLastFrameOnlyModePath:Ljava/lang/String;
goto :goto_e
:cond_16
const/4 v0, 0x0
goto :goto_12
.end method
.method private saveThumbnail(III)V
.registers 26
:try_start_0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoRecorder:Lco/vine/android/recorder/SwVineFrameRecorder;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lco/vine/android/recorder/SwVineFrameRecorder;->hasData()Z
move-result v17
if-eqz v17, :cond_2c9
move-object/from16 v0, p0
iget-object v10, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mLastFramePath:Ljava/lang/String;
:try_end_10
.catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_10} :catch_325
const/4 v14, 0x0
const/16 v16, 0x0
:try_start_13
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v12
new-instance v7, Lco/vine/android/recorder/VineFrameGrabber;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoPath:Ljava/lang/String;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-direct {v7, v0}, Lco/vine/android/recorder/VineFrameGrabber;-><init>(Ljava/lang/String;)V
invoke-virtual {v7}, Lco/vine/android/recorder/VineFrameGrabber;->start()V
const/4 v8, 0x0
:cond_28
:goto_28
invoke-virtual {v7}, Lco/vine/android/recorder/VineFrameGrabber;->grab()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move-result-object v6
if-eqz v6, :cond_7f
add-int/lit8 v8, v8, 0x1
const/16 v17, 0x2
move/from16 v0, v17
if-eq v8, v0, :cond_3e
const/16 v17, 0x1
move/from16 v0, p1
move/from16 v1, v17
if-ne v0, v1, :cond_7d
:cond_3e
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mTempFrame:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move-object/from16 v17, v0
const/16 v18, 0x2
move-object/from16 v0, v17
move/from16 v1, v18
invoke-static {v6, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCvtColor(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mBitmap:Landroid/graphics/Bitmap;
move-object/from16 v17, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mTempFrame:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;
move-result-object v18
invoke-virtual/range {v17 .. v18}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mBitmap:Landroid/graphics/Bitmap;
move-object/from16 v17, v0
sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v19, 0x4b
new-instance v20, Ljava/io/FileOutputStream;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mThumbnailPath:Ljava/lang/String;
move-object/from16 v21, v0
invoke-direct/range {v20 .. v21}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v17 .. v20}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
const-string v17, "First Thumbnail generated."
invoke-static/range {v17 .. v17}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V
:cond_7d
if-nez v10, :cond_2ca
:cond_7f
invoke-virtual {v7}, Lco/vine/android/recorder/VineFrameGrabber;->stop()V
invoke-virtual {v7}, Lco/vine/android/recorder/VineFrameGrabber;->release()V
const/16 v16, 0x1
const-string v17, "Grabbing using openCV took {}ms."
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v18
sub-long v18, v18, v12
invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v18
invoke-static/range {v17 .. v18}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
:try_end_96
.catch Ljava/lang/ExceptionInInitializerError; {:try_start_13 .. :try_end_96} :catch_311
.catch Lco/vine/android/recorder/VineFrameGrabber$Exception; {:try_start_13 .. :try_end_96} :catch_311
.catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_96} :catch_325
if-eqz v14, :cond_110
:try_start_98
new-instance v15, Ljava/io/File;
const-string v17, "firstFrame.jpg"
move-object/from16 v0, v17
invoke-direct {v15, v14, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
new-instance v17, Ljava/io/File;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mThumbnailPath:Ljava/lang/String;
move-object/from16 v18, v0
invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v17
invoke-static {v0, v15}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v17
const-string v18, "/storage/emulated/0/"
const-string v19, "/sdcard/"
invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v11
new-instance v17, Ljava/lang/StringBuilder;
invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V
const-string v18, "Thumbnail copied to "
invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
move-object/from16 v0, v17
invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v17
invoke-static/range {v17 .. v17}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
if-eqz v10, :cond_110
new-instance v9, Ljava/io/File;
const-string v17, "lastFrame.jpg"
move-object/from16 v0, v17
invoke-direct {v9, v14, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
new-instance v17, Ljava/io/File;
move-object/from16 v0, v17
invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v17
invoke-static {v0, v9}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v17
const-string v18, "/storage/emulated/0/"
const-string v19, "/sdcard/"
invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v11
new-instance v17, Ljava/lang/StringBuilder;
invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V
const-string v18, "Last Frame copied to "
invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
move-object/from16 v0, v17
invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v17
invoke-static/range {v17 .. v17}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
:goto_110
:try_end_110
.catch Ljava/io/IOException; {:try_start_98 .. :try_end_110} :catch_338
.catch Ljava/lang/ExceptionInInitializerError; {:try_start_98 .. :try_end_110} :catch_311
.catch Lco/vine/android/recorder/VineFrameGrabber$Exception; {:try_start_98 .. :try_end_110} :catch_311
.catch Ljava/io/FileNotFoundException; {:try_start_98 .. :try_end_110} :catch_325
:cond_110
if-nez v16, :cond_21d
:try_start_112
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v12
move/from16 v0, p2
int-to-double v0, v0
move-wide/from16 v17, v0
const-wide/high16 v19, 0x3ff0
mul-double v17, v17, v19
move/from16 v0, p3
int-to-double v0, v0
move-wide/from16 v19, v0
div-double v17, v17, v19
const-wide v19, 0x408f400000000000L
mul-double v17, v17, v19
const-wide v19, 0x408f400000000000L
mul-double v17, v17, v19
move-wide/from16 v0, v17
double-to-long v3, v0
const-string v17, "Use duration: {}."
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v18
invoke-static/range {v17 .. v18}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoPath:Ljava/lang/String;
move-object/from16 v18, v0
if-eqz v10, :cond_342
const/16 v17, 0x2
move/from16 v0, v17
new-array v0, v0, [J
move-object/from16 v17, v0
const/16 v19, 0x0
const-wide/16 v20, 0x0
aput-wide v20, v17, v19
const/16 v19, 0x1
aput-wide v3, v17, v19
:goto_15a
move-object/from16 v0, v18
move-object/from16 v1, v17
invoke-static {v0, v1}, Lco/vine/android/util/MediaUtil;->getVideoFrames(Ljava/lang/String;[J)[Landroid/graphics/Bitmap;
move-result-object v2
const-string v17, "Grabbing using MediaUtil took {}ms."
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v18
sub-long v18, v18, v12
invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v18
invoke-static/range {v17 .. v18}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
if-eqz v2, :cond_21d
const/16 v17, 0x0
aget-object v17, v2, v17
sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v19, 0x4b
new-instance v20, Ljava/io/FileOutputStream;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mThumbnailPath:Ljava/lang/String;
move-object/from16 v21, v0
invoke-direct/range {v20 .. v21}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v17 .. v20}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
if-eqz v10, :cond_1a3
const/16 v17, 0x1
aget-object v17, v2, v17
if-eqz v17, :cond_1a3
const/16 v17, 0x1
aget-object v17, v2, v17
sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v19, 0x4b
new-instance v20, Ljava/io/FileOutputStream;
move-object/from16 v0, v20
invoke-direct {v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v17 .. v20}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
:cond_1a3
:try_end_1a3
.catch Ljava/io/FileNotFoundException; {:try_start_112 .. :try_end_1a3} :catch_325
if-eqz v14, :cond_21d
:try_start_1a5
new-instance v15, Ljava/io/File;
const-string v17, "firstFrame2.jpg"
move-object/from16 v0, v17
invoke-direct {v15, v14, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
new-instance v17, Ljava/io/File;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mThumbnailPath:Ljava/lang/String;
move-object/from16 v18, v0
invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v17
invoke-static {v0, v15}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v17
const-string v18, "/storage/emulated/0/"
const-string v19, "/sdcard/"
invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v11
new-instance v17, Ljava/lang/StringBuilder;
invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V
const-string v18, "Thumbnail copied to "
invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
move-object/from16 v0, v17
invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v17
invoke-static/range {v17 .. v17}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
if-eqz v10, :cond_21d
new-instance v9, Ljava/io/File;
const-string v17, "lastFrame2.jpg"
move-object/from16 v0, v17
invoke-direct {v9, v14, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
new-instance v17, Ljava/io/File;
move-object/from16 v0, v17
invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v17
invoke-static {v0, v9}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v17
const-string v18, "/storage/emulated/0/"
const-string v19, "/sdcard/"
invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v11
new-instance v17, Ljava/lang/StringBuilder;
invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V
const-string v18, "Last Frame copied to "
invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
move-object/from16 v0, v17
invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v17
invoke-static/range {v17 .. v17}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
:cond_21d
:try_end_21d
.catch Ljava/io/IOException; {:try_start_1a5 .. :try_end_21d} :catch_352
.catch Ljava/io/FileNotFoundException; {:try_start_1a5 .. :try_end_21d} :catch_325
:try_start_21d
:goto_21d
new-instance v17, Ljava/io/File;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mThumbnailPath:Ljava/lang/String;
move-object/from16 v18, v0
invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z
move-result v17
if-nez v17, :cond_273
const-string v17, "Retry generating thumbnail."
invoke-static/range {v17 .. v17}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoPath:Ljava/lang/String;
move-object/from16 v17, v0
const/16 v18, 0x1
move/from16 v0, v18
new-array v0, v0, [J
move-object/from16 v18, v0
const/16 v19, 0x0
const-wide/16 v20, 0x0
aput-wide v20, v18, v19
invoke-static/range {v17 .. v18}, Lco/vine/android/util/MediaUtil;->getVideoFrames(Ljava/lang/String;[J)[Landroid/graphics/Bitmap;
move-result-object v2
if-eqz v2, :cond_35c
array-length v0, v2
move/from16 v17, v0
const/16 v18, 0x1
move/from16 v0, v17
move/from16 v1, v18
if-ne v0, v1, :cond_35c
const/16 v17, 0x0
aget-object v17, v2, v17
sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v19, 0x4b
new-instance v20, Ljava/io/FileOutputStream;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mThumbnailPath:Ljava/lang/String;
move-object/from16 v21, v0
invoke-direct/range {v20 .. v21}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v17 .. v20}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
const-string v17, "First Thumbnail generated."
invoke-static/range {v17 .. v17}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V
:goto_273
:try_start_273
:cond_273
:try_end_273
.catch Ljava/lang/Exception; {:try_start_21d .. :try_end_273} :catch_362
.catch Ljava/io/FileNotFoundException; {:try_start_21d .. :try_end_273} :catch_325
new-instance v17, Ljava/io/File;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mThumbnailPath:Ljava/lang/String;
move-object/from16 v18, v0
invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z
move-result v17
if-nez v17, :cond_2c9
const-string v17, "Retry generating thumbnail."
invoke-static/range {v17 .. v17}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoPath:Ljava/lang/String;
move-object/from16 v17, v0
const/16 v18, 0x1
move/from16 v0, v18
new-array v0, v0, [J
move-object/from16 v18, v0
const/16 v19, 0x0
const-wide/16 v20, 0x0
aput-wide v20, v18, v19
invoke-static/range {v17 .. v18}, Lco/vine/android/util/MediaUtil;->getVideoFrames(Ljava/lang/String;[J)[Landroid/graphics/Bitmap;
move-result-object v2
if-eqz v2, :cond_36a
array-length v0, v2
move/from16 v17, v0
const/16 v18, 0x1
move/from16 v0, v17
move/from16 v1, v18
if-ne v0, v1, :cond_36a
const/16 v17, 0x0
aget-object v17, v2, v17
sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v19, 0x4b
new-instance v20, Ljava/io/FileOutputStream;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mThumbnailPath:Ljava/lang/String;
move-object/from16 v21, v0
invoke-direct/range {v20 .. v21}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v17 .. v20}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
const-string v17, "First Thumbnail generated."
invoke-static/range {v17 .. v17}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V
:cond_2c9
:goto_2c9
:try_end_2c9
.catch Ljava/lang/Exception; {:try_start_273 .. :try_end_2c9} :catch_370
.catch Ljava/io/FileNotFoundException; {:try_start_273 .. :try_end_2c9} :catch_325
return-void
:cond_2ca
move/from16 v0, p1
if-gt v0, v8, :cond_28
const/16 v17, 0x1
move/from16 v0, v17
if-eq v8, v0, :cond_28
:try_start_2d4
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mTempFrame:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move-object/from16 v17, v0
const/16 v18, 0x2
move-object/from16 v0, v17
move/from16 v1, v18
invoke-static {v6, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCvtColor(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mBitmap:Landroid/graphics/Bitmap;
move-object/from16 v17, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mTempFrame:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;
move-result-object v18
invoke-virtual/range {v17 .. v18}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mBitmap:Landroid/graphics/Bitmap;
move-object/from16 v17, v0
sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v19, 0x4b
new-instance v20, Ljava/io/FileOutputStream;
move-object/from16 v0, v20
invoke-direct {v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v17 .. v20}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
const-string v17, "Last Thumbnail generated."
invoke-static/range {v17 .. v17}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V
:try_end_30f
.catch Ljava/lang/ExceptionInInitializerError; {:try_start_2d4 .. :try_end_30f} :catch_311
.catch Lco/vine/android/recorder/VineFrameGrabber$Exception; {:try_start_2d4 .. :try_end_30f} :catch_311
.catch Ljava/io/FileNotFoundException; {:try_start_2d4 .. :try_end_30f} :catch_325
goto/16 :goto_28
:catch_311
move-exception v5
:try_start_312
const-string v17, "Error creating thumbnail using default method..."
const/16 v18, 0x1
move/from16 v0, v18
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v18, v0
const/16 v19, 0x0
aput-object v5, v18, v19
invoke-static/range {v17 .. v18}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
:try_end_323
.catch Ljava/io/FileNotFoundException; {:try_start_312 .. :try_end_323} :catch_325
goto/16 :goto_110
:catch_325
move-exception v5
const-string v17, "Error saving thumbnail..."
const/16 v18, 0x1
move/from16 v0, v18
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v18, v0
const/16 v19, 0x0
aput-object v5, v18, v19
invoke-static/range {v17 .. v18}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_2c9
:catch_338
move-exception v5
:try_start_339
const-string v17, "Failed to copy."
move-object/from16 v0, v17
invoke-static {v0, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_340
.catch Ljava/lang/ExceptionInInitializerError; {:try_start_339 .. :try_end_340} :catch_311
.catch Lco/vine/android/recorder/VineFrameGrabber$Exception; {:try_start_339 .. :try_end_340} :catch_311
.catch Ljava/io/FileNotFoundException; {:try_start_339 .. :try_end_340} :catch_325
goto/16 :goto_110
:cond_342
const/16 v17, 0x1
:try_start_344
move/from16 v0, v17
new-array v0, v0, [J
move-object/from16 v17, v0
const/16 v19, 0x0
const-wide/16 v20, 0x0
aput-wide v20, v17, v19
goto/16 :goto_15a
:catch_352
move-exception v5
const-string v17, "Failed to copy."
move-object/from16 v0, v17
invoke-static {v0, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_35a
.catch Ljava/io/FileNotFoundException; {:try_start_344 .. :try_end_35a} :catch_325
goto/16 :goto_21d
:cond_35c
:try_start_35c
new-instance v17, Ljava/lang/IllegalStateException;
invoke-direct/range {v17 .. v17}, Ljava/lang/IllegalStateException;-><init>()V
throw v17
:try_end_362
.catch Ljava/lang/Exception; {:try_start_35c .. :try_end_362} :catch_362
.catch Ljava/io/FileNotFoundException; {:try_start_35c .. :try_end_362} :catch_325
:catch_362
move-exception v5
:try_start_363
const-string v17, "Failed to generate thumbnail."
invoke-static/range {v17 .. v17}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
:try_end_368
.catch Ljava/io/FileNotFoundException; {:try_start_363 .. :try_end_368} :catch_325
goto/16 :goto_273
:try_start_36a
:cond_36a
new-instance v17, Ljava/lang/IllegalStateException;
invoke-direct/range {v17 .. v17}, Ljava/lang/IllegalStateException;-><init>()V
throw v17
:try_end_370
.catch Ljava/lang/Exception; {:try_start_36a .. :try_end_370} :catch_370
.catch Ljava/io/FileNotFoundException; {:try_start_36a .. :try_end_370} :catch_325
:catch_370
move-exception v5
:try_start_371
const-string v17, "Failed to generate thumbnail."
invoke-static/range {v17 .. v17}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
:try_end_376
.catch Ljava/io/FileNotFoundException; {:try_start_371 .. :try_end_376} :catch_325
goto/16 :goto_2c9
.end method
.method public combineVideos()Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;
.registers 51
const/16 v45, -0x8
invoke-static/range {v45 .. v45}, Landroid/os/Process;->setThreadPriority(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mSegments:Ljava/util/ArrayList;
move-object/from16 v31, v0
invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I
move-result v32
const-wide/16 v43, 0x0
const-wide/16 v9, 0x0
const/16 v34, 0x0
const-string v45, "Processing started: {}."
invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v46
invoke-static/range {v45 .. v46}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
const/high16 v45, 0x3f80
move/from16 v0, v32
int-to-float v0, v0
move/from16 v46, v0
div-float v45, v45, v46
const/high16 v46, 0x40a0
mul-float v22, v45, v46
const-wide/16 v38, 0x0
const-wide/16 v5, 0x0
const/16 v24, 0x0
const/16 v20, 0x1e
if-lez v32, :cond_3ea
const/16 v21, 0x0
:goto_37
move/from16 v0, v21
move/from16 v1, v32
if-ge v0, v1, :cond_385
move-object/from16 v0, v31
move/from16 v1, v21
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v30
check-cast v30, Lco/vine/android/recorder/RecordSegment;
move/from16 v0, v21
int-to-float v0, v0
move/from16 v45, v0
move/from16 v0, v32
int-to-float v0, v0
move/from16 v46, v0
div-float v45, v45, v46
const/high16 v46, 0x4120
mul-float v45, v45, v46
move/from16 v0, v45
float-to-int v0, v0
move/from16 v45, v0
add-int/lit8 v29, v45, 0x5a
const/4 v14, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mAudioArray:[S
move-object/from16 v45, v0
if-eqz v45, :cond_d0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v7
invoke-virtual/range {v30 .. v30}, Lco/vine/android/recorder/RecordSegment;->getCombinedAudioData()Lco/vine/android/recorder/AudioData;
move-result-object v14
:try_start_6f
iget v0, v14, Lco/vine/android/recorder/AudioData;->size:I
move/from16 v45, v0
if-lez v45, :cond_c8
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mAudioArray:[S
move-object/from16 v45, v0
iget v0, v14, Lco/vine/android/recorder/AudioData;->start:I
move/from16 v46, v0
iget v0, v14, Lco/vine/android/recorder/AudioData;->size:I
move/from16 v47, v0
invoke-static/range {v45 .. v47}, Ljava/nio/ShortBuffer;->wrap([SII)Ljava/nio/ShortBuffer;
move-result-object v12
move-object/from16 v0, p0
iget-boolean v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mSingleSegment:Z
move/from16 v45, v0
if-eqz v45, :cond_162
iget v0, v14, Lco/vine/android/recorder/AudioData;->size:I
move/from16 v45, v0
move/from16 v0, v45
new-array v13, v0, [S
invoke-virtual {v12, v13}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;
invoke-static {v13}, Ljava/nio/ShortBuffer;->wrap([S)Ljava/nio/ShortBuffer;
move-result-object v11
:goto_9e
const-string v45, "Recording segment audio: {}, {}."
iget v0, v14, Lco/vine/android/recorder/AudioData;->start:I
move/from16 v46, v0
invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v46
iget v0, v14, Lco/vine/android/recorder/AudioData;->size:I
move/from16 v47, v0
invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v47
invoke-static/range {v45 .. v47}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoRecorder:Lco/vine/android/recorder/SwVineFrameRecorder;
move-object/from16 v45, v0
const/16 v46, 0x1
move/from16 v0, v46
new-array v0, v0, [Ljava/nio/Buffer;
move-object/from16 v46, v0
const/16 v47, 0x0
aput-object v11, v46, v47
invoke-virtual/range {v45 .. v46}, Lco/vine/android/recorder/SwVineFrameRecorder;->record([Ljava/nio/Buffer;)Z
:try_end_c8
.catch Lco/vine/android/recorder/SwVineFrameRecorder$Exception; {:try_start_6f .. :try_end_c8} :catch_165
:goto_c8
:cond_c8
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v45
sub-long v45, v45, v7
add-long v9, v9, v45
:cond_d0
invoke-virtual/range {v30 .. v30}, Lco/vine/android/recorder/RecordSegment;->getVideoData()Ljava/util/ArrayList;
move-result-object v35
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoArray:[B
move-object/from16 v36, v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v41
invoke-virtual/range {v30 .. v30}, Lco/vine/android/recorder/RecordSegment;->getCameraSetting()Lco/vine/android/recorder/CameraSetting;
move-result-object v45
move-object/from16 v0, v45
iget v0, v0, Lco/vine/android/recorder/CameraSetting;->frameRate:I
move/from16 v20, v0
invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I
move-result v37
const-wide/16 v27, 0x0
const/16 v45, 0x0
move/from16 v0, v45
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoSize:I
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
move-object/from16 v45, v0
if-eqz v45, :cond_113
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
move-object/from16 v45, v0
move/from16 v0, v29
int-to-float v0, v0
move/from16 v46, v0
add-float v46, v46, v22
move/from16 v0, v46
float-to-int v0, v0
move/from16 v46, v0
invoke-virtual/range {v45 .. v46}, Lco/vine/android/recorder/BaseFinishProcessTask;->publish(I)V
:cond_113
const/16 v23, 0x0
:goto_115
move/from16 v0, v23
move/from16 v1, v37
if-ge v0, v1, :cond_31f
move-object/from16 v0, v35
move/from16 v1, v23
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v40
check-cast v40, Lco/vine/android/recorder/VideoData;
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoSize:I
move/from16 v45, v0
move-object/from16 v0, v40
iget v0, v0, Lco/vine/android/recorder/VideoData;->size:I
move/from16 v46, v0
add-int v45, v45, v46
move/from16 v0, v45
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoSize:I
move-object/from16 v0, p0
iget-boolean v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mSingleSegment:Z
move/from16 v45, v0
if-eqz v45, :cond_157
if-nez v23, :cond_149
move-object/from16 v0, v40
iget-wide v0, v0, Lco/vine/android/recorder/VideoData;->timestamp:J
move-wide/from16 v27, v0
:cond_149
move-object/from16 v0, v40
iget-wide v0, v0, Lco/vine/android/recorder/VideoData;->timestamp:J
move-wide/from16 v45, v0
sub-long v45, v45, v27
move-wide/from16 v0, v45
move-object/from16 v2, v40
iput-wide v0, v2, Lco/vine/android/recorder/VideoData;->timestamp:J
:cond_157
move-object/from16 v0, v40
iget v0, v0, Lco/vine/android/recorder/VideoData;->size:I
move/from16 v45, v0
if-gez v45, :cond_17f
:goto_15f
:cond_15f
add-int/lit8 v23, v23, 0x1
goto :goto_115
:cond_162
move-object v11, v12
goto/16 :goto_9e
:catch_165
move-exception v17
move-object/from16 v0, p0
iget-boolean v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->hasLoggedException:Z
move/from16 v45, v0
if-eqz v45, :cond_172
sget-boolean v45, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z
if-eqz v45, :cond_c8
:cond_172
const/16 v45, 0x1
move/from16 v0, v45
move-object/from16 v1, p0
iput-boolean v0, v1, Lco/vine/android/recorder/SwCombiningRunnable;->hasLoggedException:Z
invoke-static/range {v17 .. v17}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
goto/16 :goto_c8
:cond_17f
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoRecorder:Lco/vine/android/recorder/SwVineFrameRecorder;
move-object/from16 v45, v0
move/from16 v0, v20
int-to-double v0, v0
move-wide/from16 v46, v0
invoke-virtual/range {v45 .. v47}, Lco/vine/android/recorder/SwVineFrameRecorder;->setFrameRate(D)V
move-object/from16 v0, v40
iget-wide v0, v0, Lco/vine/android/recorder/VideoData;->timestamp:J
move-wide/from16 v45, v0
const-wide/16 v47, 0x0
cmp-long v45, v45, v47
if-nez v45, :cond_1a9
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoRecorder:Lco/vine/android/recorder/SwVineFrameRecorder;
move-object/from16 v45, v0
invoke-virtual/range {v45 .. v45}, Lco/vine/android/recorder/SwVineFrameRecorder;->getTimestamp()J
move-result-wide v45
move-wide/from16 v0, v45
move-object/from16 v2, p0
iput-wide v0, v2, Lco/vine/android/recorder/SwCombiningRunnable;->mTimeOffset:J
:cond_1a9
move-object/from16 v0, v40
iget-wide v0, v0, Lco/vine/android/recorder/VideoData;->timestamp:J
move-wide/from16 v45, v0
move-object/from16 v0, p0
iget-wide v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mTimeOffset:J
move-wide/from16 v47, v0
add-long v15, v45, v47
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoRecorder:Lco/vine/android/recorder/SwVineFrameRecorder;
move-object/from16 v45, v0
invoke-virtual/range {v45 .. v45}, Lco/vine/android/recorder/SwVineFrameRecorder;->getFrameNumber()I
move-result v24
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoRecorder:Lco/vine/android/recorder/SwVineFrameRecorder;
move-object/from16 v45, v0
invoke-virtual/range {v45 .. v45}, Lco/vine/android/recorder/SwVineFrameRecorder;->getTimestamp()J
move-result-wide v25
sub-long v45, v15, v25
const v47, 0xf4240
div-int v47, v47, v20
move/from16 v0, v47
int-to-long v0, v0
move-wide/from16 v47, v0
cmp-long v45, v45, v47
if-lez v45, :cond_252
const-string v45, "*******Skipped frame*******"
invoke-static/range {v45 .. v45}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoRecorder:Lco/vine/android/recorder/SwVineFrameRecorder;
move-object/from16 v45, v0
move-object/from16 v0, v45
move-wide v1, v15
invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/SwVineFrameRecorder;->setTimestampAndGetFrameNumber(J)I
move-result v24
:goto_1ed
:try_start_1ed
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoRecorder:Lco/vine/android/recorder/SwVineFrameRecorder;
move-object/from16 v45, v0
move-object/from16 v0, v40
iget v0, v0, Lco/vine/android/recorder/VideoData;->start:I
move/from16 v46, v0
move-object/from16 v0, v40
iget v0, v0, Lco/vine/android/recorder/VideoData;->size:I
move/from16 v47, v0
move-object/from16 v0, v40
iget-boolean v0, v0, Lco/vine/android/recorder/VideoData;->keyFrame:Z
move/from16 v48, v0
move-object/from16 v0, v45
move-object/from16 v1, v36
move/from16 v2, v46
move/from16 v3, v47
move/from16 v4, v48
invoke-virtual {v0, v1, v2, v3, v4}, Lco/vine/android/recorder/SwVineFrameRecorder;->writeEncodedImage([BIIZ)V
add-int/lit8 v34, v34, 0x1
const-string v45, "Successfully did video frame at {}, #{}."
invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v46
invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v47
invoke-static/range {v45 .. v47}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
:try_end_221
.catch Lco/vine/android/recorder/SwVineFrameRecorder$Exception; {:try_start_1ed .. :try_end_221} :catch_255
:goto_221
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
move-object/from16 v45, v0
if-eqz v45, :cond_15f
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
move-object/from16 v45, v0
move/from16 v0, v29
int-to-float v0, v0
move/from16 v46, v0
add-int/lit8 v47, v23, 0x1
move/from16 v0, v47
int-to-float v0, v0
move/from16 v47, v0
mul-float v47, v47, v22
move/from16 v0, v37
int-to-float v0, v0
move/from16 v48, v0
div-float v47, v47, v48
add-float v47, v47, v22
add-float v46, v46, v47
move/from16 v0, v46
float-to-int v0, v0
move/from16 v46, v0
invoke-virtual/range {v45 .. v46}, Lco/vine/android/recorder/BaseFinishProcessTask;->publish(I)V
goto/16 :goto_15f
:cond_252
move-wide/from16 v15, v25
goto :goto_1ed
:catch_255
move-exception v17
const-string v45, "Failed to record video frame at {}. #{}."
invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v46
invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v47
invoke-static/range {v45 .. v47}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
:try_start_263
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoRecorder:Lco/vine/android/recorder/SwVineFrameRecorder;
move-object/from16 v45, v0
move-object/from16 v0, v40
iget v0, v0, Lco/vine/android/recorder/VideoData;->start:I
move/from16 v46, v0
move-object/from16 v0, v40
iget v0, v0, Lco/vine/android/recorder/VideoData;->size:I
move/from16 v47, v0
move-object/from16 v0, v40
iget-boolean v0, v0, Lco/vine/android/recorder/VideoData;->keyFrame:Z
move/from16 v48, v0
move-object/from16 v0, v45
move-object/from16 v1, v36
move/from16 v2, v46
move/from16 v3, v47
move/from16 v4, v48
invoke-virtual {v0, v1, v2, v3, v4}, Lco/vine/android/recorder/SwVineFrameRecorder;->writeEncodedImage([BIIZ)V
add-int/lit8 v34, v34, 0x1
const-string v45, "Retry successful #{}."
invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v46
invoke-static/range {v45 .. v46}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
:try_end_293
.catch Lco/vine/android/recorder/SwVineFrameRecorder$Exception; {:try_start_263 .. :try_end_293} :catch_294
goto :goto_221
:catch_294
move-exception v18
const-string v45, "Retry again: #{}."
invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v46
invoke-static/range {v45 .. v46}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;)V
const-wide/16 v45, 0x3e8
move/from16 v0, v20
int-to-long v0, v0
move-wide/from16 v47, v0
div-long v45, v45, v47
add-long v15, v15, v45
move/from16 v0, v20
int-to-long v0, v0
move-wide/from16 v45, v0
mul-long v45, v45, v15
const-wide/16 v47, 0x3e8
div-long v45, v45, v47
move-wide/from16 v0, v45
long-to-float v0, v0
move/from16 v45, v0
invoke-static/range {v45 .. v45}, Ljava/lang/Math;->round(F)I
move-result v24
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoRecorder:Lco/vine/android/recorder/SwVineFrameRecorder;
move-object/from16 v45, v0
move-object/from16 v0, v45
move-wide v1, v15
invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/SwVineFrameRecorder;->setTimestamp(J)V
move-object/from16 v0, v40
iput-wide v15, v0, Lco/vine/android/recorder/VideoData;->timestamp:J
:try_start_2cd
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoRecorder:Lco/vine/android/recorder/SwVineFrameRecorder;
move-object/from16 v45, v0
move-object/from16 v0, v40
iget v0, v0, Lco/vine/android/recorder/VideoData;->start:I
move/from16 v46, v0
move-object/from16 v0, v40
iget v0, v0, Lco/vine/android/recorder/VideoData;->size:I
move/from16 v47, v0
move-object/from16 v0, v40
iget-boolean v0, v0, Lco/vine/android/recorder/VideoData;->keyFrame:Z
move/from16 v48, v0
move-object/from16 v0, v45
move-object/from16 v1, v36
move/from16 v2, v46
move/from16 v3, v47
move/from16 v4, v48
invoke-virtual {v0, v1, v2, v3, v4}, Lco/vine/android/recorder/SwVineFrameRecorder;->writeEncodedImage([BIIZ)V
add-int/lit8 v34, v34, 0x1
const-string v45, "Retry Retry successful #{}."
invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v46
invoke-static/range {v45 .. v46}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
:try_end_2fd
.catch Lco/vine/android/recorder/SwVineFrameRecorder$Exception; {:try_start_2cd .. :try_end_2fd} :catch_2ff
goto/16 :goto_221
:catch_2ff
move-exception v19
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->errorCount:I
move/from16 v45, v0
add-int/lit8 v45, v45, 0x1
move/from16 v0, v45
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/SwCombiningRunnable;->errorCount:I
const-string v45, "Retry failed: {}."
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->errorCount:I
move/from16 v46, v0
invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v46
invoke-static/range {v45 .. v46}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;)V
goto/16 :goto_221
:cond_31f
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v45
sub-long v45, v45, v41
add-long v43, v43, v45
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
move-object/from16 v45, v0
if-eqz v45, :cond_340
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
move-object/from16 v45, v0
add-int/lit8 v46, v21, 0x1
mul-int/lit8 v46, v46, 0xa
div-int v46, v46, v32
add-int/lit8 v46, v46, 0x5a
invoke-virtual/range {v45 .. v46}, Lco/vine/android/recorder/BaseFinishProcessTask;->publish(I)V
:cond_340
if-eqz v14, :cond_378
sget-boolean v45, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z
if-eqz v45, :cond_378
invoke-virtual {v14}, Lco/vine/android/recorder/AudioData;->getDurationNs()J
move-result-wide v45
const-wide/16 v47, 0x3e8
div-long v45, v45, v47
add-long v5, v5, v45
const/16 v45, 0x3e8
div-int v45, v45, v20
mul-int v45, v45, v37
move/from16 v0, v45
int-to-long v0, v0
move-wide/from16 v45, v0
add-long v38, v38, v45
const-string v45, "Recorded segment with time: audio: {}, video: {}."
invoke-virtual {v14}, Lco/vine/android/recorder/AudioData;->getDurationNs()J
move-result-wide v46
const-wide/16 v48, 0x3e8
div-long v46, v46, v48
invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v46
const/16 v47, 0x3e8
div-int v47, v47, v20
mul-int v47, v47, v37
invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v47
invoke-static/range {v45 .. v47}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
:cond_378
const-string v45, "Video Count: {}."
invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v46
invoke-static/range {v45 .. v46}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
add-int/lit8 v21, v21, 0x1
goto/16 :goto_37
:cond_385
const-string v45, "Done with all segments. total time: audio: {}, video: {}."
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v46
invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v47
invoke-static/range {v45 .. v47}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
const/16 v33, 0x0
:try_start_394
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoRecorder:Lco/vine/android/recorder/SwVineFrameRecorder;
move-object/from16 v45, v0
invoke-virtual/range {v45 .. v45}, Lco/vine/android/recorder/SwVineFrameRecorder;->stop()V
:try_end_39d
.catch Lco/vine/android/recorder/SwVineFrameRecorder$Exception; {:try_start_394 .. :try_end_39d} :catch_420
const/16 v33, 0x1
:goto_39f
if-eqz v33, :cond_3ce
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoPath:Ljava/lang/String;
move-object/from16 v45, v0
if-eqz v45, :cond_3ce
new-instance v45, Ljava/io/File;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoRecorder:Lco/vine/android/recorder/SwVineFrameRecorder;
move-object/from16 v46, v0
invoke-virtual/range {v46 .. v46}, Lco/vine/android/recorder/SwVineFrameRecorder;->getFilename()Ljava/lang/String;
move-result-object v46
invoke-direct/range {v45 .. v46}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v46, Ljava/io/File;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoPath:Ljava/lang/String;
move-object/from16 v47, v0
invoke-direct/range {v46 .. v47}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v45 .. v46}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
move-result v33
if-nez v33, :cond_3ce
const-string v45, "Error renaming to final fn."
invoke-static/range {v45 .. v45}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
:cond_3ce
const-string v45, "Combining finished: {}"
invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v46
invoke-static/range {v45 .. v46}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mThumbnailPath:Ljava/lang/String;
move-object/from16 v45, v0
if-eqz v45, :cond_3ea
move-object/from16 v0, p0
move/from16 v1, v34
move/from16 v2, v24
move/from16 v3, v20
invoke-direct {v0, v1, v2, v3}, Lco/vine/android/recorder/SwCombiningRunnable;->saveThumbnail(III)V
:cond_3ea
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
move-object/from16 v45, v0
if-eqz v45, :cond_3fd
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mAsyncTask:Lco/vine/android/recorder/BaseFinishProcessTask;
move-object/from16 v45, v0
const/16 v46, 0x63
invoke-virtual/range {v45 .. v46}, Lco/vine/android/recorder/BaseFinishProcessTask;->publish(I)V
:cond_3fd
const-string v45, "Processing thread finished: failed {} frames."
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/recorder/SwCombiningRunnable;->errorCount:I
move/from16 v46, v0
invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v46
invoke-static/range {v45 .. v46}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
const-string v45, "Time used: video: {}, audio: {}, n: {}."
invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v46
invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v47
invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v48
invoke-static/range {v45 .. v48}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
const/16 v45, 0x0
return-object v45
:catch_420
move-exception v17
const-string v45, "Error flushing..."
const/16 v46, 0x1
move/from16 v0, v46
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v46, v0
const/16 v47, 0x0
aput-object v17, v46, v47
invoke-static/range {v45 .. v46}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
goto/16 :goto_39f
.end method