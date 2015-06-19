.class public Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
.super Ljava/lang/Thread;
.source "EasyContextRecognizer.java"
.field private static final API_KEI:Ljava/lang/String; = "5mizjzcsify5094mocb4"
.field private static final CONTEXT_REC_DELAY:J = 0x12cL
.field private static final FACE_DETECTED_PERSON:F = 0.05f
.field private static final FACE_DETECTED_PERSON_SCENERY:F = 0.0f
.field private static final IMAGE_MAX_AREA:J = 0x16e360L
.field private static final IMAGE_SCALE_RATE:F = 0.3f
.field private static final LIGHT_REC_DELAY:J = 0xc8L
.field private static final MSG_UPDATE_DEBUG_TEXT:I = 0x0
.field private static final RECOGNIZER_COUNT:I = 0x2
.field private static final SNAP_LIGHT_CHANGE_COUNT:I = 0x5
.field private static final SNAP_PERSON_CHANGE_COUNT:I = 0x1
.field private static final SNAP_SCENERY_CHANGE_COUNT:I = 0x3
.field private static final TAG:Ljava/lang/String; = "EasyContextRecognizer"
.field private static mCurOrientation:I
.field private static mFaceDetectors:Ljava/util/HashMap;
.field private static mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;
.field private static mJpgSize:Landroid/hardware/Camera$Size;
.field private static mStaticIsFrontCamera:Z
.field private initDetectorThread:Ljava/lang/Thread;
.field private mCallback:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$IContextRecognizeCallback;
.field private mContext:Landroid/content/Context;
.field private mContextRecCounter:I
.field private mContextRecTimeCost:J
.field private mContextRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;
.field private mContextTimeStamp:J
.field private mCountDownLatcher:Ljava/util/concurrent/CountDownLatch;
.field private mCurContextId:I
.field private mCurLightId:I
.field private mFaceDetecter1:Lcom/faceplusplus/api/FaceDetecter;
.field private mFaceDetecter2:Lcom/faceplusplus/api/FaceDetecter;
.field private mFaceDetectersInited:Z
.field private mFaceDetectersIniting:Z
.field private mFaceRecRate:F
.field private mFaces:[Lcom/faceplusplus/api/FaceDetecter$Face;
.field private mForceStopFaceDetect:Z
.field private mHandler:Landroid/os/Handler;
.field private mIsCameraTypeSetted:Z
.field private mIsFrontCamera:Z
.field private mIsJpgData:Z
.field private mJpgBitmap:Landroid/graphics/Bitmap;
.field private mJpgBytes:[B
.field private mLightRecCounter:I
.field private mLightRecTimeCost:J
.field private mLightRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;
.field private mLightTimeStamp:J
.field private mPreviewData:[B
.field private mPreviewSize:Landroid/hardware/Camera$Size;
.field private mRecContextId:I
.field private mRecLightId:I
.field private mRunning:Z
.field private mThreadExecutor:Ljava/util/concurrent/ExecutorService;
.field private mTimestamp:J
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
const/4 v0, 0x0
sput-object v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;
sput-object v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectors:Ljava/util/HashMap;
sput v1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurOrientation:I
sput-boolean v1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mStaticIsFrontCamera:Z
sput-object v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mJpgSize:Landroid/hardware/Camera$Size;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 12
const-wide/16 v2, 0x0
const/4 v9, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
iput-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContext:Landroid/content/Context;
iput-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mPreviewSize:Landroid/hardware/Camera$Size;
iput-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mPreviewData:[B
iput-wide v2, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mTimestamp:J
iput-boolean v9, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mRunning:Z
iput-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCountDownLatcher:Ljava/util/concurrent/CountDownLatch;
iput-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;
iput-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContextRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;
iput-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mLightRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;
iput-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetecter1:Lcom/faceplusplus/api/FaceDetecter;
iput-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetecter2:Lcom/faceplusplus/api/FaceDetecter;
iput-boolean v9, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectersInited:Z
iput-boolean v9, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectersIniting:Z
iput-boolean v9, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mForceStopFaceDetect:Z
iput-boolean v9, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsCameraTypeSetted:Z
iput-boolean v9, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsFrontCamera:Z
iput-boolean v9, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsJpgData:Z
sget-object v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->SCENERY:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;
iget v0, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->index:I
iput v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mRecContextId:I
sget-object v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->NORMAL:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
iget v0, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->index:I
iput v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mRecLightId:I
iput-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaces:[Lcom/faceplusplus/api/FaceDetecter$Face;
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceRecRate:F
iput-wide v2, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContextRecTimeCost:J
iput-wide v2, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mLightRecTimeCost:J
iput v9, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContextRecCounter:I
iput v9, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mLightRecCounter:I
iput-wide v2, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContextTimeStamp:J
iput-wide v2, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mLightTimeStamp:J
sget-object v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->SCENERY:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;
iget v0, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->index:I
iput v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurContextId:I
sget-object v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->NORMAL:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
iget v0, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->index:I
iput v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurLightId:I
iput-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mJpgBytes:[B
iput-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mJpgBitmap:Landroid/graphics/Bitmap;
new-instance v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$1;-><init>(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mHandler:Landroid/os/Handler;
iput-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCallback:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$IContextRecognizeCallback;
new-instance v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$2;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$2;-><init>(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->initDetectorThread:Ljava/lang/Thread;
iput-object p1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContext:Landroid/content/Context;
new-instance v0, LvStudio/Android/GPhoto/GPhotoJNI;
invoke-direct {v0}, LvStudio/Android/GPhoto/GPhotoJNI;-><init>()V
sput-object v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;
new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;
const/4 v1, 0x1
const/4 v2, 0x2
const-wide/16 v3, 0x1
sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;
const/4 v7, 0x5
invoke-direct {v6, v7}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V
new-instance v7, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$PriorityThreadFactory;
const-string/jumbo v8, "SnapContextRecognizeTF"
invoke-direct {v7, v8, v9}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$PriorityThreadFactory;-><init>(Ljava/lang/String;I)V
invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;
const-string/jumbo v0, "EasyContextRecognizer"
const-string/jumbo v1, "EasyContextRecognizer \u6784\u9020\u5b8c\u6bd5"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsJpgData:Z
return v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)Lcom/faceplusplus/api/FaceDetecter;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetecter1:Lcom/faceplusplus/api/FaceDetecter;
return-object v0
.end method
.method static synthetic access$10(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)[B
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mPreviewData:[B
return-object v0
.end method
.method static synthetic access$11(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->getCurSnapContext()Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;
move-result-object v0
return-object v0
.end method
.method static synthetic access$12(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->setStableContextId(I)V
return-void
.end method
.method static synthetic access$13(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->updateDebugText()V
return-void
.end method
.method static synthetic access$14(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->getCurSnapLight()Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
move-result-object v0
return-object v0
.end method
.method static synthetic access$15(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->setStableLightId(I)V
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContext:Landroid/content/Context;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)Lcom/faceplusplus/api/FaceDetecter;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetecter2:Lcom/faceplusplus/api/FaceDetecter;
return-object v0
.end method
.method static synthetic access$4()Ljava/util/HashMap;
.registers 1
sget-object v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectors:Ljava/util/HashMap;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectersInited:Z
return-void
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectersIniting:Z
return-void
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mForceStopFaceDetect:Z
return-void
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)[B
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mJpgBytes:[B
return-object v0
.end method
.method static synthetic access$9(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mJpgBitmap:Landroid/graphics/Bitmap;
return-object v0
.end method
.method private detectFacesWithJPG(I)[Lcom/faceplusplus/api/FaceDetecter$Face;
.registers 12
const/4 v5, 0x0
sget-object v6, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectors:Ljava/util/HashMap;
if-nez v6, :cond_6
:goto_5
:cond_5
return-object v5
:cond_6
rem-int/lit16 v1, p1, 0xb4
const/16 v6, 0x5a
if-eq v1, v6, :cond_d
const/4 v1, 0x0
:cond_d
sget-object v6, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectors:Ljava/util/HashMap;
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/faceplusplus/api/FaceDetecter;
if-eqz v0, :cond_5
const-string/jumbo v5, "EasyContextRecognizer"
const-string/jumbo v6, "ori:%d, key:%d"
const/4 v7, 0x2
new-array v7, v7, [Ljava/lang/Object;
const/4 v8, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
aput-object v9, v7, v8
const/4 v8, 0x1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
aput-object v9, v7, v8
invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
iget-object v5, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mJpgBitmap:Landroid/graphics/Bitmap;
invoke-static {v5, p1}, Lcom/pinguo/lib/image/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
move-result-object v2
const-string/jumbo v5, "EasyContextRecognizer"
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "scale time cost "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v7
sub-long/2addr v7, v3
invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v2}, Lcom/faceplusplus/api/FaceDetecter;->findFaces(Landroid/graphics/Bitmap;)[Lcom/faceplusplus/api/FaceDetecter$Face;
move-result-object v5
goto :goto_5
.end method
.method private detectFacesWithYUV([BIII)[Lcom/faceplusplus/api/FaceDetecter$Face;
.registers 22
sget-object v15, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectors:Ljava/util/HashMap;
if-eqz v15, :cond_6
if-nez p1, :cond_8
:cond_6
const/4 v15, 0x0
:goto_7
return-object v15
:cond_8
move/from16 v0, p4
rem-int/lit16 v7, v0, 0xb4
const/16 v15, 0x5a
if-eq v7, v15, :cond_11
const/4 v7, 0x0
:cond_11
sget-object v15, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectors:Ljava/util/HashMap;
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v16
invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/faceplusplus/api/FaceDetecter;
if-nez v2, :cond_21
const/4 v15, 0x0
goto :goto_7
:cond_21
move/from16 v0, p4
add-int/lit16 v15, v0, 0x168
rem-int/lit16 v0, v15, 0x168
move/from16 p4, v0
move/from16 v0, p2
move/from16 v1, p3
if-le v0, v1, :cond_50
move/from16 v8, p2
:goto_31
div-int/lit16 v5, v8, 0x12c
const/4 v15, 0x1
if-gt v5, v15, :cond_37
const/4 v5, 0x1
:cond_37
const/4 v15, 0x1
if-ne v5, v15, :cond_ca
mul-int v15, p2, p3
new-array v3, v15, [B
const/4 v6, 0x0
sparse-switch p4, :sswitch_data_148
const/4 v14, 0x0
:goto_43
move/from16 v0, p3
if-lt v14, v0, :cond_b6
move/from16 v0, p2
move/from16 v1, p3
invoke-virtual {v2, v3, v0, v1}, Lcom/faceplusplus/api/FaceDetecter;->findFaces([BII)[Lcom/faceplusplus/api/FaceDetecter$Face;
move-result-object v15
goto :goto_7
:cond_50
move/from16 v8, p3
goto :goto_31
:sswitch_53
const/4 v13, 0x0
:goto_54
move/from16 v0, p2
if-lt v13, v0, :cond_61
move/from16 v0, p3
move/from16 v1, p2
invoke-virtual {v2, v3, v0, v1}, Lcom/faceplusplus/api/FaceDetecter;->findFaces([BII)[Lcom/faceplusplus/api/FaceDetecter$Face;
move-result-object v15
goto :goto_7
:cond_61
const/4 v14, 0x0
:goto_62
move/from16 v0, p3
if-lt v14, v0, :cond_69
add-int/lit8 v13, v13, 0x1
goto :goto_54
:cond_69
mul-int v15, v14, p2
add-int/2addr v15, v13
aget-byte v15, p1, v15
aput-byte v15, v3, v6
add-int/lit8 v6, v6, 0x1
add-int/lit8 v14, v14, 0x1
goto :goto_62
:sswitch_75
add-int/lit8 v14, p3, -0x1
:goto_77
if-gez v14, :cond_82
move/from16 v0, p2
move/from16 v1, p3
invoke-virtual {v2, v3, v0, v1}, Lcom/faceplusplus/api/FaceDetecter;->findFaces([BII)[Lcom/faceplusplus/api/FaceDetecter$Face;
move-result-object v15
goto :goto_7
:cond_82
add-int/lit8 v13, p2, -0x1
:goto_84
if-gez v13, :cond_89
add-int/lit8 v14, v14, -0x1
goto :goto_77
:cond_89
mul-int v15, v14, p2
add-int/2addr v15, v13
aget-byte v15, p1, v15
aput-byte v15, v3, v6
add-int/lit8 v6, v6, 0x1
add-int/lit8 v13, v13, -0x1
goto :goto_84
:sswitch_95
add-int/lit8 v13, p2, -0x1
:goto_97
if-gez v13, :cond_a3
move/from16 v0, p3
move/from16 v1, p2
invoke-virtual {v2, v3, v0, v1}, Lcom/faceplusplus/api/FaceDetecter;->findFaces([BII)[Lcom/faceplusplus/api/FaceDetecter$Face;
move-result-object v15
goto/16 :goto_7
:cond_a3
add-int/lit8 v14, p3, -0x1
:goto_a5
if-gez v14, :cond_aa
add-int/lit8 v13, v13, -0x1
goto :goto_97
:cond_aa
mul-int v15, v14, p2
add-int/2addr v15, v13
aget-byte v15, p1, v15
aput-byte v15, v3, v6
add-int/lit8 v6, v6, 0x1
add-int/lit8 v14, v14, -0x1
goto :goto_a5
:cond_b6
const/4 v13, 0x0
:goto_b7
move/from16 v0, p2
if-lt v13, v0, :cond_be
add-int/lit8 v14, v14, 0x1
goto :goto_43
:cond_be
mul-int v15, v14, p2
add-int/2addr v15, v13
aget-byte v15, p1, v15
aput-byte v15, v3, v6
add-int/lit8 v6, v6, 0x1
add-int/lit8 v13, v13, 0x1
goto :goto_b7
:cond_ca
div-int v12, p2, v5
div-int v4, p3, v5
mul-int v10, v5, v12
mul-int v9, v5, v4
mul-int v15, v10, v9
new-array v3, v15, [B
add-int/lit8 v15, v5, 0x1
div-int/lit8 v15, v15, 0x2
add-int/lit8 v11, v15, -0x1
const/4 v6, 0x0
sparse-switch p4, :sswitch_data_156
move v14, v11
:goto_e1
if-lt v14, v9, :cond_138
invoke-virtual {v2, v3, v12, v4}, Lcom/faceplusplus/api/FaceDetecter;->findFaces([BII)[Lcom/faceplusplus/api/FaceDetecter$Face;
move-result-object v15
goto/16 :goto_7
:sswitch_e9
move v13, v11
:goto_ea
if-lt v13, v10, :cond_f2
invoke-virtual {v2, v3, v4, v12}, Lcom/faceplusplus/api/FaceDetecter;->findFaces([BII)[Lcom/faceplusplus/api/FaceDetecter$Face;
move-result-object v15
goto/16 :goto_7
:cond_f2
move v14, v11
:goto_f3
if-lt v14, v9, :cond_f7
add-int/2addr v13, v5
goto :goto_ea
:cond_f7
mul-int v15, v14, p2
add-int/2addr v15, v13
aget-byte v15, p1, v15
aput-byte v15, v3, v6
add-int/lit8 v6, v6, 0x1
add-int/2addr v14, v5
goto :goto_f3
:sswitch_102
add-int/lit8 v14, v9, -0x1
:goto_104
if-ge v14, v11, :cond_10c
invoke-virtual {v2, v3, v12, v4}, Lcom/faceplusplus/api/FaceDetecter;->findFaces([BII)[Lcom/faceplusplus/api/FaceDetecter$Face;
move-result-object v15
goto/16 :goto_7
:cond_10c
add-int/lit8 v13, v10, -0x1
:goto_10e
if-ge v13, v11, :cond_112
sub-int/2addr v14, v5
goto :goto_104
:cond_112
mul-int v15, v14, p2
add-int/2addr v15, v13
aget-byte v15, p1, v15
aput-byte v15, v3, v6
add-int/lit8 v6, v6, 0x1
sub-int/2addr v13, v5
goto :goto_10e
:sswitch_11d
add-int/lit8 v13, v10, -0x1
:goto_11f
if-ge v13, v11, :cond_127
invoke-virtual {v2, v3, v4, v12}, Lcom/faceplusplus/api/FaceDetecter;->findFaces([BII)[Lcom/faceplusplus/api/FaceDetecter$Face;
move-result-object v15
goto/16 :goto_7
:cond_127
add-int/lit8 v14, v9, -0x1
:goto_129
if-ge v14, v11, :cond_12d
sub-int/2addr v13, v5
goto :goto_11f
:cond_12d
mul-int v15, v14, p2
add-int/2addr v15, v13
aget-byte v15, p1, v15
aput-byte v15, v3, v6
add-int/lit8 v6, v6, 0x1
sub-int/2addr v14, v5
goto :goto_129
:cond_138
move v13, v11
:goto_139
if-lt v13, v10, :cond_13d
add-int/2addr v14, v5
goto :goto_e1
:cond_13d
mul-int v15, v14, p2
add-int/2addr v15, v13
aget-byte v15, p1, v15
aput-byte v15, v3, v6
add-int/lit8 v6, v6, 0x1
add-int/2addr v13, v5
goto :goto_139
:sswitch_data_148
.sparse-switch
0x5a -> :sswitch_53
0xb4 -> :sswitch_75
0x10e -> :sswitch_95
.end sparse-switch
:sswitch_data_156
.sparse-switch
0x5a -> :sswitch_e9
0xb4 -> :sswitch_102
0x10e -> :sswitch_11d
.end sparse-switch
.end method
.method private getCurSnapContext()Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;
.registers 18
const/4 v1, 0x0
move-object/from16 v0, p0
iget-boolean v12, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectersInited:Z
if-nez v12, :cond_9
move-object v2, v1
:goto_8
return-object v2
:cond_9
move-object/from16 v0, p0
iget-boolean v12, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsJpgData:Z
if-eqz v12, :cond_17
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mJpgBitmap:Landroid/graphics/Bitmap;
if-nez v12, :cond_17
move-object v2, v1
goto :goto_8
:cond_17
move-object/from16 v0, p0
iget-boolean v12, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsJpgData:Z
if-nez v12, :cond_2b
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mPreviewData:[B
if-eqz v12, :cond_29
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mPreviewSize:Landroid/hardware/Camera$Size;
if-nez v12, :cond_2b
:cond_29
move-object v2, v1
goto :goto_8
:cond_2b
move-object/from16 v0, p0
iget-wide v12, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContextTimeStamp:J
move-object/from16 v0, p0
iget-wide v14, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mTimestamp:J
cmp-long v12, v12, v14
if-ltz v12, :cond_39
move-object v2, v1
goto :goto_8
:cond_39
move-object/from16 v0, p0
iget-wide v12, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mTimestamp:J
move-object/from16 v0, p0
iput-wide v12, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContextTimeStamp:J
sget v12, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurOrientation:I
add-int/lit8 v12, v12, 0x5a
rem-int/lit16 v7, v12, 0x168
const/4 v11, 0x0
const/4 v6, 0x0
const/4 v3, 0x0
move-object/from16 v0, p0
iget-boolean v12, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsJpgData:Z
if-nez v12, :cond_66
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mPreviewSize:Landroid/hardware/Camera$Size;
iget v11, v12, Landroid/hardware/Camera$Size;->width:I
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mPreviewSize:Landroid/hardware/Camera$Size;
iget v6, v12, Landroid/hardware/Camera$Size;->height:I
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mPreviewData:[B
invoke-virtual {v12}, [B->clone()Ljava/lang/Object;
move-result-object v3
check-cast v3, [B
:cond_66
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v9
const/4 v8, 0x0
move-object/from16 v0, p0
iget-boolean v12, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsJpgData:Z
if-eqz v12, :cond_96
move-object/from16 v0, p0
invoke-direct {v0, v7}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->detectFacesWithJPG(I)[Lcom/faceplusplus/api/FaceDetecter$Face;
move-result-object v8
:goto_77
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v12
sub-long/2addr v12, v9
move-object/from16 v0, p0
iput-wide v12, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContextRecTimeCost:J
move-object/from16 v0, p0
iput-object v8, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaces:[Lcom/faceplusplus/api/FaceDetecter$Face;
if-nez v8, :cond_9d
const/4 v12, 0x0
move-object/from16 v0, p0
iput v12, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceRecRate:F
:goto_8b
move-object/from16 v0, p0
iget-boolean v12, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsFrontCamera:Z
if-eqz v12, :cond_bb
sget-object v1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->PERSON:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;
:goto_93
move-object v2, v1
goto/16 :goto_8
:cond_96
move-object/from16 v0, p0
invoke-direct {v0, v3, v11, v6, v7}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->detectFacesWithYUV([BIII)[Lcom/faceplusplus/api/FaceDetecter$Face;
move-result-object v8
goto :goto_77
:cond_9d
const/4 v4, 0x0
array-length v13, v8
const/4 v12, 0x0
:goto_a0
if-lt v12, v13, :cond_a7
move-object/from16 v0, p0
iput v4, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceRecRate:F
goto :goto_8b
:cond_a7
aget-object v5, v8, v12
iget v14, v5, Lcom/faceplusplus/api/FaceDetecter$Face;->right:F
iget v15, v5, Lcom/faceplusplus/api/FaceDetecter$Face;->left:F
sub-float/2addr v14, v15
iget v15, v5, Lcom/faceplusplus/api/FaceDetecter$Face;->bottom:F
iget v0, v5, Lcom/faceplusplus/api/FaceDetecter$Face;->top:F
move/from16 v16, v0
sub-float v15, v15, v16
mul-float/2addr v14, v15
add-float/2addr v4, v14
add-int/lit8 v12, v12, 0x1
goto :goto_a0
:cond_bb
move-object/from16 v0, p0
iget v12, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceRecRate:F
const v13, 0x3d4ccccd
cmpl-float v12, v12, v13
if-lez v12, :cond_c9
sget-object v1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->PERSON:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;
goto :goto_93
:cond_c9
move-object/from16 v0, p0
iget v12, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceRecRate:F
const/4 v13, 0x0
cmpl-float v12, v12, v13
if-lez v12, :cond_d5
sget-object v1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->PERSON_SCENERY:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;
goto :goto_93
:cond_d5
sget-object v1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->SCENERY:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;
goto :goto_93
.end method
.method private getCurSnapLight()Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
.registers 14
const/4 v1, 0x0
iget-boolean v9, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsJpgData:Z
if-eqz v9, :cond_b
iget-object v9, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mJpgBytes:[B
if-nez v9, :cond_b
move-object v2, v1
:goto_a
return-object v2
:cond_b
iget-boolean v9, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsJpgData:Z
if-nez v9, :cond_19
iget-object v9, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mPreviewData:[B
if-eqz v9, :cond_17
iget-object v9, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mPreviewSize:Landroid/hardware/Camera$Size;
if-nez v9, :cond_19
:cond_17
move-object v2, v1
goto :goto_a
:cond_19
iget-wide v9, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mLightTimeStamp:J
iget-wide v11, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mTimestamp:J
cmp-long v9, v9, v11
if-ltz v9, :cond_23
move-object v2, v1
goto :goto_a
:cond_23
iget-wide v9, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mTimestamp:J
iput-wide v9, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mLightTimeStamp:J
const/4 v8, 0x0
const/4 v4, 0x0
const/4 v3, 0x0
iget-boolean v9, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsJpgData:Z
if-nez v9, :cond_3e
iget-object v9, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mPreviewSize:Landroid/hardware/Camera$Size;
iget v8, v9, Landroid/hardware/Camera$Size;->width:I
iget-object v9, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mPreviewSize:Landroid/hardware/Camera$Size;
iget v4, v9, Landroid/hardware/Camera$Size;->height:I
iget-object v9, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mPreviewData:[B
invoke-virtual {v9}, [B->clone()Ljava/lang/Object;
move-result-object v3
check-cast v3, [B
:cond_3e
invoke-static {}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->isNight()Z
move-result v9
if-eqz v9, :cond_7a
const/4 v0, 0x1
:goto_45
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
const/4 v5, 0x0
iget-boolean v9, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsJpgData:Z
if-eqz v9, :cond_7c
sget-object v9, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;
iget-object v10, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mJpgBytes:[B
iget-object v11, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mJpgBytes:[B
array-length v11, v11
invoke-virtual {v9, v10, v11, v0}, LvStudio/Android/GPhoto/GPhotoJNI;->AnalyseLightFromJpegFile([BII)I
move-result v5
:goto_59
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v9
sub-long/2addr v9, v6
iput-wide v9, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mLightRecTimeCost:J
sget-object v9, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->NIGHT:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
iget v9, v9, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->index:I
if-ne v9, v5, :cond_72
sget-object v9, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->SCENERY:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;
iget v9, v9, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->index:I
iget v10, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mRecContextId:I
if-eq v9, v10, :cond_72
sget-object v9, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->BACK:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
iget v5, v9, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->index:I
:cond_72
invoke-static {}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->values()[Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
move-result-object v9
aget-object v1, v9, v5
move-object v2, v1
goto :goto_a
:cond_7a
const/4 v0, 0x0
goto :goto_45
:cond_7c
sget-object v9, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;
invoke-virtual {v9, v3, v8, v4, v0}, LvStudio/Android/GPhoto/GPhotoJNI;->AnalyseLightFromYUV([BIII)I
move-result v5
goto :goto_59
.end method
.method public static getEasyEffectAlias([B)Ljava/lang/String;
.registers 3
sget-object v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mJpgSize:Landroid/hardware/Camera$Size;
sget v1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurOrientation:I
invoke-static {p0, v0, v1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->getEasyEffectAlias([BLandroid/hardware/Camera$Size;I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static getEasyEffectAlias([BLandroid/hardware/Camera$Size;I)Ljava/lang/String;
.registers 35
const/16 v27, 0x2
move/from16 v0, v27
new-array v7, v0, [I
const/16 v27, 0x0
sget-object v28, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->PERSON:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;
move-object/from16 v0, v28
iget v0, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->index:I
move/from16 v28, v0
aput v28, v7, v27
const/16 v27, 0x1
sget-object v28, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->NORMAL:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
move-object/from16 v0, v28
iget v0, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->index:I
move/from16 v28, v0
aput v28, v7, v27
sget-boolean v27, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mStaticIsFrontCamera:Z
if-nez v27, :cond_1cc
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v23
const v16, 0x3e99999a
move-object/from16 v0, p1
iget v0, v0, Landroid/hardware/Camera$Size;->width:I
move/from16 v27, v0
move-object/from16 v0, p1
iget v0, v0, Landroid/hardware/Camera$Size;->height:I
move/from16 v28, v0
mul-int v27, v27, v28
move/from16 v0, v27
int-to-long v4, v0
long-to-float v0, v4
move/from16 v27, v0
const v28, 0x49b71b00
div-float v22, v27, v28
const/high16 v27, 0x3f80
cmpl-float v27, v22, v27
if-lez v27, :cond_1d9
move/from16 v0, v22
float-to-double v0, v0
move-wide/from16 v27, v0
invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v27
move-wide/from16 v0, v27
double-to-float v0, v0
move/from16 v22, v0
:goto_56
div-float v16, v16, v22
move-object/from16 v0, p1
iget v0, v0, Landroid/hardware/Camera$Size;->width:I
move/from16 v27, v0
move/from16 v0, v27
int-to-float v0, v0
move/from16 v27, v0
mul-float v27, v27, v16
move/from16 v0, v27
float-to-int v0, v0
move/from16 v21, v0
move-object/from16 v0, p1
iget v0, v0, Landroid/hardware/Camera$Size;->height:I
move/from16 v27, v0
move/from16 v0, v27
int-to-float v0, v0
move/from16 v27, v0
mul-float v27, v27, v16
move/from16 v0, v27
float-to-int v0, v0
move/from16 v19, v0
move/from16 v0, v19
move/from16 v1, v21
if-ge v0, v1, :cond_1dd
move/from16 v13, v19
:goto_84
const/16 v27, 0x0
move-object/from16 v0, p0
move/from16 v1, v27
invoke-static {v0, v13, v1}, Lcom/pinguo/lib/image/BitmapUtils;->scalePicture([BIZ)Landroid/graphics/Bitmap;
move-result-object v20
new-instance v6, Ljava/io/ByteArrayOutputStream;
invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
sget-object v27, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v28, 0x64
move-object/from16 v0, v20
move-object/from16 v1, v27
move/from16 v2, v28
invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v18
const-string/jumbo v27, "EasyContextRecognizer"
new-instance v28, Ljava/lang/StringBuilder;
const-string/jumbo v29, "\u7f29\u653e\u56fe\u7247\u5b8c\u6210\uff0c\u8017\u65f6 "
invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v29
sub-long v29, v29, v23
invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v28
invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v28
invoke-static/range {v27 .. v28}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v23
const/16 v17, 0x0
sget-object v27, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectors:Ljava/util/HashMap;
if-eqz v27, :cond_122
add-int/lit8 v27, p2, 0x5a
move/from16 v0, v27
rem-int/lit16 v15, v0, 0x168
rem-int/lit16 v12, v15, 0xb4
const/16 v27, 0x5a
move/from16 v0, v27
if-eq v12, v0, :cond_d9
const/4 v12, 0x0
:cond_d9
sget-object v27, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectors:Ljava/util/HashMap;
invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v28
invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v10
check-cast v10, Lcom/faceplusplus/api/FaceDetecter;
if-eqz v10, :cond_122
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v25
move-object/from16 v0, v20
invoke-static {v0, v15}, Lcom/pinguo/lib/image/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
move-result-object v27
const/16 v28, 0xc8
invoke-static/range {v27 .. v28}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->getScaledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
move-result-object v14
const-string/jumbo v27, "EasyContextRecognizer"
new-instance v28, Ljava/lang/StringBuilder;
const-string/jumbo v29, "first scale time cost "
invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v29
sub-long v29, v29, v25
invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v28
invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v28
invoke-static/range {v27 .. v28}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v10, v14}, Lcom/faceplusplus/api/FaceDetecter;->findFaces(Landroid/graphics/Bitmap;)[Lcom/faceplusplus/api/FaceDetecter$Face;
move-result-object v17
if-eqz v14, :cond_122
invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z
move-result v27
if-nez v27, :cond_122
invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V
:cond_122
const/4 v11, 0x0
if-eqz v17, :cond_134
const/4 v8, 0x0
move-object/from16 v0, v17
array-length v0, v0
move/from16 v28, v0
const/16 v27, 0x0
:goto_12d
move/from16 v0, v27
move/from16 v1, v28
if-lt v0, v1, :cond_1e1
move v11, v8
:cond_134
sget-boolean v27, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mStaticIsFrontCamera:Z
if-eqz v27, :cond_1ff
const/16 v27, 0x0
sget-object v28, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->PERSON:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;
move-object/from16 v0, v28
iget v0, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->index:I
move/from16 v28, v0
aput v28, v7, v27
:goto_144
const-string/jumbo v27, "EasyContextRecognizer"
new-instance v28, Ljava/lang/StringBuilder;
const-string/jumbo v29, "\u4eba\u8138\u8bc6\u522b\u5b8c\u6210\uff0c\u8017\u65f6 "
invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v29
sub-long v29, v29, v23
invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v28
invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v28
invoke-static/range {v27 .. v28}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v23
invoke-static {}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->isNight()Z
move-result v27
if-eqz v27, :cond_236
const/4 v3, 0x1
:goto_16b
const/16 v27, 0x1
sget-object v28, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;
move-object/from16 v0, v18
array-length v0, v0
move/from16 v29, v0
move-object/from16 v0, v28
move-object/from16 v1, v18
move/from16 v2, v29
invoke-virtual {v0, v1, v2, v3}, LvStudio/Android/GPhoto/GPhotoJNI;->AnalyseLightFromJpegFile([BII)I
move-result v28
aput v28, v7, v27
sget-object v27, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->NIGHT:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
move-object/from16 v0, v27
iget v0, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->index:I
move/from16 v27, v0
const/16 v28, 0x1
aget v28, v7, v28
move/from16 v0, v27
move/from16 v1, v28
if-ne v0, v1, :cond_1b0
sget-object v27, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->SCENERY:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;
move-object/from16 v0, v27
iget v0, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->index:I
move/from16 v27, v0
const/16 v28, 0x0
aget v28, v7, v28
move/from16 v0, v27
move/from16 v1, v28
if-eq v0, v1, :cond_1b0
const/16 v27, 0x1
sget-object v28, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->BACK:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
move-object/from16 v0, v28
iget v0, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->index:I
move/from16 v28, v0
aput v28, v7, v27
:cond_1b0
const-string/jumbo v27, "EasyContextRecognizer"
new-instance v28, Ljava/lang/StringBuilder;
const-string/jumbo v29, "\u5149\u7ebf\u8bc6\u522b\u5b8c\u6210\uff0c\u8017\u65f6 "
invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v29
sub-long v29, v29, v23
invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v28
invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v28
invoke-static/range {v27 .. v28}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_1cc
const/16 v27, 0x0
aget v27, v7, v27
const/16 v28, 0x1
aget v28, v7, v28
invoke-static/range {v27 .. v28}, Lcom/pinguo/camera360/effect/model/EffectParamFactory;->getSmartSubParamByContext(II)Ljava/lang/String;
move-result-object v27
return-object v27
:cond_1d9
const/high16 v22, 0x3f80
goto/16 :goto_56
:cond_1dd
move/from16 v13, v21
goto/16 :goto_84
:cond_1e1
aget-object v9, v17, v27
iget v0, v9, Lcom/faceplusplus/api/FaceDetecter$Face;->right:F
move/from16 v29, v0
iget v0, v9, Lcom/faceplusplus/api/FaceDetecter$Face;->left:F
move/from16 v30, v0
sub-float v29, v29, v30
iget v0, v9, Lcom/faceplusplus/api/FaceDetecter$Face;->bottom:F
move/from16 v30, v0
iget v0, v9, Lcom/faceplusplus/api/FaceDetecter$Face;->top:F
move/from16 v31, v0
sub-float v30, v30, v31
mul-float v29, v29, v30
add-float v8, v8, v29
add-int/lit8 v27, v27, 0x1
goto/16 :goto_12d
:cond_1ff
const v27, 0x3d4ccccd
cmpl-float v27, v11, v27
if-lez v27, :cond_214
const/16 v27, 0x0
sget-object v28, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->PERSON:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;
move-object/from16 v0, v28
iget v0, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->index:I
move/from16 v28, v0
aput v28, v7, v27
goto/16 :goto_144
:cond_214
const/16 v27, 0x0
cmpl-float v27, v11, v27
if-lez v27, :cond_228
const/16 v27, 0x0
sget-object v28, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->PERSON_SCENERY:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;
move-object/from16 v0, v28
iget v0, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->index:I
move/from16 v28, v0
aput v28, v7, v27
goto/16 :goto_144
:cond_228
const/16 v27, 0x0
sget-object v28, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->SCENERY:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;
move-object/from16 v0, v28
iget v0, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->index:I
move/from16 v28, v0
aput v28, v7, v27
goto/16 :goto_144
:cond_236
const/4 v3, 0x0
goto/16 :goto_16b
.end method
.method private getNextLightId(I)I
.registers 5
const/4 v2, 0x0
iget v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mRecLightId:I
if-ne p1, v0, :cond_18
iget v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mLightRecCounter:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mLightRecCounter:I
iget v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mLightRecCounter:I
const/4 v1, 0x5
if-le v0, v1, :cond_15
iput v2, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mLightRecCounter:I
iget v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mRecLightId:I
:goto_14
return v0
:cond_15
iget v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurLightId:I
goto :goto_14
:cond_18
iput p1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mRecLightId:I
iput v2, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mLightRecCounter:I
iget v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurLightId:I
goto :goto_14
.end method
.method public static getScaledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.registers 9
if-eqz p0, :cond_6
const/16 v4, 0x64
if-gt p1, v4, :cond_8
:cond_6
const/4 v4, 0x0
:goto_7
return-object v4
:cond_8
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v1
new-instance v2, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V
if-le v3, v1, :cond_36
div-int v4, v3, p1
:goto_19
iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v5, 0x5a
invoke-virtual {p0, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v4
const/4 v5, 0x0
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v6
array-length v6, v6
invoke-static {v4, v5, v6, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v4
goto :goto_7
:cond_36
div-int v4, v1, p1
goto :goto_19
.end method
.method public static getScaledBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
.registers 6
new-instance v0, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v3, 0x1
iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
if-le v2, v1, :cond_1d
div-int v3, v2, p1
:goto_13
iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
const/4 v3, 0x0
iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v3
return-object v3
:cond_1d
div-int v3, v1, p1
goto :goto_13
.end method
.method private getSelfScaledBytes([BIIF)[B
.registers 9
invoke-direct {p0, p1, p2, p3, p4}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->getSelfScaledImage([BIIF)Landroid/graphics/Bitmap;
move-result-object v1
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v3, 0x64
invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v2
return-object v2
.end method
.method private getSelfScaledImage([BIIF)Landroid/graphics/Bitmap;
.registers 13
mul-int v6, p2, p3
int-to-long v0, v6
long-to-float v6, v0
const v7, 0x49b71b00
div-float v5, v6, v7
const/high16 v6, 0x3f80
cmpl-float v6, v5, v6
if-lez v6, :cond_25
float-to-double v6, v5
invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v6
double-to-float v5, v6
:goto_15
div-float/2addr p4, v5
int-to-float v6, p2
mul-float/2addr v6, p4
float-to-int v4, v6
int-to-float v6, p3
mul-float/2addr v6, p4
float-to-int v3, v6
if-ge v3, v4, :cond_28
move v2, v3
:goto_1f
const/4 v6, 0x0
invoke-static {p1, v2, v6}, Lcom/pinguo/lib/image/BitmapUtils;->scalePicture([BIZ)Landroid/graphics/Bitmap;
move-result-object v6
return-object v6
:cond_25
const/high16 v5, 0x3f80
goto :goto_15
:cond_28
move v2, v4
goto :goto_1f
.end method
.method private initWorkers()V
.registers 4
new-instance v0, Ljava/util/concurrent/CountDownLatch;
const/4 v1, 0x2
invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCountDownLatcher:Ljava/util/concurrent/CountDownLatch;
new-instance v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$3;
iget-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCountDownLatcher:Ljava/util/concurrent/CountDownLatch;
const-string/jumbo v2, "ContextRecognizer"
invoke-direct {v0, p0, v1, v2}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$3;-><init>(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContextRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;
new-instance v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$4;
iget-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCountDownLatcher:Ljava/util/concurrent/CountDownLatch;
const-string/jumbo v2, "LightRecognizer"
invoke-direct {v0, p0, v1, v2}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$4;-><init>(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mLightRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;
iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContextRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsJpgData:Z
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->setIsJpgSrc(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mLightRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsJpgData:Z
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->setIsJpgSrc(Z)V
return-void
.end method
.method private static isNight()Z
.registers 7
const/4 v3, 0x0
new-instance v2, Ljava/text/SimpleDateFormat;
const-string/jumbo v4, "HH:mm:ss"
sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
new-instance v4, Ljava/util/Date;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v4, ":"
invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v4
aget-object v4, v4, v3
invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
move-result v0
const/16 v4, 0x13
if-ge v0, v4, :cond_30
const/4 v4, 0x7
if-gt v0, v4, :cond_31
:cond_30
const/4 v3, 0x1
:cond_31
return v3
.end method
.method private processEmptydata()V
.registers 15
iget-object v12, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetecter1:Lcom/faceplusplus/api/FaceDetecter;
if-eqz v12, :cond_8
iget-object v12, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetecter2:Lcom/faceplusplus/api/FaceDetecter;
if-nez v12, :cond_9
:goto_8
:cond_8
return-void
:cond_9
iget-object v12, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mPreviewSize:Landroid/hardware/Camera$Size;
iget v12, v12, Landroid/hardware/Camera$Size;->width:I
iget-object v13, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mPreviewSize:Landroid/hardware/Camera$Size;
iget v13, v13, Landroid/hardware/Camera$Size;->height:I
if-ge v12, v13, :cond_71
iget-object v12, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mPreviewSize:Landroid/hardware/Camera$Size;
iget v11, v12, Landroid/hardware/Camera$Size;->width:I
:goto_17
iget-object v12, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mPreviewSize:Landroid/hardware/Camera$Size;
iget v12, v12, Landroid/hardware/Camera$Size;->width:I
iget-object v13, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mPreviewSize:Landroid/hardware/Camera$Size;
iget v13, v13, Landroid/hardware/Camera$Size;->height:I
if-le v12, v13, :cond_76
iget-object v12, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mPreviewSize:Landroid/hardware/Camera$Size;
iget v4, v12, Landroid/hardware/Camera$Size;->width:I
:goto_25
mul-int/lit8 v12, v11, 0x2
mul-int/2addr v12, v4
new-array v3, v12, [B
iget-boolean v12, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsJpgData:Z
if-eqz v12, :cond_7e
const v7, 0x3e99999a
mul-int v12, v11, v4
int-to-long v0, v12
long-to-float v12, v0
const v13, 0x49b71b00
div-float v10, v12, v13
const/high16 v12, 0x3f80
cmpl-float v12, v10, v12
if-lez v12, :cond_7b
float-to-double v12, v10
invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v12
double-to-float v10, v12
:goto_46
div-float/2addr v7, v10
int-to-float v12, v11
mul-float/2addr v12, v7
float-to-int v9, v12
int-to-float v12, v4
mul-float/2addr v12, v7
float-to-int v8, v12
sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;
invoke-static {v9, v8, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v5
invoke-static {v8, v9, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v6
if-eqz v5, :cond_5e
iget-object v12, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetecter1:Lcom/faceplusplus/api/FaceDetecter;
invoke-virtual {v12, v5}, Lcom/faceplusplus/api/FaceDetecter;->findFaces(Landroid/graphics/Bitmap;)[Lcom/faceplusplus/api/FaceDetecter$Face;
:cond_5e
if-eqz v6, :cond_65
iget-object v12, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetecter2:Lcom/faceplusplus/api/FaceDetecter;
invoke-virtual {v12, v6}, Lcom/faceplusplus/api/FaceDetecter;->findFaces(Landroid/graphics/Bitmap;)[Lcom/faceplusplus/api/FaceDetecter$Face;
:cond_65
if-eqz v5, :cond_6b
invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
const/4 v5, 0x0
:cond_6b
if-eqz v6, :cond_8
invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
goto :goto_8
:cond_71
iget-object v12, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mPreviewSize:Landroid/hardware/Camera$Size;
iget v11, v12, Landroid/hardware/Camera$Size;->height:I
goto :goto_17
:cond_76
iget-object v12, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mPreviewSize:Landroid/hardware/Camera$Size;
iget v4, v12, Landroid/hardware/Camera$Size;->height:I
goto :goto_25
:cond_7b
const/high16 v10, 0x3f80
goto :goto_46
:cond_7e
iget-object v12, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetecter1:Lcom/faceplusplus/api/FaceDetecter;
invoke-virtual {v12, v3, v11, v4}, Lcom/faceplusplus/api/FaceDetecter;->findFaces([BII)[Lcom/faceplusplus/api/FaceDetecter$Face;
iget-object v12, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetecter2:Lcom/faceplusplus/api/FaceDetecter;
invoke-virtual {v12, v3, v4, v11}, Lcom/faceplusplus/api/FaceDetecter;->findFaces([BII)[Lcom/faceplusplus/api/FaceDetecter$Face;
goto :goto_8
.end method
.method private releaseWorkers()V
.registers 3
const/4 v1, 0x0
iput-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContextRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;
iput-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mLightRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;
iput-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCountDownLatcher:Ljava/util/concurrent/CountDownLatch;
iput-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mPreviewData:[B
iput-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mPreviewSize:Landroid/hardware/Camera$Size;
iput-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mJpgBytes:[B
iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mJpgBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mJpgBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
iput-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mJpgBitmap:Landroid/graphics/Bitmap;
:cond_18
return-void
.end method
.method private requestEffectChange()V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCallback:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$IContextRecognizeCallback;
if-eqz v0, :cond_11
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsJpgData:Z
if-nez v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCallback:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$IContextRecognizeCallback;
iget v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurContextId:I
iget v2, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurLightId:I
invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$IContextRecognizeCallback;->effectChangeCallback(II)V
:cond_11
return-void
.end method
.method private static saveSrcToFile(Landroid/graphics/Bitmap;)Ljava/lang/String;
.registers 8
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, "/recSrc-"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, ".png"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-instance v1, Ljava/io/File;
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:try_start_2c
new-instance v3, Ljava/io/FileOutputStream;
invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v5, 0x5a
invoke-virtual {p0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
:try_end_3b
.catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3b} :catch_3c
:goto_3b
return-object v2
:catch_3c
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const/4 v2, 0x0
goto :goto_3b
.end method
.method public static setJpgDataInfos(Landroid/hardware/Camera$Size;)V
.registers 1
sput-object p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mJpgSize:Landroid/hardware/Camera$Size;
return-void
.end method
.method private setStableContextId(I)V
.registers 4
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsJpgData:Z
if-eqz v1, :cond_9
iput p1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mRecContextId:I
iput p1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurContextId:I
:goto_8
:cond_8
return-void
:cond_9
sget-object v1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->PERSON:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;
iget v1, v1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->index:I
if-eq p1, v1, :cond_15
sget-object v1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->PERSON_SCENERY:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;
iget v1, v1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->index:I
if-ne p1, v1, :cond_26
:cond_15
const/4 v0, 0x1
:goto_16
iget v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContextRecCounter:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContextRecCounter:I
iget v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContextRecCounter:I
if-le v1, v0, :cond_8
const/4 v1, 0x0
iput v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContextRecCounter:I
iput p1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mRecContextId:I
goto :goto_8
:cond_26
const/4 v0, 0x3
goto :goto_16
.end method
.method private setStableLightId(I)V
.registers 5
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsJpgData:Z
if-eqz v1, :cond_9
iput p1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mRecLightId:I
iput p1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurLightId:I
:goto_8
:cond_8
return-void
:cond_9
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->getNextLightId(I)I
move-result v0
iget v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurLightId:I
if-ne v0, v1, :cond_23
iget v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mRecContextId:I
iget v2, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurContextId:I
if-eq v1, v2, :cond_8
iget v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mRecContextId:I
iput v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurContextId:I
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsFrontCamera:Z
if-nez v1, :cond_8
invoke-direct {p0}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->requestEffectChange()V
goto :goto_8
:cond_23
iget v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mRecContextId:I
iput v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurContextId:I
iput v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurLightId:I
invoke-direct {p0}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->requestEffectChange()V
goto :goto_8
.end method
.method private updateDebugText()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mHandler:Landroid/os/Handler;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
return-void
.end method
.method public getCurEffectIds([BLandroid/hardware/Camera$Size;)[I
.registers 4
sget v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurOrientation:I
invoke-virtual {p0, p1, p2, v0}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->getCurEffectIds([BLandroid/hardware/Camera$Size;I)[I
move-result-object v0
return-object v0
.end method
.method public getCurEffectIds([BLandroid/hardware/Camera$Size;I)[I
.registers 10
const/4 v5, 0x2
const/4 v4, 0x0
const/4 v3, 0x1
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsFrontCamera:Z
if-nez v1, :cond_b
if-eqz p1, :cond_b
if-nez p2, :cond_16
:cond_b
new-array v1, v5, [I
iget v2, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurContextId:I
aput v2, v1, v4
iget v2, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurLightId:I
aput v2, v1, v3
:goto_15
return-object v1
:cond_16
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->setIsJpgSource(Z)V
invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->setScaledJpgData([BLandroid/hardware/Camera$Size;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iput-wide v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mTimestamp:J
invoke-virtual {p0, p3}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->setOrientation(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->initWorkers()V
iget-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContextRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;
if-eqz v1, :cond_31
iget-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContextRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->startProcess()V
:cond_31
iget-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mLightRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;
if-eqz v1, :cond_3a
iget-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mLightRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->startProcess()V
:try_start_3a
:cond_3a
iget-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCountDownLatcher:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
:goto_3f
:try_end_3f
.catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3f} :catch_56
invoke-direct {p0}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->releaseWorkers()V
const-string/jumbo v1, "EasyContextRecognizer"
const-string/jumbo v2, "\u8bc6\u522b\u603b\u7ebf\u7a0b\u7ed3\u675f"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
new-array v1, v5, [I
iget v2, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurContextId:I
aput v2, v1, v4
iget v2, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurLightId:I
aput v2, v1, v3
goto :goto_15
:catch_56
move-exception v0
invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
goto :goto_3f
.end method
.method public getDebugContent()Ljava/lang/String;
.registers 11
const/4 v9, 0x3
const/4 v8, 0x2
const/4 v7, 0x1
const/4 v6, 0x0
const-string/jumbo v2, "[%d]Rate:%f \u573a\u666f(CV): %s \u65f6\u95f4\uff1a%d"
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/Object;
iget v4, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContextRecCounter:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v6
iget v4, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceRecRate:F
invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v4
aput-object v4, v3, v7
iget v4, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mRecContextId:I
invoke-static {v4}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->getName(I)Ljava/lang/String;
move-result-object v4
aput-object v4, v3, v8
iget-wide v4, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContextRecTimeCost:J
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
aput-object v4, v3, v9
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v2, "[%d]\u5149\u7ebf\uff1a%s \u65f6\u95f4\uff1a%d"
new-array v3, v9, [Ljava/lang/Object;
iget v4, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mLightRecCounter:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v6
iget v4, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mRecLightId:I
invoke-static {v4}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->getName(I)Ljava/lang/String;
move-result-object v4
aput-object v4, v3, v7
iget-wide v4, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mLightRecTimeCost:J
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
aput-object v4, v3, v8
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
return-object v2
.end method
.method public initFaceDetecters()V
.registers 3
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectersIniting:Z
if-nez v0, :cond_8
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectersInited:Z
if-eqz v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectersIniting:Z
const-string/jumbo v0, "EasyContextRecognizer"
const-string/jumbo v1, "\u5f00\u542f\u4eba\u8138\u8bc6\u522b\u5668\u521d\u59cb\u5316\u7ebf\u7a0b"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectors:Ljava/util/HashMap;
new-instance v0, Lcom/faceplusplus/api/FaceDetecter;
invoke-direct {v0}, Lcom/faceplusplus/api/FaceDetecter;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetecter1:Lcom/faceplusplus/api/FaceDetecter;
new-instance v0, Lcom/faceplusplus/api/FaceDetecter;
invoke-direct {v0}, Lcom/faceplusplus/api/FaceDetecter;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetecter2:Lcom/faceplusplus/api/FaceDetecter;
iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;
iget-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->initDetectorThread:Ljava/lang/Thread;
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
goto :goto_8
.end method
.method public isCameraTypeSetted()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsCameraTypeSetted:Z
return v0
.end method
.method public isFaceDetectersInit()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectersInited:Z
if-nez v0, :cond_a
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectersIniting:Z
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_9
return v0
:cond_a
const/4 v0, 0x1
goto :goto_9
.end method
.method public isFaceDetectersInited()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectersInited:Z
return v0
.end method
.method public isFrontCamera()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsFrontCamera:Z
return v0
.end method
.method public isRunning()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mRunning:Z
return v0
.end method
.method public releaseFaceDetecters()V
.registers 5
const/4 v3, 0x0
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetecter1:Lcom/faceplusplus/api/FaceDetecter;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetecter1:Lcom/faceplusplus/api/FaceDetecter;
iget-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContext:Landroid/content/Context;
invoke-virtual {v0, v1}, Lcom/faceplusplus/api/FaceDetecter;->release(Landroid/content/Context;)Z
iput-object v2, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetecter1:Lcom/faceplusplus/api/FaceDetecter;
:cond_f
iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetecter2:Lcom/faceplusplus/api/FaceDetecter;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetecter2:Lcom/faceplusplus/api/FaceDetecter;
iget-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContext:Landroid/content/Context;
invoke-virtual {v0, v1}, Lcom/faceplusplus/api/FaceDetecter;->release(Landroid/content/Context;)Z
iput-object v2, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetecter2:Lcom/faceplusplus/api/FaceDetecter;
:cond_1c
sget-object v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectors:Ljava/util/HashMap;
if-eqz v0, :cond_27
sget-object v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectors:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
sput-object v2, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectors:Ljava/util/HashMap;
:cond_27
iput-boolean v3, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectersInited:Z
iput-boolean v3, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mForceStopFaceDetect:Z
return-void
.end method
.method public run()V
.registers 4
invoke-direct {p0}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->initWorkers()V
iget-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContextRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;
if-eqz v1, :cond_c
iget-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContextRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->startProcess()V
:cond_c
iget-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mLightRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;
if-eqz v1, :cond_15
iget-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mLightRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->startProcess()V
:cond_15
:try_start_15
iget-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCountDownLatcher:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
:goto_1a
:try_end_1a
.catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_1a} :catch_3a
invoke-direct {p0}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->releaseWorkers()V
const-string/jumbo v1, "EasyContextRecognizer"
const-string/jumbo v2, "\u8bc6\u522b\u603b\u7ebf\u7a0b\u7ed3\u675f"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mForceStopFaceDetect:Z
if-eqz v1, :cond_36
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->releaseFaceDetecters()V
const-string/jumbo v1, "EasyContextRecognizer"
const-string/jumbo v2, "\u4eba\u8138\u68c0\u6d4b\u505c\u6b62"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_36
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mRunning:Z
return-void
:catch_3a
move-exception v0
invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
goto :goto_1a
.end method
.method public setContextRecognizerCallback(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$IContextRecognizeCallback;)V
.registers 4
const-string/jumbo v0, "EasyContextRecognizer"
const-string/jumbo v1, "set callback"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iput-object p1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCallback:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$IContextRecognizeCallback;
return-void
.end method
.method public setIsFrontCamera(Z)V
.registers 5
const-string/jumbo v0, "EasyContextRecognizer"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "update camera type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsCameraTypeSetted:Z
iput-boolean p1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsFrontCamera:Z
sput-boolean p1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mStaticIsFrontCamera:Z
if-eqz p1, :cond_42
sget-object v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->PERSON:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;
iget v0, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->index:I
iput v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurContextId:I
sget-object v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->NORMAL:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
iget v0, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->index:I
iput v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurLightId:I
iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCallback:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$IContextRecognizeCallback;
if-eqz v0, :cond_41
const-string/jumbo v0, "EasyContextRecognizer"
const-string/jumbo v1, "update effect type "
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCallback:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$IContextRecognizeCallback;
iget v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurContextId:I
iget v2, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurLightId:I
invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$IContextRecognizeCallback;->effectChangeCallback(II)V
:goto_41
:cond_41
return-void
:cond_42
sget-object v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->SCENERY:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;
iget v0, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->index:I
iput v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurContextId:I
sget-object v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->NORMAL:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
iget v0, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->index:I
iput v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurLightId:I
iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCallback:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$IContextRecognizeCallback;
if-eqz v0, :cond_41
const-string/jumbo v0, "EasyContextRecognizer"
const-string/jumbo v1, "update effect type "
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCallback:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$IContextRecognizeCallback;
iget v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurContextId:I
iget v2, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurLightId:I
invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$IContextRecognizeCallback;->effectChangeCallback(II)V
goto :goto_41
.end method
.method public setIsJpgSource(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsJpgData:Z
return-void
.end method
.method public setOrientation(I)V
.registers 2
sput p1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mCurOrientation:I
return-void
.end method
.method public setPreviewData([B)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mPreviewData:[B
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mTimestamp:J
return-void
.end method
.method public setPreviewSize(Landroid/hardware/Camera$Size;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mPreviewSize:Landroid/hardware/Camera$Size;
return-void
.end method
.method public setScaledJpgData([BLandroid/hardware/Camera$Size;)V
.registers 8
const-wide/16 v3, 0x0
const v2, 0x3e99999a
iget v0, p2, Landroid/hardware/Camera$Size;->width:I
iget v1, p2, Landroid/hardware/Camera$Size;->height:I
invoke-direct {p0, p1, v0, v1, v2}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->getSelfScaledBytes([BIIF)[B
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mJpgBytes:[B
iget v0, p2, Landroid/hardware/Camera$Size;->width:I
iget v1, p2, Landroid/hardware/Camera$Size;->height:I
invoke-direct {p0, p1, v0, v1, v2}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->getSelfScaledImage([BIIF)Landroid/graphics/Bitmap;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mJpgBitmap:Landroid/graphics/Bitmap;
iput-wide v3, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContextTimeStamp:J
iput-wide v3, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mLightTimeStamp:J
return-void
.end method
.method public startRecognize()V
.registers 3
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mRunning:Z
if-nez v0, :cond_8
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectersInited:Z
if-nez v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mRunning:Z
iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;
invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
const-string/jumbo v0, "EasyContextRecognizer"
const-string/jumbo v1, "\u5f00\u542f\u8bc6\u522b\u603b\u7ebf\u7a0b"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_8
.end method
.method public stopFaceDetecters()V
.registers 3
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsJpgData:Z
if-eqz v0, :cond_15
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectersInited:Z
if-eqz v0, :cond_15
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->releaseFaceDetecters()V
const-string/jumbo v0, "EasyContextRecognizer"
const-string/jumbo v1, "\u4eba\u8138\u68c0\u6d4b\u505c\u6b62"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_14
return-void
:cond_15
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mForceStopFaceDetect:Z
goto :goto_14
.end method
.method public stopRecognize()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContextRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContextRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->stopProcess()V
:cond_9
iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mLightRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mLightRecognizer:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->stopProcess()V
:cond_12
const-string/jumbo v0, "EasyContextRecognizer"
const-string/jumbo v1, "\u5173\u95ed\u8bc6\u522b\u603b\u7ebf\u7a0b"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method