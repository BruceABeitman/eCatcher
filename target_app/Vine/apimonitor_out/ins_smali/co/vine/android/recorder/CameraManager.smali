.class public Lco/vine/android/recorder/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"
.implements Landroid/hardware/Camera$OnZoomChangeListener;
.field private static INSTANCE:Lco/vine/android/recorder/CameraManager;
.field private static hasPreallocateBuffers:Z
.field private static final mBackFacing:[Ljava/lang/Integer;
.field private static final mFrontFacing:[Ljava/lang/Integer;
.field public static sCameraBufferCount:I
.field private static final sCameraInfoTable:Landroid/util/SparseArray;
.field private static final sCameraSettingTable:Landroid/util/SparseArray;
.field private volatile isPreviewing:Z
.field private final mAddArray:Ljava/util/concurrent/ConcurrentLinkedQueue;
.field private final mAddedBufferArray:Ljava/util/Set;
.field private mAutoStopZoomCalled:Z
.field private final mBufferArray:Ljava/util/concurrent/ConcurrentLinkedQueue;
.field private mCamera:Landroid/hardware/Camera;
.field private mCameraSetting:Lco/vine/android/recorder/CameraSetting;
.field private mController:Lco/vine/android/recorder/RecordController;
.field private mControllerId:Ljava/lang/String;
.field private mCurrentCamera:I
.field private mCurrentZoomTarget:I
.field private mFocusArea:Ljava/util/ArrayList;
.field private mFrameSize:I
.field private mFramesReceived:J
.field private final mIntentionalObjectCounter:Lco/vine/android/util/IntentionalObjectCounter;
.field private mIsCurrentFront:Z
.field private mIsSmoothZoomSupported:Z
.field private mIsSmoothZooming:Z
.field private mIsSmoothZoomingStopCalled:Z
.field private final mLOCK:[I
.field private mLastPreviewFrameTimestamp:J
.field private final mMatrix:Landroid/graphics/Matrix;
.field private mMaxZoom:I
.field private mMaxtimeElapsed:J
.field private mPreviewHeight:I
.field private mPreviewStartTime:J
.field private mPreviewWidth:I
.field private mRequestedZoom:I
.field private volatile mRunAddBufferThread:Z
.field private mSharedByteBuffer:Ljava/nio/ByteBuffer;
.field private mStartPreviewThread:Lco/vine/android/recorder/CameraManager$StartPreviewThread;
.method static constructor <clinit>()V
.registers 11
const/4 v10, 0x1
new-instance v1, Landroid/hardware/Camera$CameraInfo;
invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V
invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I
move-result v5
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
const/4 v4, 0x0
:goto_15
if-ge v4, v5, :cond_44
:try_start_17
invoke-static {v4, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
iget v6, v1, Landroid/hardware/Camera$CameraInfo;->facing:I
if-ne v6, v10, :cond_28
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_25
:cond_25
add-int/lit8 v4, v4, 0x1
goto :goto_15
:cond_28
iget v6, v1, Landroid/hardware/Camera$CameraInfo;->facing:I
if-nez v6, :cond_25
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_33
.catch Ljava/lang/Exception; {:try_start_17 .. :try_end_33} :catch_34
goto :goto_25
:catch_34
move-exception v2
const-string v6, "Cannot get camera info for camera #{}."
new-array v7, v10, [Ljava/lang/Object;
const/4 v8, 0x0
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
aput-object v9, v7, v8
invoke-static {v2, v6, v7}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_25
:cond_44
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v6
new-array v6, v6, [Ljava/lang/Integer;
invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v6
check-cast v6, [Ljava/lang/Integer;
sput-object v6, Lco/vine/android/recorder/CameraManager;->mFrontFacing:[Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v6
new-array v6, v6, [Ljava/lang/Integer;
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v6
check-cast v6, [Ljava/lang/Integer;
sput-object v6, Lco/vine/android/recorder/CameraManager;->mBackFacing:[Ljava/lang/Integer;
new-instance v6, Landroid/util/SparseArray;
invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V
sput-object v6, Lco/vine/android/recorder/CameraManager;->sCameraInfoTable:Landroid/util/SparseArray;
new-instance v6, Landroid/util/SparseArray;
invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V
sput-object v6, Lco/vine/android/recorder/CameraManager;->sCameraSettingTable:Landroid/util/SparseArray;
return-void
.end method
.method private constructor <init>()V
.registers 4
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lco/vine/android/util/IntentionalObjectCounter;
const-string v1, "recorder"
invoke-direct {v0, v1, p0}, Lco/vine/android/util/IntentionalObjectCounter;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
iput-object v0, p0, Lco/vine/android/recorder/CameraManager;->mIntentionalObjectCounter:Lco/vine/android/util/IntentionalObjectCounter;
new-array v0, v2, [I
iput-object v0, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I
iput-boolean v2, p0, Lco/vine/android/recorder/CameraManager;->mIsCurrentFront:Z
const/4 v0, -0x1
iput v0, p0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/CameraManager;->mAddedBufferArray:Ljava/util/Set;
new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V
iput-object v0, p0, Lco/vine/android/recorder/CameraManager;->mBufferArray:Ljava/util/concurrent/ConcurrentLinkedQueue;
new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V
iput-object v0, p0, Lco/vine/android/recorder/CameraManager;->mAddArray:Ljava/util/concurrent/ConcurrentLinkedQueue;
const-wide/16 v0, -0x1
iput-wide v0, p0, Lco/vine/android/recorder/CameraManager;->mMaxtimeElapsed:J
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
iput-object v0, p0, Lco/vine/android/recorder/CameraManager;->mMatrix:Landroid/graphics/Matrix;
return-void
.end method
.method static synthetic access$000(Lco/vine/android/recorder/CameraManager;)Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/recorder/CameraManager;->mRunAddBufferThread:Z
return v0
.end method
.method static synthetic access$002(Lco/vine/android/recorder/CameraManager;Z)Z
.registers 2
iput-boolean p1, p0, Lco/vine/android/recorder/CameraManager;->mRunAddBufferThread:Z
return p1
.end method
.method static synthetic access$100(Lco/vine/android/recorder/CameraManager;)Landroid/hardware/Camera;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
return-object v0
.end method
.method static synthetic access$1000(Lco/vine/android/recorder/CameraManager;)[I
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I
return-object v0
.end method
.method static synthetic access$1102(Lco/vine/android/recorder/CameraManager;J)J
.registers 3
iput-wide p1, p0, Lco/vine/android/recorder/CameraManager;->mLastPreviewFrameTimestamp:J
return-wide p1
.end method
.method static synthetic access$1202(Lco/vine/android/recorder/CameraManager;J)J
.registers 3
iput-wide p1, p0, Lco/vine/android/recorder/CameraManager;->mFramesReceived:J
return-wide p1
.end method
.method static synthetic access$1302(Lco/vine/android/recorder/CameraManager;J)J
.registers 3
iput-wide p1, p0, Lco/vine/android/recorder/CameraManager;->mPreviewStartTime:J
return-wide p1
.end method
.method static synthetic access$200(Lco/vine/android/recorder/CameraManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mAddArray:Ljava/util/concurrent/ConcurrentLinkedQueue;
return-object v0
.end method
.method static synthetic access$300(Lco/vine/android/recorder/CameraManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mBufferArray:Ljava/util/concurrent/ConcurrentLinkedQueue;
return-object v0
.end method
.method static synthetic access$400(Lco/vine/android/recorder/CameraManager;)Lco/vine/android/recorder/RecordController;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mController:Lco/vine/android/recorder/RecordController;
return-object v0
.end method
.method static synthetic access$500(Lco/vine/android/recorder/CameraManager;)Ljava/util/Set;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mAddedBufferArray:Ljava/util/Set;
return-object v0
.end method
.method static synthetic access$600(Lco/vine/android/recorder/CameraManager;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mControllerId:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$602(Lco/vine/android/recorder/CameraManager;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/CameraManager;->mControllerId:Ljava/lang/String;
return-object p1
.end method
.method static synthetic access$700()Z
.registers 1
sget-boolean v0, Lco/vine/android/recorder/CameraManager;->hasPreallocateBuffers:Z
return v0
.end method
.method static synthetic access$702(Z)Z
.registers 1
sput-boolean p0, Lco/vine/android/recorder/CameraManager;->hasPreallocateBuffers:Z
return p0
.end method
.method static synthetic access$800(Lco/vine/android/recorder/CameraManager;)I
.registers 2
iget v0, p0, Lco/vine/android/recorder/CameraManager;->mFrameSize:I
return v0
.end method
.method static synthetic access$900(Lco/vine/android/recorder/CameraManager;)Ljava/nio/ByteBuffer;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mSharedByteBuffer:Ljava/nio/ByteBuffer;
return-object v0
.end method
.method static synthetic access$902(Lco/vine/android/recorder/CameraManager;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/CameraManager;->mSharedByteBuffer:Ljava/nio/ByteBuffer;
return-object p1
.end method
.method private calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
.registers 19
int-to-float v6, p1
mul-float/2addr v6, p3
float-to-int v2, v6
int-to-float v6, p2
mul-float/2addr v6, p3
float-to-int v1, v6
div-int/lit8 v6, v2, 0x2
sub-int v6, p4, v6
const/4 v7, 0x0
sub-int v8, p6, v2
invoke-static {v6, v7, v8}, Lco/vine/android/util/MathUtil;->clamp(III)I
move-result v3
div-int/lit8 v6, v1, 0x2
sub-int v6, p5, v6
const/4 v7, 0x0
sub-int v8, p7, v1
invoke-static {v6, v7, v8}, Lco/vine/android/util/MathUtil;->clamp(III)I
move-result v5
new-instance v4, Landroid/graphics/RectF;
int-to-float v6, v3
int-to-float v7, v5
add-int v8, v3, v2
int-to-float v8, v8
add-int v9, v5, v1
int-to-float v9, v9
invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V
iget-object v6, p0, Lco/vine/android/recorder/CameraManager;->mMatrix:Landroid/graphics/Matrix;
invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z
move-object/from16 v0, p8
invoke-static {v4, v0}, Lco/vine/android/util/MathUtil;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
return-void
.end method
.method private disableVideoStab(Landroid/hardware/Camera$Parameters;)V
.registers 4
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xf
if-lt v0, v1, :cond_10
invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z
move-result v0
if-eqz v0, :cond_10
const/4 v0, 0x0
invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V
:cond_10
return-void
.end method
.method public static declared-synchronized getCameraDisplayOrientation(II)I
.registers 7
const-class v3, Lco/vine/android/recorder/CameraManager;
monitor-enter v3
:try_start_3
sget-object v2, Lco/vine/android/recorder/CameraManager;->sCameraInfoTable:Landroid/util/SparseArray;
invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/hardware/Camera$CameraInfo;
if-nez v0, :cond_33
new-instance v0, Landroid/hardware/Camera$CameraInfo;
invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V
invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
sget-object v2, Lco/vine/android/recorder/CameraManager;->sCameraInfoTable:Landroid/util/SparseArray;
invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
:goto_1a
const-string v2, "Set rotation to {} degrees"
invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-static {v2, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I
const/4 v4, 0x1
if-ne v2, v4, :cond_3c
iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I
add-int/2addr v2, p0
rem-int/lit16 v1, v2, 0x168
rsub-int v2, v1, 0x168
rem-int/lit16 v1, v2, 0x168
:goto_31
:try_end_31
.catchall {:try_start_3 .. :try_end_31} :catchall_39
monitor-exit v3
return v1
:cond_33
:try_start_33
const-string v2, "Using cached camera info."
invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V
:try_end_38
.catchall {:try_start_33 .. :try_end_38} :catchall_39
goto :goto_1a
:catchall_39
move-exception v2
monitor-exit v3
throw v2
:try_start_3c
:cond_3c
iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I
sub-int/2addr v2, p0
add-int/lit16 v2, v2, 0x168
rem-int/lit16 v1, v2, 0x168
:try_end_43
.catchall {:try_start_3c .. :try_end_43} :catchall_39
goto :goto_31
.end method
.method public static getCameraInfo(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;ILandroid/hardware/Camera$Parameters;IZ)Lco/vine/android/recorder/CameraSetting;
.registers 27
move/from16 v0, p3
move/from16 v1, p1
invoke-static {v0, v1}, Lco/vine/android/recorder/CameraManager;->getCameraDisplayOrientation(II)I
move-result v5
if-eqz p4, :cond_b
neg-int v5, v5
:cond_b
sget-object v8, Lco/vine/android/recorder/CameraManager;->sCameraSettingTable:Landroid/util/SparseArray;
move/from16 v0, p1
invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/recorder/CameraSetting;
if-eqz v2, :cond_25
new-instance v11, Lco/vine/android/recorder/CameraSetting;
invoke-direct {v11, v2}, Lco/vine/android/recorder/CameraSetting;-><init>(Lco/vine/android/recorder/CameraSetting;)V
iput v5, v11, Lco/vine/android/recorder/CameraSetting;->degrees:I
const-string v8, "Using cached camera setting."
invoke-static {v8}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V
move-object v2, v11
:goto_24
return-object v11
:cond_25
const/16 v16, 0x0
:try_start_27
invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;
:try_end_2a
.catch Ljava/lang/NullPointerException; {:try_start_27 .. :try_end_2a} :catch_1e2
move-result-object v16
:goto_2b
const/16 v7, 0x11
if-eqz v16, :cond_6f
invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v15
:cond_33
invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_4f
invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v14
check-cast v14, Ljava/lang/Integer;
const-string v8, "Supported format: {}"
invoke-static {v8, v14}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I
move-result v8
const/4 v9, 0x4
if-ne v8, v9, :cond_33
invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I
move-result v7
:cond_4f
const/16 v8, 0x11
if-ne v7, v8, :cond_6f
invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v15
:cond_57
invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_6f
invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v14
check-cast v14, Ljava/lang/Integer;
invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I
move-result v8
const/16 v9, 0x100
if-ne v8, v9, :cond_57
invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I
move-result v7
:cond_6f
const-string v8, "Selected format: {}."
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
invoke-static {v8, v9}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
const/4 v8, 0x4
:try_start_79
move/from16 v0, p1
invoke-static {v0, v8}, Landroid/media/CamcorderProfile;->hasProfile(II)Z
move-result v8
if-eqz v8, :cond_1ea
const/4 v8, 0x4
move/from16 v0, p1
invoke-static {v0, v8}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;
move-result-object v12
const-string v8, "Use default profile"
invoke-static {v8}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
:goto_8d
const-string v8, "Preferred FrameRate: {}."
iget v9, v12, Landroid/media/CamcorderProfile;->videoFrameRate:I
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
invoke-static {v8, v9}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
iget v8, v12, Landroid/media/CamcorderProfile;->videoFrameRate:I
move-object/from16 v0, p0
iget v9, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetFrameRate:I
if-lt v8, v9, :cond_a6
move-object/from16 v0, p0
iget v8, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetFrameRate:I
iput v8, v12, Landroid/media/CamcorderProfile;->videoFrameRate:I
:cond_a6
const-string v8, "Original Width * Height: {}/{}"
const/4 v9, 0x2
new-array v9, v9, [Ljava/lang/Object;
const/4 v10, 0x0
iget v0, v12, Landroid/media/CamcorderProfile;->videoFrameWidth:I
move/from16 v21, v0
invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v21
aput-object v21, v9, v10
const/4 v10, 0x1
iget v0, v12, Landroid/media/CamcorderProfile;->videoFrameHeight:I
move/from16 v21, v0
invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v21
aput-object v21, v9, v10
invoke-static {v8, v9}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
move-object/from16 v0, p0
iget v8, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewWidth:I
iput v8, v12, Landroid/media/CamcorderProfile;->videoFrameWidth:I
iget v8, v12, Landroid/media/CamcorderProfile;->videoFrameHeight:I
iget v9, v12, Landroid/media/CamcorderProfile;->videoFrameWidth:I
if-le v8, v9, :cond_da
move-object/from16 v0, p0
iget-boolean v8, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->highQuality:Z
if-eqz v8, :cond_1f3
const/16 v8, 0x1e0
:goto_d8
iput v8, v12, Landroid/media/CamcorderProfile;->videoFrameHeight:I
:cond_da
const-string v8, "Video: {}*{} codec: {} bitRate:{} frameRate:{}."
const/4 v9, 0x5
new-array v9, v9, [Ljava/lang/Object;
const/4 v10, 0x0
iget v0, v12, Landroid/media/CamcorderProfile;->videoFrameWidth:I
move/from16 v21, v0
invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v21
aput-object v21, v9, v10
const/4 v10, 0x1
iget v0, v12, Landroid/media/CamcorderProfile;->videoFrameHeight:I
move/from16 v21, v0
invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v21
aput-object v21, v9, v10
const/4 v10, 0x2
iget v0, v12, Landroid/media/CamcorderProfile;->videoCodec:I
move/from16 v21, v0
invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v21
aput-object v21, v9, v10
const/4 v10, 0x3
iget v0, v12, Landroid/media/CamcorderProfile;->videoBitRate:I
move/from16 v21, v0
invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v21
aput-object v21, v9, v10
const/4 v10, 0x4
iget v0, v12, Landroid/media/CamcorderProfile;->videoFrameRate:I
move/from16 v21, v0
invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v21
aput-object v21, v9, v10
invoke-static {v8, v9}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
const-string v8, "Audio: bitRate:{} channels: {} codec: {} sampleRate: {} "
const/4 v9, 0x4
new-array v9, v9, [Ljava/lang/Object;
const/4 v10, 0x0
iget v0, v12, Landroid/media/CamcorderProfile;->audioBitRate:I
move/from16 v21, v0
invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v21
aput-object v21, v9, v10
const/4 v10, 0x1
iget v0, v12, Landroid/media/CamcorderProfile;->audioChannels:I
move/from16 v21, v0
invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v21
aput-object v21, v9, v10
const/4 v10, 0x2
iget v0, v12, Landroid/media/CamcorderProfile;->audioCodec:I
move/from16 v21, v0
invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v21
aput-object v21, v9, v10
const/4 v10, 0x3
iget v0, v12, Landroid/media/CamcorderProfile;->audioSampleRate:I
move/from16 v21, v0
invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v21
aput-object v21, v9, v10
invoke-static {v8, v9}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
iget v3, v12, Landroid/media/CamcorderProfile;->videoFrameWidth:I
iget v4, v12, Landroid/media/CamcorderProfile;->videoFrameHeight:I
iget v6, v12, Landroid/media/CamcorderProfile;->videoFrameRate:I
:try_end_153
.catch Ljava/lang/Exception; {:try_start_79 .. :try_end_153} :catch_1f7
.catch Ljava/lang/UnsatisfiedLinkError; {:try_start_79 .. :try_end_153} :catch_296
:goto_153
const-string v8, "FFC OR: {}."
move-object/from16 v0, p0
iget v9, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->frontFacingAspectRatioOverride:F
invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v9
invoke-static {v8, v9}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
const-string v8, "BFC OR: {}."
move-object/from16 v0, p0
iget v9, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->backFacingAspectRatioOverride:F
invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v9
invoke-static {v8, v9}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
const/16 v8, 0x280
if-ne v3, v8, :cond_17c
const/16 v8, 0x1e0
if-eq v4, v8, :cond_17c
const-string v8, "Force 480 with 480p."
invoke-static {v8}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
const/16 v4, 0x1e0
:cond_17c
new-instance v2, Lco/vine/android/recorder/CameraSetting;
move-object/from16 v0, p0
iget v9, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->frontFacingAspectRatioOverride:F
move-object/from16 v0, p0
iget v10, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->backFacingAspectRatioOverride:F
move/from16 v8, p4
invoke-direct/range {v2 .. v10}, Lco/vine/android/recorder/CameraSetting;-><init>(IIIIIZFF)V
sget-object v8, Lco/vine/android/recorder/CameraManager;->sCameraSettingTable:Landroid/util/SparseArray;
move/from16 v0, p1
invoke-virtual {v8, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
new-instance v11, Lco/vine/android/recorder/CameraSetting;
invoke-direct {v11, v2}, Lco/vine/android/recorder/CameraSetting;-><init>(Lco/vine/android/recorder/CameraSetting;)V
sget-boolean v8, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z
if-eqz v8, :cond_308
invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;
move-result-object v18
if-eqz v18, :cond_1b6
const-string v8, "Preferred Width * Height: {}/{}."
move-object/from16 v0, v18
iget v9, v0, Landroid/hardware/Camera$Size;->width:I
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
move-object/from16 v0, v18
iget v10, v0, Landroid/hardware/Camera$Size;->height:I
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
invoke-static {v8, v9, v10}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
:cond_1b6
invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;
move-result-object v19
if-eqz v19, :cond_29d
invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v15
:goto_1c0
invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_29d
invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v17
check-cast v17, Landroid/hardware/Camera$Size;
const-string v8, "Supported Video Width * Height: {}/{}."
move-object/from16 v0, v17
iget v9, v0, Landroid/hardware/Camera$Size;->width:I
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
move-object/from16 v0, v17
iget v10, v0, Landroid/hardware/Camera$Size;->height:I
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
invoke-static {v8, v9, v10}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
goto :goto_1c0
:catch_1e2
move-exception v13
const-string v8, "This device sucks, it cannot return params properly."
invoke-static {v8}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
goto/16 :goto_2b
:cond_1ea
const/4 v8, 0x1
:try_start_1eb
move/from16 v0, p1
invoke-static {v0, v8}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;
:try_end_1f0
.catch Ljava/lang/Exception; {:try_start_1eb .. :try_end_1f0} :catch_1f7
.catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1eb .. :try_end_1f0} :catch_296
move-result-object v12
goto/16 :goto_8d
:cond_1f3
const/16 v8, 0xf0
goto/16 :goto_d8
:catch_1f7
move-exception v13
invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;
move-result-object v19
new-instance v20, Ljava/util/HashSet;
invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V
if-eqz v19, :cond_28d
invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v15
:cond_207
:goto_207
invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_24d
invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v18
check-cast v18, Landroid/hardware/Camera$Size;
const-string v8, "Supported width and height: {}, {}."
const/4 v9, 0x2
new-array v9, v9, [Ljava/lang/Object;
const/4 v10, 0x0
move-object/from16 v0, v18
iget v0, v0, Landroid/hardware/Camera$Size;->width:I
move/from16 v21, v0
invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v21
aput-object v21, v9, v10
const/4 v10, 0x1
move-object/from16 v0, v18
iget v0, v0, Landroid/hardware/Camera$Size;->height:I
move/from16 v21, v0
invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v21
aput-object v21, v9, v10
invoke-static {v8, v9}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
move-object/from16 v0, v18
iget v8, v0, Landroid/hardware/Camera$Size;->height:I
move-object/from16 v0, p0
iget v9, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetSize:I
if-ne v8, v9, :cond_207
move-object/from16 v0, v18
iget v8, v0, Landroid/hardware/Camera$Size;->width:I
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
move-object/from16 v0, v20
invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_207
:cond_24d
invoke-interface/range {v20 .. v20}, Ljava/util/Set;->isEmpty()Z
move-result v8
if-eqz v8, :cond_266
const-string v8, "Edison: Target size is not supported."
invoke-static {v8}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
move-object/from16 v0, p0
iget v4, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewHeight:I
move-object/from16 v0, p0
iget v3, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewWidth:I
:goto_260
move-object/from16 v0, p0
iget v6, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetFrameRate:I
goto/16 :goto_153
:cond_266
move-object/from16 v0, p0
iget v8, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewWidth:I
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
move-object/from16 v0, v20
invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_27f
move-object/from16 v0, p0
iget v4, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewHeight:I
move-object/from16 v0, p0
iget v3, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewWidth:I
goto :goto_260
:cond_27f
const-string v8, "Edison: Target width is not supported."
invoke-static {v8}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
move-object/from16 v0, p0
iget v4, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewHeight:I
move-object/from16 v0, p0
iget v3, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewWidth:I
goto :goto_260
:cond_28d
move-object/from16 v0, p0
iget v4, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewHeight:I
move-object/from16 v0, p0
iget v3, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewWidth:I
goto :goto_260
:catch_296
move-exception v13
new-instance v8, Lco/vine/android/VineNotSupportedException;
invoke-direct {v8, v13}, Lco/vine/android/VineNotSupportedException;-><init>(Ljava/lang/Throwable;)V
throw v8
:cond_29d
invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;
move-result-object v19
if-eqz v19, :cond_2c9
invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v15
:goto_2a7
invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_2c9
invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v17
check-cast v17, Landroid/hardware/Camera$Size;
const-string v8, "Supported Preview Width * Height: {}/{}."
move-object/from16 v0, v17
iget v9, v0, Landroid/hardware/Camera$Size;->width:I
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
move-object/from16 v0, v17
iget v10, v0, Landroid/hardware/Camera$Size;->height:I
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
invoke-static {v8, v9, v10}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
goto :goto_2a7
:cond_2c9
const-string v8, "Camera w/h/f/p/d: {}/{}/{}/{}/{}"
const/4 v9, 0x5
new-array v9, v9, [Ljava/lang/Object;
const/4 v10, 0x0
iget v0, v11, Lco/vine/android/recorder/CameraSetting;->originalW:I
move/from16 v21, v0
invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v21
aput-object v21, v9, v10
const/4 v10, 0x1
iget v0, v11, Lco/vine/android/recorder/CameraSetting;->originalH:I
move/from16 v21, v0
invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v21
aput-object v21, v9, v10
const/4 v10, 0x2
iget v0, v11, Lco/vine/android/recorder/CameraSetting;->frameRate:I
move/from16 v21, v0
invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v21
aput-object v21, v9, v10
const/4 v10, 0x3
invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I
move-result v21
invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v21
aput-object v21, v9, v10
const/4 v10, 0x4
iget v0, v11, Lco/vine/android/recorder/CameraSetting;->degrees:I
move/from16 v21, v0
invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v21
aput-object v21, v9, v10
invoke-static {v8, v9}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_308
move-object v2, v11
goto/16 :goto_24
.end method
.method public static getCameraRotation(Landroid/app/Activity;)I
.registers 4
const/4 v1, 0x0
invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v2
invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v2
invoke-virtual {v2}, Landroid/view/Display;->getRotation()I
move-result v0
packed-switch v0, :pswitch_data_1a
:pswitch_10
:goto_10
return v1
:pswitch_11
const/16 v1, 0x5a
goto :goto_10
:pswitch_14
const/16 v1, 0xb4
goto :goto_10
:pswitch_17
const/16 v1, 0x10e
goto :goto_10
:pswitch_data_1a
.packed-switch 0x0
:pswitch_10
:pswitch_11
:pswitch_14
:pswitch_17
.end packed-switch
.end method
.method public static declared-synchronized getInstance()Lco/vine/android/recorder/CameraManager;
.registers 2
const-class v1, Lco/vine/android/recorder/CameraManager;
monitor-enter v1
:try_start_3
sget-object v0, Lco/vine/android/recorder/CameraManager;->INSTANCE:Lco/vine/android/recorder/CameraManager;
if-nez v0, :cond_e
new-instance v0, Lco/vine/android/recorder/CameraManager;
invoke-direct {v0}, Lco/vine/android/recorder/CameraManager;-><init>()V
sput-object v0, Lco/vine/android/recorder/CameraManager;->INSTANCE:Lco/vine/android/recorder/CameraManager;
:cond_e
sget-object v0, Lco/vine/android/recorder/CameraManager;->INSTANCE:Lco/vine/android/recorder/CameraManager;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method private getNextParamValue(ZLjava/util/List;Ljava/lang/String;)Ljava/lang/String;
.registers 7
if-eqz p2, :cond_3e
const/4 v0, 0x0
:goto_3
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v1
if-ge v0, v1, :cond_15
invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_35
:cond_15
if-eqz p1, :cond_38
add-int/lit8 v0, v0, 0x1
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v1
if-lt v0, v1, :cond_25
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v1
add-int/lit8 v0, v1, -0x1
:goto_25
:cond_25
const-string v1, "Modify to: {}"
invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
invoke-static {v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
:goto_34
return-object v1
:cond_35
add-int/lit8 v0, v0, 0x1
goto :goto_3
:cond_38
add-int/lit8 v0, v0, -0x1
if-gez v0, :cond_3d
const/4 v0, 0x0
:cond_3d
goto :goto_25
:cond_3e
const/4 v1, 0x0
goto :goto_34
.end method
.method public static hasBackFacingCamera()Z
.registers 1
sget-object v0, Lco/vine/android/recorder/CameraManager;->mBackFacing:[Ljava/lang/Integer;
array-length v0, v0
if-lez v0, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public static hasCamera()Z
.registers 1
invoke-static {}, Lco/vine/android/recorder/CameraManager;->hasBackFacingCamera()Z
move-result v0
if-nez v0, :cond_c
invoke-static {}, Lco/vine/android/recorder/CameraManager;->hasFrontFacingCamera()Z
move-result v0
if-eqz v0, :cond_e
:cond_c
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public static hasFrontFacingCamera()Z
.registers 1
sget-object v0, Lco/vine/android/recorder/CameraManager;->mFrontFacing:[Ljava/lang/Integer;
array-length v0, v0
if-lez v0, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method private initializeFocusAreas(II)V
.registers 12
const/16 v1, 0x64
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mFocusArea:Ljava/util/ArrayList;
if-nez v0, :cond_1d
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lco/vine/android/recorder/CameraManager;->mFocusArea:Ljava/util/ArrayList;
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mFocusArea:Ljava/util/ArrayList;
new-instance v2, Landroid/hardware/Camera$Area;
new-instance v3, Landroid/graphics/Rect;
invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V
const/4 v4, 0x1
invoke-direct {v2, v3, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_1d
const/high16 v3, 0x3f80
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCameraSetting:Lco/vine/android/recorder/CameraSetting;
iget v6, v0, Lco/vine/android/recorder/CameraSetting;->originalW:I
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCameraSetting:Lco/vine/android/recorder/CameraSetting;
iget v7, v0, Lco/vine/android/recorder/CameraSetting;->originalH:I
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mFocusArea:Ljava/util/ArrayList;
const/4 v2, 0x0
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/hardware/Camera$Area;
iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;
move-object v0, p0
move v2, v1
move v4, p1
move v5, p2
invoke-direct/range {v0 .. v8}, Lco/vine/android/recorder/CameraManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
return-void
.end method
.method public static preLoadCameras(Landroid/content/Context;)V
.registers 3
invoke-static {}, Lco/vine/android/recorder/CameraManager;->getInstance()Lco/vine/android/recorder/CameraManager;
move-result-object v0
invoke-static {p0}, Lco/vine/android/recorder/RecordConfigUtils;->getGenericConfig(Landroid/content/Context;)Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
move-result-object v1
invoke-virtual {v0, v1}, Lco/vine/android/recorder/CameraManager;->preLoadCameras(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;)V
return-void
.end method
.method private safeCameraOpen(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;ZIIZ)Lco/vine/android/recorder/CameraSetting;
.registers 14
const/4 v4, -0x1
if-ne p3, v4, :cond_5
const/4 v4, 0x0
:goto_4
return-object v4
:cond_5
iget-object v5, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I
monitor-enter v5
if-nez p5, :cond_e
:try_start_a
iget v4, p0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I
if-eq v4, p3, :cond_13
:cond_e
const-string v4, "safeCameraOpen"
invoke-virtual {p0, v4}, Lco/vine/android/recorder/CameraManager;->releaseCameraAndPreview(Ljava/lang/String;)V
:cond_13
:try_end_13
.catchall {:try_start_a .. :try_end_13} :catchall_89
if-nez p5, :cond_1d
:try_start_15
iget-object v4, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
if-eqz v4, :cond_1d
iget v4, p0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I
if-eq v4, p3, :cond_8c
:cond_1d
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-static {p3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
move-result-object v4
iput-object v4, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
iget-object v4, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v4, p0}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
const-string v4, "Open camera took {}ms."
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
sub-long/2addr v6, v2
invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v6
invoke-static {v4, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
const/4 v4, 0x0
iput-boolean v4, p0, Lco/vine/android/recorder/CameraManager;->mIsSmoothZooming:Z
const/4 v4, 0x0
iput-boolean v4, p0, Lco/vine/android/recorder/CameraManager;->mAutoStopZoomCalled:Z
const/4 v4, 0x0
iput-boolean v4, p0, Lco/vine/android/recorder/CameraManager;->mIsSmoothZoomingStopCalled:Z
const/4 v4, -0x1
iput v4, p0, Lco/vine/android/recorder/CameraManager;->mCurrentZoomTarget:I
:goto_46
const/4 v4, 0x0
iput-object v4, p0, Lco/vine/android/recorder/CameraManager;->mCameraSetting:Lco/vine/android/recorder/CameraSetting;
iget-object v4, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v1
invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I
move-result v4
iput v4, p0, Lco/vine/android/recorder/CameraManager;->mMaxZoom:I
sget-boolean v4, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->IS_ZERO_INDEX_BASED_ZOOM:Z
if-eqz v4, :cond_94
iget v4, p0, Lco/vine/android/recorder/CameraManager;->mMaxZoom:I
add-int/lit8 v4, v4, -0x1
iput v4, p0, Lco/vine/android/recorder/CameraManager;->mMaxZoom:I
const/4 v4, 0x0
iput v4, p0, Lco/vine/android/recorder/CameraManager;->mRequestedZoom:I
:goto_62
sget-boolean v4, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->SHOULD_FORCE_SMOOTH_ZOOM:Z
if-nez v4, :cond_6c
invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z
move-result v4
if-eqz v4, :cond_a0
:cond_6c
const/4 v4, 0x1
:goto_6d
iput-boolean v4, p0, Lco/vine/android/recorder/CameraManager;->mIsSmoothZoomSupported:Z
iget-object v4, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
if-eqz v4, :cond_9c
const-string v4, "1. Open Camera."
invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
iput p3, p0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I
iput-boolean p2, p0, Lco/vine/android/recorder/CameraManager;->mIsCurrentFront:Z
iget v4, p0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I
invoke-static {p1, v4, v1, p4, p2}, Lco/vine/android/recorder/CameraManager;->getCameraInfo(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;ILandroid/hardware/Camera$Parameters;IZ)Lco/vine/android/recorder/CameraSetting;
move-result-object v4
iput-object v4, p0, Lco/vine/android/recorder/CameraManager;->mCameraSetting:Lco/vine/android/recorder/CameraSetting;
iget-object v4, p0, Lco/vine/android/recorder/CameraManager;->mCameraSetting:Lco/vine/android/recorder/CameraSetting;
:try_end_86
.catchall {:try_start_15 .. :try_end_86} :catchall_89
.catch Lco/vine/android/VineNotSupportedException; {:try_start_15 .. :try_end_86} :catch_92
.catch Ljava/lang/Exception; {:try_start_15 .. :try_end_86} :catch_98
:try_start_86
monitor-exit v5
goto/16 :goto_4
:catchall_89
move-exception v4
monitor-exit v5
:try_end_8b
.catchall {:try_start_86 .. :try_end_8b} :catchall_89
throw v4
:try_start_8c
:cond_8c
const-string v4, "Camera was already opened."
invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
:try_end_91
.catchall {:try_start_8c .. :try_end_91} :catchall_89
.catch Lco/vine/android/VineNotSupportedException; {:try_start_8c .. :try_end_91} :catch_92
.catch Ljava/lang/Exception; {:try_start_8c .. :try_end_91} :catch_98
goto :goto_46
:catch_92
move-exception v0
:try_start_93
throw v0
:cond_94
:try_end_94
.catchall {:try_start_93 .. :try_end_94} :catchall_89
const/4 v4, 0x1
:try_start_95
iput v4, p0, Lco/vine/android/recorder/CameraManager;->mRequestedZoom:I
:try_end_97
.catchall {:try_start_95 .. :try_end_97} :catchall_89
.catch Lco/vine/android/VineNotSupportedException; {:try_start_95 .. :try_end_97} :catch_92
.catch Ljava/lang/Exception; {:try_start_95 .. :try_end_97} :catch_98
goto :goto_62
:catch_98
move-exception v0
:try_start_99
invoke-static {v0}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
:cond_9c
monitor-exit v5
:try_end_9d
.catchall {:try_start_99 .. :try_end_9d} :catchall_89
const/4 v4, 0x0
goto/16 :goto_4
:cond_a0
const/4 v4, 0x0
goto :goto_6d
.end method
.method private startPreview(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;Landroid/view/Surface;Landroid/graphics/SurfaceTexture;ZZIII)V
.registers 21
iget-object v8, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I
monitor-enter v8
:try_start_3
iget-boolean v7, p0, Lco/vine/android/recorder/CameraManager;->isPreviewing:Z
if-eqz v7, :cond_e
const-string v7, "Do not preview again."
invoke-static {v7}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
:try_start_c
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_fa
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_106
monitor-exit v8
:try_end_d
.catchall {:try_start_c .. :try_end_d} :catchall_fa
:goto_d
return-void
:try_start_e
:cond_e
iget-object v7, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
if-eqz v7, :cond_f7
const-string v7, "2,3: Set preview display and start preview."
invoke-static {v7}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
if-eqz p2, :cond_fd
iget-object v7, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
new-instance v9, Lco/vine/android/recorder/CameraManager$DummySurfaceHolder;
invoke-direct {v9, p2}, Lco/vine/android/recorder/CameraManager$DummySurfaceHolder;-><init>(Landroid/view/Surface;)V
invoke-virtual {v7, v9}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
:goto_23
const/4 v7, 0x1
iput-boolean v7, p0, Lco/vine/android/recorder/CameraManager;->isPreviewing:Z
iget-object v7, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v4
move/from16 v0, p7
invoke-virtual {p0, v0}, Lco/vine/android/recorder/CameraManager;->fixOrientation(I)I
move-result v1
if-eqz p5, :cond_37
invoke-virtual {p0, v4}, Lco/vine/android/recorder/CameraManager;->startContinuousAutoFocus(Landroid/hardware/Camera$Parameters;)Z
:cond_37
if-eqz p4, :cond_3d
const/4 v7, 0x1
invoke-virtual {p0, v7}, Lco/vine/android/recorder/CameraManager;->changeFlashState(Z)V
:cond_3d
const/16 v7, 0x5a
if-eq v1, v7, :cond_45
const/16 v7, 0x10e
if-ne v1, v7, :cond_128
:cond_45
const/4 v3, 0x1
:goto_46
iget v7, p0, Lco/vine/android/recorder/CameraManager;->mPreviewWidth:I
iget v9, p0, Lco/vine/android/recorder/CameraManager;->mPreviewHeight:I
invoke-virtual {v4, v7, v9}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V
iget v7, p0, Lco/vine/android/recorder/CameraManager;->mPreviewWidth:I
iget v9, p0, Lco/vine/android/recorder/CameraManager;->mPreviewHeight:I
invoke-virtual {v4, v7, v9}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
iget v9, p0, Lco/vine/android/recorder/CameraManager;->mPreviewWidth:I
invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v9
invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v9, "x"
invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget v9, p0, Lco/vine/android/recorder/CameraManager;->mPreviewHeight:I
invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v9
invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
const-string v7, "video-size"
invoke-virtual {v4, v7, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V
sget-boolean v7, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->DISABLE_FACE_RECOGNITION:Z
if-eqz v7, :cond_87
const-string v7, "face-detection"
const-string v9, "off"
invoke-virtual {v4, v7, v9}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V
:cond_87
iget-boolean v7, p0, Lco/vine/android/recorder/CameraManager;->mIsCurrentFront:Z
if-eqz v7, :cond_8f
iget-boolean v7, p1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->frontFacingRecordingHint:Z
if-nez v7, :cond_97
:cond_8f
iget-boolean v7, p0, Lco/vine/android/recorder/CameraManager;->mIsCurrentFront:Z
if-nez v7, :cond_12b
iget-boolean v7, p1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->backFacingRecordingHint:Z
if-eqz v7, :cond_12b
:cond_97
const/4 v5, 0x1
:goto_98
if-eqz v5, :cond_9e
const/4 v7, 0x1
invoke-virtual {v4, v7}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V
:cond_9e
const-string v7, "Set preview size: {} * {}, {}, {}."
const/4 v9, 0x4
new-array v9, v9, [Ljava/lang/Object;
const/4 v10, 0x0
iget v11, p0, Lco/vine/android/recorder/CameraManager;->mPreviewWidth:I
invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v11
aput-object v11, v9, v10
const/4 v10, 0x1
iget v11, p0, Lco/vine/android/recorder/CameraManager;->mPreviewHeight:I
invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v11
aput-object v11, v9, v10
const/4 v10, 0x2
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v11
aput-object v11, v9, v10
const/4 v10, 0x3
invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v11
aput-object v11, v9, v10
invoke-static {v7, v9}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
const/16 v7, 0x11
invoke-virtual {v4, v7}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V
invoke-direct {p0, v4}, Lco/vine/android/recorder/CameraManager;->disableVideoStab(Landroid/hardware/Camera$Parameters;)V
:try_end_ce
.catchall {:try_start_e .. :try_end_ce} :catchall_fa
.catch Ljava/lang/Exception; {:try_start_e .. :try_end_ce} :catch_106
:try_start_ce
iget-object v7, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v7, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
:try_start_d3
:try_end_d3
.catchall {:try_start_ce .. :try_end_d3} :catchall_fa
.catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d3} :catch_12e
sget-boolean v7, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z
if-eqz v7, :cond_e6
const-string v7, "Starting params: {}."
iget-object v9, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v9}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v9
invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;
move-result-object v9
invoke-static {v7, v9}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
:cond_e6
new-instance v7, Lco/vine/android/recorder/CameraManager$StartPreviewThread;
move/from16 v0, p8
int-to-long v9, v0
move/from16 v0, p6
invoke-direct {v7, p0, v0, v9, v10}, Lco/vine/android/recorder/CameraManager$StartPreviewThread;-><init>(Lco/vine/android/recorder/CameraManager;IJ)V
iput-object v7, p0, Lco/vine/android/recorder/CameraManager;->mStartPreviewThread:Lco/vine/android/recorder/CameraManager$StartPreviewThread;
iget-object v7, p0, Lco/vine/android/recorder/CameraManager;->mStartPreviewThread:Lco/vine/android/recorder/CameraManager$StartPreviewThread;
invoke-virtual {v7}, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->start()V
:cond_f7
:try_start_f7
:try_end_f7
.catchall {:try_start_d3 .. :try_end_f7} :catchall_fa
.catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_f7} :catch_106
monitor-exit v8
goto/16 :goto_d
:catchall_fa
move-exception v7
monitor-exit v8
:try_end_fc
.catchall {:try_start_f7 .. :try_end_fc} :catchall_fa
throw v7
:cond_fd
if-eqz p3, :cond_120
:try_start_ff
iget-object v7, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v7, p3}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
:try_end_104
.catchall {:try_start_ff .. :try_end_104} :catchall_fa
.catch Ljava/lang/Exception; {:try_start_ff .. :try_end_104} :catch_106
goto/16 :goto_23
:catch_106
move-exception v2
const/4 v7, 0x0
:try_start_108
iput-boolean v7, p0, Lco/vine/android/recorder/CameraManager;->isPreviewing:Z
const-string v7, "Failed to startPreview: {}."
const/4 v9, 0x1
new-array v9, v9, [Ljava/lang/Object;
const/4 v10, 0x0
invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v11
aput-object v11, v9, v10
invoke-static {v7, v9}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
instance-of v7, v2, Lco/vine/android/recorder/CameraManager$InvalidPreviewSizeException;
if-eqz v7, :cond_f7
check-cast v2, Lco/vine/android/recorder/CameraManager$InvalidPreviewSizeException;
throw v2
:try_end_120
.catchall {:try_start_108 .. :try_end_120} :catchall_fa
:cond_120
:try_start_120
const-string v7, "Surface is not ready, wait..."
invoke-static {v7}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
:try_end_125
.catchall {:try_start_120 .. :try_end_125} :catchall_fa
.catch Ljava/lang/Exception; {:try_start_120 .. :try_end_125} :catch_106
:try_start_125
monitor-exit v8
:try_end_126
.catchall {:try_start_125 .. :try_end_126} :catchall_fa
goto/16 :goto_d
:cond_128
const/4 v3, 0x0
goto/16 :goto_46
:cond_12b
const/4 v5, 0x0
goto/16 :goto_98
:catch_12e
move-exception v2
:try_start_12f
new-instance v7, Lco/vine/android/recorder/CameraManager$InvalidPreviewSizeException;
invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v9
invoke-direct {v7, v9}, Lco/vine/android/recorder/CameraManager$InvalidPreviewSizeException;-><init>(Ljava/lang/String;)V
throw v7
:try_end_139
.catchall {:try_start_12f .. :try_end_139} :catchall_fa
.catch Ljava/lang/Exception; {:try_start_12f .. :try_end_139} :catch_106
.end method
.method public addBuffer([BZ)V
.registers 5
iget-object v1, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I
monitor-enter v1
if-eqz p1, :cond_c
if-eqz p2, :cond_e
:try_start_7
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mBufferArray:Ljava/util/concurrent/ConcurrentLinkedQueue;
invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z
:goto_c
:cond_c
monitor-exit v1
return-void
:cond_e
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
if-eqz v0, :cond_23
iget-boolean v0, p0, Lco/vine/android/recorder/CameraManager;->mRunAddBufferThread:Z
if-nez v0, :cond_1d
invoke-virtual {p0, p1}, Lco/vine/android/recorder/CameraManager;->addCallbackBuffer([B)V
goto :goto_c
:catchall_1a
move-exception v0
monitor-exit v1
:try_end_1c
.catchall {:try_start_7 .. :try_end_1c} :catchall_1a
throw v0
:try_start_1d
:cond_1d
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mAddArray:Ljava/util/concurrent/ConcurrentLinkedQueue;
invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z
goto :goto_c
:cond_23
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mBufferArray:Ljava/util/concurrent/ConcurrentLinkedQueue;
invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z
:try_end_28
.catchall {:try_start_1d .. :try_end_28} :catchall_1a
goto :goto_c
.end method
.method public addCallbackBuffer([B)V
.registers 4
iget-object v1, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I
monitor-enter v1
:try_start_3
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
if-eqz v0, :cond_19
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V
sget v0, Lco/vine/android/recorder/CameraManager;->sCameraBufferCount:I
add-int/lit8 v0, v0, 0x1
sput v0, Lco/vine/android/recorder/CameraManager;->sCameraBufferCount:I
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mAddedBufferArray:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
:goto_17
monitor-exit v1
return-void
:cond_19
const-string v0, "Buffer couldn\'t be added."
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
goto :goto_17
:catchall_1f
move-exception v0
monitor-exit v1
:try_end_21
.catchall {:try_start_3 .. :try_end_21} :catchall_1f
throw v0
.end method
.method public autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)Z
.registers 6
const/4 v1, 0x0
:try_start_1
iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v2, p1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
:try_end_6
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8
const/4 v1, 0x1
:goto_7
return v1
:catch_8
move-exception v0
const-string v2, "Failed to autoFocus."
new-array v3, v1, [Ljava/lang/Object;
invoke-static {v0, v2, v3}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_7
.end method
.method public canChangeFocus()Z
.registers 4
const/4 v1, 0x0
:try_start_1
iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
if-eqz v2, :cond_12
iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v2
invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I
:try_end_e
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_13
move-result v2
if-lez v2, :cond_12
const/4 v1, 0x1
:cond_12
:goto_12
return v1
:catch_13
move-exception v0
goto :goto_12
.end method
.method public changeFlashState(Z)V
.registers 4
iget-object v1, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v0
if-eqz p1, :cond_13
const-string v1, "torch"
:goto_a
invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V
iget-object v1, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
return-void
:cond_13
const-string v1, "off"
goto :goto_a
.end method
.method public fixOrientation(I)I
.registers 8
iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I
monitor-enter v3
const/4 v0, 0x0
:try_start_4
iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
if-eqz v2, :cond_37
iget v2, p0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I
invoke-static {p1, v2}, Lco/vine/android/recorder/CameraManager;->getCameraDisplayOrientation(II)I
move-result v0
iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
const-string v2, "Fixed orientation: {}"
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-static {v2, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
iget v2, p0, Lco/vine/android/recorder/CameraManager;->mPreviewWidth:I
if-eqz v2, :cond_37
iget v2, p0, Lco/vine/android/recorder/CameraManager;->mPreviewHeight:I
if-eqz v2, :cond_37
new-instance v1, Landroid/graphics/Matrix;
invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V
iget-boolean v2, p0, Lco/vine/android/recorder/CameraManager;->mIsCurrentFront:Z
iget v4, p0, Lco/vine/android/recorder/CameraManager;->mPreviewWidth:I
iget v5, p0, Lco/vine/android/recorder/CameraManager;->mPreviewHeight:I
invoke-static {v1, v2, v0, v4, v5}, Lco/vine/android/util/MathUtil;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V
iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mMatrix:Landroid/graphics/Matrix;
invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z
:cond_37
monitor-exit v3
return v0
:catchall_39
move-exception v2
monitor-exit v3
:try_end_3b
.catchall {:try_start_4 .. :try_end_3b} :catchall_39
throw v2
.end method
.method public getAddedBufferArrayCount()I
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mAddedBufferArray:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->size()I
move-result v0
return v0
.end method
.method public getCamera()Landroid/hardware/Camera;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
return-object v0
.end method
.method public getCameraSetting()Lco/vine/android/recorder/CameraSetting;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCameraSetting:Lco/vine/android/recorder/CameraSetting;
return-object v0
.end method
.method public getControllerId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mControllerId:Ljava/lang/String;
return-object v0
.end method
.method public getDefaultCameraId(Z)I
.registers 5
const/4 v2, 0x0
const/4 v0, -0x1
if-eqz p1, :cond_13
invoke-static {}, Lco/vine/android/recorder/CameraManager;->hasFrontFacingCamera()Z
move-result v1
if-eqz v1, :cond_12
sget-object v0, Lco/vine/android/recorder/CameraManager;->mFrontFacing:[Ljava/lang/Integer;
aget-object v0, v0, v2
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
:cond_12
:goto_12
return v0
:cond_13
invoke-static {}, Lco/vine/android/recorder/CameraManager;->hasBackFacingCamera()Z
move-result v1
if-eqz v1, :cond_12
sget-object v0, Lco/vine/android/recorder/CameraManager;->mBackFacing:[Ljava/lang/Integer;
aget-object v0, v0, v2
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
goto :goto_12
.end method
.method public getFrameSize()I
.registers 2
iget v0, p0, Lco/vine/android/recorder/CameraManager;->mFrameSize:I
return v0
.end method
.method public getMaxZoom()I
.registers 2
iget v0, p0, Lco/vine/android/recorder/CameraManager;->mMaxZoom:I
return v0
.end method
.method public getParameters()Landroid/hardware/Camera$Parameters;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
if-eqz v0, :cond_b
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getSharedByteBuffer()Ljava/nio/ByteBuffer;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mSharedByteBuffer:Ljava/nio/ByteBuffer;
return-object v0
.end method
.method public isCameraReady()Z
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
if-eqz v0, :cond_a
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCameraSetting:Lco/vine/android/recorder/CameraSetting;
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public isFlashSupported()Z
.registers 7
const/4 v3, 0x1
const/4 v4, 0x0
iget-object v5, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v5
invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;
move-result-object v2
if-eqz v2, :cond_14
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v5
if-nez v5, :cond_16
:cond_14
move v3, v4
:cond_15
:goto_15
return v3
:cond_16
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_1a
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_37
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v5, "on"
invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_15
const-string v5, "torch"
invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_1a
goto :goto_15
:cond_37
move v3, v4
goto :goto_15
.end method
.method public isFrameAdded([B)Z
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mAddedBufferArray:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public isPreviewing()Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/recorder/CameraManager;->isPreviewing:Z
return v0
.end method
.method public isSmoothZoomingSupported()Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/recorder/CameraManager;->mIsSmoothZoomSupported:Z
return v0
.end method
.method public isZoomSupported()Z
.registers 3
const/4 v0, 0x1
iget v1, p0, Lco/vine/android/recorder/CameraManager;->mMaxZoom:I
if-le v1, v0, :cond_6
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method protected lock()V
.registers 2
const-string v0, "5d. Lock Camera"
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V
return-void
.end method
.method public modifyAntiBanding(Z)V
.registers 8
iget-object v4, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I
monitor-enter v4
:try_start_3
iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_31
if-eqz v3, :cond_28
:try_start_7
iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v2
invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;
move-result-object v3
invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getAntibanding()Ljava/lang/String;
move-result-object v5
invoke-direct {p0, p1, v3, v5}, Lco/vine/android/recorder/CameraManager;->getNextParamValue(ZLjava/util/List;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_23
invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V
iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
:cond_23
iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
:cond_28
:goto_28
:try_start_28
:try_end_28
.catchall {:try_start_7 .. :try_end_28} :catchall_31
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_28} :catch_2a
monitor-exit v4
return-void
:catch_2a
move-exception v0
const-string v3, "It just didn\'t work."
invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
goto :goto_28
:catchall_31
move-exception v3
monitor-exit v4
:try_end_33
.catchall {:try_start_28 .. :try_end_33} :catchall_31
throw v3
.end method
.method public modifyColorEffects(Z)V
.registers 8
iget-object v4, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I
monitor-enter v4
:try_start_3
iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_31
if-eqz v3, :cond_28
:try_start_7
iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v2
invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;
move-result-object v3
invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;
move-result-object v5
invoke-direct {p0, p1, v3, v5}, Lco/vine/android/recorder/CameraManager;->getNextParamValue(ZLjava/util/List;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_23
invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V
iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
:cond_23
iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
:cond_28
:goto_28
:try_start_28
:try_end_28
.catchall {:try_start_7 .. :try_end_28} :catchall_31
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_28} :catch_2a
monitor-exit v4
return-void
:catch_2a
move-exception v0
const-string v3, "It just didn\'t work."
invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
goto :goto_28
:catchall_31
move-exception v3
monitor-exit v4
:try_end_33
.catchall {:try_start_28 .. :try_end_33} :catchall_31
throw v3
.end method
.method public modifyExposure(Z)V
.registers 16
iget-object v9, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I
monitor-enter v9
:try_start_3
iget-object v8, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_4b
if-eqz v8, :cond_33
:try_start_7
iget-object v8, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v4
invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I
move-result v0
invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I
move-result v2
invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I
move-result v3
sub-int v8, v2, v3
int-to-double v10, v8
const-wide/high16 v12, 0x4024
div-double v5, v10, v12
if-eqz p1, :cond_37
int-to-double v10, v0
add-double/2addr v10, v5
invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D
move-result-wide v10
double-to-int v7, v10
if-lt v7, v2, :cond_35
:goto_2b
invoke-virtual {v4, v2}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V
:goto_2e
iget-object v8, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v8, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
:goto_33
:cond_33
:try_end_33
.catchall {:try_start_7 .. :try_end_33} :catchall_4b
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_33} :catch_44
:try_start_33
monitor-exit v9
:try_end_34
.catchall {:try_start_33 .. :try_end_34} :catchall_4b
return-void
:cond_35
move v2, v7
goto :goto_2b
:cond_37
int-to-double v10, v0
sub-double/2addr v10, v5
:try_start_39
invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D
move-result-wide v10
double-to-int v7, v10
if-gt v7, v3, :cond_4e
:goto_40
invoke-virtual {v4, v3}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V
:try_end_43
.catchall {:try_start_39 .. :try_end_43} :catchall_4b
.catch Ljava/lang/Exception; {:try_start_39 .. :try_end_43} :catch_44
goto :goto_2e
:catch_44
move-exception v1
:try_start_45
const-string v8, "It just didn\'t work."
invoke-static {v8}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
goto :goto_33
:catchall_4b
move-exception v8
monitor-exit v9
:try_end_4d
.catchall {:try_start_45 .. :try_end_4d} :catchall_4b
throw v8
:cond_4e
move v3, v7
goto :goto_40
.end method
.method public modifySceneMode(Z)V
.registers 8
iget-object v4, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I
monitor-enter v4
:try_start_3
iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_2c
if-eqz v3, :cond_23
:try_start_7
iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v2
invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;
move-result-object v3
invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;
move-result-object v5
invoke-direct {p0, p1, v3, v5}, Lco/vine/android/recorder/CameraManager;->getNextParamValue(ZLjava/util/List;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_23
invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V
iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
:goto_23
:cond_23
:try_start_23
:try_end_23
.catchall {:try_start_7 .. :try_end_23} :catchall_2c
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_23} :catch_25
monitor-exit v4
return-void
:catch_25
move-exception v0
const-string v3, "It just didn\'t work."
invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
goto :goto_23
:catchall_2c
move-exception v3
monitor-exit v4
:try_end_2e
.catchall {:try_start_23 .. :try_end_2e} :catchall_2c
throw v3
.end method
.method public modifyWhiteBalance(Z)V
.registers 8
iget-object v4, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I
monitor-enter v4
:try_start_3
iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_2c
if-eqz v3, :cond_23
:try_start_7
iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v2
invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;
move-result-object v3
invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;
move-result-object v5
invoke-direct {p0, p1, v3, v5}, Lco/vine/android/recorder/CameraManager;->getNextParamValue(ZLjava/util/List;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_23
invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V
iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
:goto_23
:cond_23
:try_start_23
:try_end_23
.catchall {:try_start_7 .. :try_end_23} :catchall_2c
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_23} :catch_25
monitor-exit v4
return-void
:catch_25
move-exception v0
const-string v3, "It just didn\'t work."
invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
goto :goto_23
:catchall_2c
move-exception v3
monitor-exit v4
:try_end_2e
.catchall {:try_start_23 .. :try_end_2e} :catchall_2c
throw v3
.end method
.method public modifyZoom(I)I
.registers 9
const/4 v2, 0x0
iget-object v4, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I
monitor-enter v4
:try_start_4
iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
if-eqz v3, :cond_39
const/4 v1, 0x0
sget-boolean v3, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->IS_ZERO_INDEX_BASED_ZOOM:Z
if-eqz v3, :cond_10
add-int/lit8 p1, p1, -0x1
const/4 v1, -0x1
:cond_10
iget v3, p0, Lco/vine/android/recorder/CameraManager;->mRequestedZoom:I
if-eq p1, v3, :cond_39
iget v3, p0, Lco/vine/android/recorder/CameraManager;->mMaxZoom:I
if-gt p1, v3, :cond_39
if-le p1, v1, :cond_39
iget v3, p0, Lco/vine/android/recorder/CameraManager;->mRequestedZoom:I
if-le p1, v3, :cond_1f
const/4 v2, 0x1
:cond_1f
iput p1, p0, Lco/vine/android/recorder/CameraManager;->mRequestedZoom:I
:try_end_21
.catchall {:try_start_4 .. :try_end_21} :catchall_4b
:try_start_21
const-string v3, "Modifying waiting to zoom to {} using smooth? {}."
iget v5, p0, Lco/vine/android/recorder/CameraManager;->mRequestedZoom:I
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
iget-boolean v6, p0, Lco/vine/android/recorder/CameraManager;->mIsSmoothZoomSupported:Z
invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v6
invoke-static {v3, v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
iget-boolean v3, p0, Lco/vine/android/recorder/CameraManager;->mIsSmoothZoomSupported:Z
if-eqz v3, :cond_3d
invoke-virtual {p0, v2}, Lco/vine/android/recorder/CameraManager;->startSmoothZoom(Z)V
:cond_39
:goto_39
:try_start_39
:try_end_39
.catchall {:try_start_21 .. :try_end_39} :catchall_4b
.catch Ljava/lang/Exception; {:try_start_21 .. :try_end_39} :catch_41
monitor-exit v4
:try_end_3a
.catchall {:try_start_39 .. :try_end_3a} :catchall_4b
iget v3, p0, Lco/vine/android/recorder/CameraManager;->mRequestedZoom:I
return v3
:try_start_3d
:cond_3d
invoke-virtual {p0}, Lco/vine/android/recorder/CameraManager;->startInstantZoom()V
:try_end_40
.catchall {:try_start_3d .. :try_end_40} :catchall_4b
.catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41
goto :goto_39
:catch_41
move-exception v0
:try_start_42
const-string v3, "It just didn\'t work."
const/4 v5, 0x0
new-array v5, v5, [Ljava/lang/Object;
invoke-static {v0, v3, v5}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_39
:catchall_4b
move-exception v3
monitor-exit v4
:try_end_4d
.catchall {:try_start_42 .. :try_end_4d} :catchall_4b
throw v3
.end method
.method public modifyZoom(Z)I
.registers 4
iget-boolean v1, p0, Lco/vine/android/recorder/CameraManager;->mIsSmoothZoomSupported:Z
if-eqz v1, :cond_15
if-eqz p1, :cond_13
iget v0, p0, Lco/vine/android/recorder/CameraManager;->mMaxZoom:I
:goto_8
sget-boolean v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->IS_ZERO_INDEX_BASED_ZOOM:Z
if-eqz v1, :cond_e
add-int/lit8 v0, v0, 0x1
:cond_e
invoke-virtual {p0, v0}, Lco/vine/android/recorder/CameraManager;->modifyZoom(I)I
move-result v1
return v1
:cond_13
const/4 v0, 0x0
goto :goto_8
:cond_15
if-eqz p1, :cond_1c
iget v1, p0, Lco/vine/android/recorder/CameraManager;->mRequestedZoom:I
add-int/lit8 v0, v1, 0x1
:goto_1b
goto :goto_8
:cond_1c
iget v1, p0, Lco/vine/android/recorder/CameraManager;->mRequestedZoom:I
add-int/lit8 v0, v1, -0x1
goto :goto_1b
.end method
.method public onPreviewFrameReceived()V
.registers 7
iget-wide v2, p0, Lco/vine/android/recorder/CameraManager;->mFramesReceived:J
const-wide/16 v4, 0x1
add-long/2addr v2, v4
iput-wide v2, p0, Lco/vine/android/recorder/CameraManager;->mFramesReceived:J
iget-wide v2, p0, Lco/vine/android/recorder/CameraManager;->mLastPreviewFrameTimestamp:J
const-wide/16 v4, -0x1
cmp-long v2, v2, v4
if-eqz v2, :cond_1f
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
iget-wide v4, p0, Lco/vine/android/recorder/CameraManager;->mLastPreviewFrameTimestamp:J
sub-long v0, v2, v4
iget-wide v2, p0, Lco/vine/android/recorder/CameraManager;->mMaxtimeElapsed:J
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
move-result-wide v2
iput-wide v2, p0, Lco/vine/android/recorder/CameraManager;->mMaxtimeElapsed:J
:cond_1f
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
iput-wide v2, p0, Lco/vine/android/recorder/CameraManager;->mLastPreviewFrameTimestamp:J
return-void
.end method
.method public onZoomChange(IZLandroid/hardware/Camera;)V
.registers 10
const/4 v1, 0x1
const/4 v2, 0x0
if-eqz p2, :cond_66
const-string v0, "Zoom stopped on value {} (target {}, queued value: {})."
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
iget v4, p0, Lco/vine/android/recorder/CameraManager;->mCurrentZoomTarget:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
iget v5, p0, Lco/vine/android/recorder/CameraManager;->mRequestedZoom:I
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-static {v0, v3, v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
iput-boolean v2, p0, Lco/vine/android/recorder/CameraManager;->mIsSmoothZooming:Z
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
if-eqz v0, :cond_28
:try_start_1f
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v0
invoke-virtual {p0, v0}, Lco/vine/android/recorder/CameraManager;->startContinuousAutoFocus(Landroid/hardware/Camera$Parameters;)Z
:cond_28
:goto_28
:try_end_28
.catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_28} :catch_89
iget-boolean v0, p0, Lco/vine/android/recorder/CameraManager;->mIsSmoothZoomingStopCalled:Z
if-eqz v0, :cond_36
iput-boolean v2, p0, Lco/vine/android/recorder/CameraManager;->mIsSmoothZoomingStopCalled:Z
iget v0, p0, Lco/vine/android/recorder/CameraManager;->mRequestedZoom:I
iget v3, p0, Lco/vine/android/recorder/CameraManager;->mCurrentZoomTarget:I
if-ne v0, v3, :cond_36
iput p1, p0, Lco/vine/android/recorder/CameraManager;->mRequestedZoom:I
:cond_36
iget v0, p0, Lco/vine/android/recorder/CameraManager;->mRequestedZoom:I
if-eq p1, v0, :cond_4a
iget-boolean v0, p0, Lco/vine/android/recorder/CameraManager;->mIsSmoothZoomSupported:Z
if-eqz v0, :cond_4a
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
if-eqz v0, :cond_4a
iget v0, p0, Lco/vine/android/recorder/CameraManager;->mRequestedZoom:I
if-lt v0, p1, :cond_64
move v0, v1
:goto_47
invoke-virtual {p0, v0}, Lco/vine/android/recorder/CameraManager;->startSmoothZoom(Z)V
:goto_4a
:cond_4a
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mController:Lco/vine/android/recorder/RecordController;
if-eqz v0, :cond_63
iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mController:Lco/vine/android/recorder/RecordController;
sget-boolean v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->IS_ZERO_INDEX_BASED_ZOOM:Z
if-eqz v0, :cond_85
add-int/lit8 v0, p1, 0x1
:goto_56
if-eqz p2, :cond_87
iget v4, p0, Lco/vine/android/recorder/CameraManager;->mRequestedZoom:I
if-ne p1, v4, :cond_87
:goto_5c
invoke-virtual {v3, v0, v1}, Lco/vine/android/recorder/RecordController;->onZoomUpdated(IZ)V
if-eqz p2, :cond_63
iput-boolean v2, p0, Lco/vine/android/recorder/CameraManager;->mAutoStopZoomCalled:Z
:cond_63
return-void
:cond_64
move v0, v2
goto :goto_47
:cond_66
const-string v0, "Zoom updated on value {} (queued value: {})."
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
iget v4, p0, Lco/vine/android/recorder/CameraManager;->mRequestedZoom:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-static {v0, v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
iget v0, p0, Lco/vine/android/recorder/CameraManager;->mCurrentZoomTarget:I
if-ne v0, p1, :cond_4a
const-string v0, "Stop zoom on reaching target."
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
invoke-virtual {p0}, Lco/vine/android/recorder/CameraManager;->stopSmoothZoom()Z
move-result v0
iput-boolean v0, p0, Lco/vine/android/recorder/CameraManager;->mAutoStopZoomCalled:Z
goto :goto_4a
:cond_85
move v0, p1
goto :goto_56
:cond_87
move v1, v2
goto :goto_5c
:catch_89
move-exception v0
goto :goto_28
.end method
.method public openDefaultCamera(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;ZIZ)Lco/vine/android/recorder/CameraSetting;
.registers 11
invoke-virtual {p0, p2}, Lco/vine/android/recorder/CameraManager;->getDefaultCameraId(Z)I
move-result v3
move-object v0, p0
move-object v1, p1
move v2, p2
move v4, p3
move v5, p4
invoke-direct/range {v0 .. v5}, Lco/vine/android/recorder/CameraManager;->safeCameraOpen(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;ZIIZ)Lco/vine/android/recorder/CameraSetting;
move-result-object v0
return-object v0
.end method
.method public preLoadCameras(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;)V
.registers 7
iget-object v1, p0, Lco/vine/android/recorder/CameraManager;->mIntentionalObjectCounter:Lco/vine/android/util/IntentionalObjectCounter;
invoke-virtual {v1}, Lco/vine/android/util/IntentionalObjectCounter;->getCount()I
move-result v1
if-nez v1, :cond_44
iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I
monitor-enter v2
:try_start_b
iget-object v1, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
if-nez v1, :cond_43
sget-object v1, Lco/vine/android/recorder/CameraManager;->sCameraSettingTable:Landroid/util/SparseArray;
const/4 v3, 0x1
invoke-virtual {p0, v3}, Lco/vine/android/recorder/CameraManager;->getDefaultCameraId(Z)I
move-result v3
invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/recorder/CameraSetting;
if-nez v0, :cond_45
const/4 v1, 0x1
const/4 v3, 0x0
const/4 v4, 0x0
invoke-virtual {p0, p1, v1, v3, v4}, Lco/vine/android/recorder/CameraManager;->openDefaultCamera(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;ZIZ)Lco/vine/android/recorder/CameraSetting;
const-string v1, "preload"
invoke-virtual {p0, v1}, Lco/vine/android/recorder/CameraManager;->releaseCameraAndPreview(Ljava/lang/String;)V
:goto_29
sget-object v1, Lco/vine/android/recorder/CameraManager;->sCameraSettingTable:Landroid/util/SparseArray;
const/4 v3, 0x0
invoke-virtual {p0, v3}, Lco/vine/android/recorder/CameraManager;->getDefaultCameraId(Z)I
move-result v3
invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/recorder/CameraSetting;
if-nez v0, :cond_4e
const/4 v1, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
invoke-virtual {p0, p1, v1, v3, v4}, Lco/vine/android/recorder/CameraManager;->openDefaultCamera(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;ZIZ)Lco/vine/android/recorder/CameraSetting;
const-string v1, "preload"
invoke-virtual {p0, v1}, Lco/vine/android/recorder/CameraManager;->releaseCameraAndPreview(Ljava/lang/String;)V
:goto_43
:cond_43
monitor-exit v2
:cond_44
return-void
:cond_45
const-string v1, "Skip preload ffc."
invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
goto :goto_29
:catchall_4b
move-exception v1
monitor-exit v2
:try_end_4d
.catchall {:try_start_b .. :try_end_4d} :catchall_4b
throw v1
:try_start_4e
:cond_4e
const-string v1, "Skip preload bfc."
invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
:try_end_53
.catchall {:try_start_4e .. :try_end_53} :catchall_4b
goto :goto_43
.end method
.method public printSupportedPreviewSizes()V
.registers 12
const/4 v10, 0x2
const/4 v9, 0x1
const/4 v8, 0x0
iget-object v5, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
if-eqz v5, :cond_5e
iget-object v5, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v1
invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;
move-result-object v2
if-eqz v2, :cond_2a
const-string v5, "Preferred size: {} * {}"
new-array v6, v10, [Ljava/lang/Object;
iget v7, v2, Landroid/hardware/Camera$Size;->width:I
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v6, v8
iget v7, v2, Landroid/hardware/Camera$Size;->height:I
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v6, v9
invoke-static {v5, v6}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_2a
iget-object v5, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v5
invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;
move-result-object v4
if-eqz v4, :cond_5e
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_3a
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_5e
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/hardware/Camera$Size;
const-string v5, "Supported Preview Size: {} * {}."
new-array v6, v10, [Ljava/lang/Object;
iget v7, v3, Landroid/hardware/Camera$Size;->width:I
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v6, v8
iget v7, v3, Landroid/hardware/Camera$Size;->height:I
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v6, v9
invoke-static {v5, v6}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_3a
:cond_5e
return-void
.end method
.method public releaseCameraAndPreview(Ljava/lang/String;)V
.registers 14
const-wide/16 v10, 0x0
const/4 v1, 0x1
const/4 v0, -0x1
const/4 v2, 0x0
iget-object v5, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I
monitor-enter v5
:try_start_8
invoke-virtual {p0}, Lco/vine/android/recorder/CameraManager;->waitForPreviewToStart()V
iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
if-eqz v3, :cond_7c
const-string v3, "6,7 RELEASE Camera and STOP Preview."
invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
invoke-virtual {p0}, Lco/vine/android/recorder/CameraManager;->isPreviewing()Z
move-result v3
if-eqz v3, :cond_1d
invoke-virtual {p0}, Lco/vine/android/recorder/CameraManager;->stopPreview()V
:cond_1d
const-string v3, "Camera was released from {}."
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v6, 0x0
aput-object p1, v4, v6
invoke-static {v3, v4}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
iget-wide v3, p0, Lco/vine/android/recorder/CameraManager;->mFramesReceived:J
cmp-long v3, v3, v10
if-lez v3, :cond_3c
iget-wide v3, p0, Lco/vine/android/recorder/CameraManager;->mFramesReceived:J
const-wide/16 v6, 0x3e8
mul-long/2addr v3, v6
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
iget-wide v8, p0, Lco/vine/android/recorder/CameraManager;->mPreviewStartTime:J
sub-long/2addr v6, v8
div-long/2addr v3, v6
long-to-int v0, v3
:cond_3c
if-lez v0, :cond_61
const-string v6, "Lowest frame rate: {}."
iget-wide v3, p0, Lco/vine/android/recorder/CameraManager;->mMaxtimeElapsed:J
cmp-long v3, v3, v10
if-lez v3, :cond_7e
const-wide/16 v3, 0x3e8
iget-wide v7, p0, Lco/vine/android/recorder/CameraManager;->mMaxtimeElapsed:J
div-long/2addr v3, v7
:goto_4b
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v6, v3}, Lcom/edisonwang/android/slog/SLog;->b(Ljava/lang/String;Ljava/lang/Object;)V
const-string v3, "Average frame rate: {}."
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
if-lez v0, :cond_81
const/16 v6, 0xf
if-ge v0, v6, :cond_81
:goto_5e
invoke-static {v3, v4, v1}, Lcom/edisonwang/android/slog/SLog;->b(Ljava/lang/String;Ljava/lang/Object;Z)V
:cond_61
iget-object v1, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
const/4 v1, 0x0
sput v1, Lco/vine/android/recorder/CameraManager;->sCameraBufferCount:I
const-string v1, "null"
iput-object v1, p0, Lco/vine/android/recorder/CameraManager;->mControllerId:Ljava/lang/String;
iget-object v1, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v1}, Landroid/hardware/Camera;->release()V
const/4 v1, 0x0
iput-object v1, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
const/4 v1, 0x0
iput-object v1, p0, Lco/vine/android/recorder/CameraManager;->mCameraSetting:Lco/vine/android/recorder/CameraSetting;
const/4 v1, -0x1
iput v1, p0, Lco/vine/android/recorder/CameraManager;->mCurrentCamera:I
:cond_7c
monitor-exit v5
return-void
:cond_7e
iget-wide v3, p0, Lco/vine/android/recorder/CameraManager;->mMaxtimeElapsed:J
goto :goto_4b
:cond_81
move v1, v2
goto :goto_5e
:catchall_83
move-exception v1
monitor-exit v5
:try_end_85
.catchall {:try_start_8 .. :try_end_85} :catchall_83
throw v1
.end method
.method public releaseCameraResources()V
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mBufferArray:Ljava/util/concurrent/ConcurrentLinkedQueue;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mAddedBufferArray:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
invoke-static {}, Ljava/lang/System;->gc()V
return-void
.end method
.method public removeBufferFromAvailableQueue([B)V
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mAddedBufferArray:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method public setController(Lco/vine/android/recorder/RecordController;)V
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/CameraManager;->mController:Lco/vine/android/recorder/RecordController;
return-void
.end method
.method public setFocusAreas(II)Z
.registers 10
const/4 v3, 0x1
const/4 v4, 0x0
:try_start_2
invoke-direct {p0, p1, p2}, Lco/vine/android/recorder/CameraManager;->initializeFocusAreas(II)V
iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v1
iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mFocusArea:Ljava/util/ArrayList;
invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V
iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
:try_end_15
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_17
move v2, v3
:goto_16
return v2
:catch_17
move-exception v0
const-string v5, "Failed to set focus areas {}, {}."
const/4 v2, 0x2
new-array v6, v2, [Ljava/lang/Object;
iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mMatrix:Landroid/graphics/Matrix;
aput-object v2, v6, v4
iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mFocusArea:Ljava/util/ArrayList;
invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/hardware/Camera$Area;
iget-object v2, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;
aput-object v2, v6, v3
invoke-static {v0, v5, v6}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
move v2, v4
goto :goto_16
.end method
.method public setFrameRate(I)I
.registers 22
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I
move-object/from16 v16, v0
monitor-enter v16
:try_start_7
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
:try_end_b
.catchall {:try_start_7 .. :try_end_b} :catchall_6f
if-eqz v15, :cond_194
:try_start_d
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v15}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v10
move/from16 v0, p1
mul-int/lit16 v15, v0, 0x3e8
move/from16 v0, p1
mul-int/lit16 v0, v0, 0x3e8
move/from16 v17, v0
move/from16 v0, v17
invoke-virtual {v10, v15, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V
const-string v15, "SET frameRate using fixed-range frameRate"
invoke-static {v15}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v15, v10}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
:try_start_30
:try_end_30
.catchall {:try_start_d .. :try_end_30} :catchall_6f
.catch Ljava/lang/Exception; {:try_start_d .. :try_end_30} :catch_34
monitor-exit v16
:try_end_31
.catchall {:try_start_30 .. :try_end_31} :catchall_6f
move/from16 v15, p1
:goto_33
return v15
:catch_34
move-exception v3
:try_start_35
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v15}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v10
move/from16 v0, p1
invoke-virtual {v10, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v15, v10}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
const-string v15, "SET frameRate using fixed frameRate"
invoke-static {v15}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
:try_start_4e
:try_end_4e
.catchall {:try_start_35 .. :try_end_4e} :catchall_6f
.catch Ljava/lang/Exception; {:try_start_35 .. :try_end_4e} :catch_52
monitor-exit v16
:try_end_4f
.catchall {:try_start_4e .. :try_end_4f} :catchall_6f
move/from16 v15, p1
goto :goto_33
:catch_52
move-exception v3
:try_start_53
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v15}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
:try_end_5a
.catchall {:try_start_53 .. :try_end_5a} :catchall_6f
.catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5a} :catch_6a
move-result-object v10
:try_start_5b
invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;
move-result-object v14
if-nez v14, :cond_72
const-string v15, "Cannot set frame-rate"
invoke-static {v15}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
:try_end_66
.catchall {:try_start_5b .. :try_end_66} :catchall_6f
.catch Ljava/lang/Exception; {:try_start_5b .. :try_end_66} :catch_18e
:try_start_66
monitor-exit v16
move/from16 v15, p1
goto :goto_33
:catch_6a
move-exception v4
const/16 v15, 0x1e
monitor-exit v16
goto :goto_33
:catchall_6f
move-exception v15
monitor-exit v16
:try_end_71
.catchall {:try_start_66 .. :try_end_71} :catchall_6f
throw v15
:cond_72
move/from16 v0, p1
mul-int/lit16 v0, v0, 0x3e8
move/from16 p1, v0
const/4 v13, 0x0
const/4 v8, 0x0
const/4 v6, 0x0
const/4 v11, -0x1
:try_start_7c
invoke-interface {v14}, Ljava/util/List;->size()I
move-result v15
add-int/lit8 v9, v15, -0x1
const/4 v7, 0x0
:goto_83
invoke-interface {v14}, Ljava/util/List;->size()I
move-result v15
if-ge v7, v15, :cond_9c
invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v12
check-cast v12, [I
const-string v15, "Supported FPS: {}"
invoke-static {v15, v12}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
const/4 v15, 0x0
aget v15, v12, v15
move/from16 v0, p1
if-ne v15, v0, :cond_d2
move-object v13, v12
:cond_9c
if-nez v13, :cond_a7
const/4 v15, -0x1
if-eq v11, v15, :cond_ff
invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v13
check-cast v13, [I
:goto_a7
:cond_a7
const/4 v15, 0x1
aget v15, v13, v15
:try_end_aa
.catchall {:try_start_7c .. :try_end_aa} :catchall_6f
.catch Ljava/lang/Exception; {:try_start_7c .. :try_end_aa} :catch_18e
move/from16 v0, p1
if-lt v15, v0, :cond_172
:try_start_ae
const-string v15, "Try Using variable FPS: {}, {}."
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v17
invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v18
move-object/from16 v0, v17
move-object/from16 v1, v18
invoke-static {v15, v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
move/from16 v0, p1
invoke-virtual {v10, v8, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v15, v10}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
move/from16 v0, p1
div-int/lit16 v15, v0, 0x3e8
:try_end_cf
.catchall {:try_start_ae .. :try_end_cf} :catchall_6f
.catch Ljava/lang/Exception; {:try_start_ae .. :try_end_cf} :catch_106
:try_start_cf
monitor-exit v16
:try_end_d0
.catchall {:try_start_cf .. :try_end_d0} :catchall_6f
goto/16 :goto_33
:cond_d2
const/4 v15, 0x1
:try_start_d3
aget v15, v12, v15
move/from16 v0, p1
if-ne v15, v0, :cond_ed
const/4 v15, 0x0
aget v15, v12, v15
if-ge v8, v15, :cond_e2
const/4 v15, 0x0
aget v8, v12, v15
move v11, v7
:cond_e2
const/4 v15, 0x1
aget v15, v12, v15
if-gt v6, v15, :cond_ea
const/4 v15, 0x1
aget v6, v12, v15
:cond_ea
:goto_ea
add-int/lit8 v7, v7, 0x1
goto :goto_83
:cond_ed
const/4 v15, 0x0
aget v15, v12, v15
if-gt v8, v15, :cond_ea
const/4 v15, 0x0
aget v8, v12, v15
const/4 v15, 0x1
aget v15, v12, v15
if-gt v6, v15, :cond_ea
const/4 v15, 0x1
aget v6, v12, v15
move v9, v7
goto :goto_ea
:cond_ff
invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v13
check-cast v13, [I
:try_end_105
.catchall {:try_start_d3 .. :try_end_105} :catchall_6f
.catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_105} :catch_18e
goto :goto_a7
:catch_106
move-exception v4
:try_start_107
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v15}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v10
const-string v15, "Try Using fixed framerate FPS: {}"
invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v17
move-object/from16 v0, v17
invoke-static {v15, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
move/from16 v0, p1
div-int/lit16 v15, v0, 0x3e8
invoke-virtual {v10, v15}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v15, v10}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
move/from16 v0, p1
div-int/lit16 v15, v0, 0x3e8
:try_start_12c
:try_end_12c
.catchall {:try_start_107 .. :try_end_12c} :catchall_6f
.catch Ljava/lang/Exception; {:try_start_107 .. :try_end_12c} :catch_12f
monitor-exit v16
:try_end_12d
.catchall {:try_start_12c .. :try_end_12d} :catchall_6f
goto/16 :goto_33
:catch_12f
move-exception v5
:try_start_130
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v15}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v10
const-string v15, "Try Using selected framerate FPS: {}, {}, {}."
const/16 v17, 0x0
aget v17, v13, v17
invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v17
const/16 v18, 0x1
aget v18, v13, v18
invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v18
invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v19
move-object/from16 v0, v17
move-object/from16 v1, v18
move-object/from16 v2, v19
invoke-static {v15, v0, v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
const/4 v15, 0x0
aget v15, v13, v15
const/16 v17, 0x1
aget v17, v13, v17
move/from16 v0, v17
invoke-virtual {v10, v15, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v15, v10}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
const/4 v15, 0x1
aget v15, v13, v15
div-int/lit16 v15, v15, 0x3e8
:try_start_16f
:try_end_16f
.catchall {:try_start_130 .. :try_end_16f} :catchall_6f
.catch Ljava/lang/Exception; {:try_start_130 .. :try_end_16f} :catch_18e
monitor-exit v16
:try_end_170
.catchall {:try_start_16f .. :try_end_170} :catchall_6f
goto/16 :goto_33
:try_start_172
:cond_172
const-string v15, "Fall back, should never reach here."
invoke-static {v15}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
move/from16 v0, p1
div-int/lit16 v0, v0, 0x3e8
move/from16 p1, v0
move/from16 v0, p1
invoke-virtual {v10, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v15, v10}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
:try_start_189
:try_end_189
.catchall {:try_start_172 .. :try_end_189} :catchall_6f
.catch Ljava/lang/Exception; {:try_start_172 .. :try_end_189} :catch_18e
monitor-exit v16
move/from16 v15, p1
goto/16 :goto_33
:catch_18e
move-exception v3
const/16 v15, 0x1e
monitor-exit v16
goto/16 :goto_33
:cond_194
monitor-exit v16
:try_end_195
.catchall {:try_start_189 .. :try_end_195} :catchall_6f
const/16 v15, 0x1e
goto/16 :goto_33
.end method
.method public setPreviewSize(II)V
.registers 5
iput p1, p0, Lco/vine/android/recorder/CameraManager;->mPreviewWidth:I
iput p2, p0, Lco/vine/android/recorder/CameraManager;->mPreviewHeight:I
iget v0, p0, Lco/vine/android/recorder/CameraManager;->mPreviewWidth:I
iget v1, p0, Lco/vine/android/recorder/CameraManager;->mPreviewHeight:I
mul-int/2addr v0, v1
const/16 v1, 0x11
invoke-static {v1}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I
move-result v1
mul-int/2addr v0, v1
div-int/lit8 v0, v0, 0x8
iput v0, p0, Lco/vine/android/recorder/CameraManager;->mFrameSize:I
return-void
.end method
.method public startContinuousAutoFocus(Landroid/hardware/Camera$Parameters;)Z
.registers 9
const/4 v4, 0x0
const-string v3, ""
invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;
move-result-object v1
if-nez v1, :cond_a
:goto_9
:cond_9
return v4
:cond_a
sget-boolean v5, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->FORCE_AUTO_FOCUS:Z
if-eqz v5, :cond_2b
const-string v3, "auto"
const-string v5, "Focus Mode: AUTO"
invoke-static {v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
:cond_15
:goto_15
invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;
move-result-object v2
:try_start_19
const-string v5, ""
invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_9
invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V
iget-object v5, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v5, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
:try_end_29
.catch Ljava/lang/Exception; {:try_start_19 .. :try_end_29} :catch_4b
const/4 v4, 0x1
goto :goto_9
:cond_2b
const-string v5, "continuous-video"
invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_3b
const-string v3, "continuous-video"
const-string v5, "Focus Mode: CONTINUOUS VIDEO"
invoke-static {v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
goto :goto_15
:cond_3b
const-string v5, "infinity"
invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_15
const-string v3, "infinity"
const-string v5, "Focus Mode: INFINITY"
invoke-static {v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
goto :goto_15
:catch_4b
move-exception v0
const-string v5, "Continuous Auto Focus is not supported on this device."
new-array v6, v4, [Ljava/lang/Object;
invoke-static {v0, v5, v6}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V
goto :goto_9
.end method
.method public startInstantZoom()V
.registers 5
const-string v1, "Instant zoom started on value {}"
iget v2, p0, Lco/vine/android/recorder/CameraManager;->mRequestedZoom:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-static {v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
iget v1, p0, Lco/vine/android/recorder/CameraManager;->mRequestedZoom:I
iput v1, p0, Lco/vine/android/recorder/CameraManager;->mCurrentZoomTarget:I
iget-object v1, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v0
iget v1, p0, Lco/vine/android/recorder/CameraManager;->mRequestedZoom:I
invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V
iget-object v1, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
iget v1, p0, Lco/vine/android/recorder/CameraManager;->mRequestedZoom:I
const/4 v2, 0x1
iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {p0, v1, v2, v3}, Lco/vine/android/recorder/CameraManager;->onZoomChange(IZLandroid/hardware/Camera;)V
return-void
.end method
.method public startPreview(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;Landroid/graphics/SurfaceTexture;ZZIII)V
.registers 17
const/4 v2, 0x0
move-object v0, p0
move-object v1, p1
move-object v3, p2
move v4, p3
move v5, p4
move v6, p5
move v7, p6
move/from16 v8, p7
invoke-direct/range {v0 .. v8}, Lco/vine/android/recorder/CameraManager;->startPreview(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;Landroid/view/Surface;Landroid/graphics/SurfaceTexture;ZZIII)V
return-void
.end method
.method public startPreview(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;Landroid/view/Surface;ZZIII)V
.registers 17
const/4 v3, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v4, p3
move v5, p4
move v6, p5
move v7, p6
move/from16 v8, p7
invoke-direct/range {v0 .. v8}, Lco/vine/android/recorder/CameraManager;->startPreview(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;Landroid/view/Surface;Landroid/graphics/SurfaceTexture;ZZIII)V
return-void
.end method
.method public startSmoothZoom(Z)V
.registers 4
iget-boolean v0, p0, Lco/vine/android/recorder/CameraManager;->mIsSmoothZoomSupported:Z
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Smooth zoom not supported."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-boolean v0, p0, Lco/vine/android/recorder/CameraManager;->mIsSmoothZooming:Z
if-nez v0, :cond_34
const-string v0, "Smooth zoom started on value {}"
iget v1, p0, Lco/vine/android/recorder/CameraManager;->mRequestedZoom:I
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v0
invoke-virtual {p0, v0}, Lco/vine/android/recorder/CameraManager;->stopContinuousFocus(Landroid/hardware/Camera$Parameters;)Z
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/recorder/CameraManager;->mIsSmoothZooming:Z
iget v0, p0, Lco/vine/android/recorder/CameraManager;->mRequestedZoom:I
iput v0, p0, Lco/vine/android/recorder/CameraManager;->mCurrentZoomTarget:I
if-eqz p1, :cond_35
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
iget v1, p0, Lco/vine/android/recorder/CameraManager;->mMaxZoom:I
invoke-virtual {v0, v1}, Landroid/hardware/Camera;->startSmoothZoom(I)V
:cond_34
:goto_34
return-void
:cond_35
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/hardware/Camera;->startSmoothZoom(I)V
goto :goto_34
.end method
.method public stopContinuousFocus(Landroid/hardware/Camera$Parameters;)Z
.registers 6
const-string v1, ""
invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;
move-result-object v0
const-string v2, "Force auto focus: {}"
sget-boolean v3, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->FORCE_AUTO_FOCUS:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
if-eqz v0, :cond_48
const-string v2, "auto"
invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_1f
sget-boolean v2, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->FORCE_AUTO_FOCUS:Z
if-eqz v2, :cond_38
:cond_1f
const-string v1, "auto"
const-string v2, "Focus Mode: FOCUS_MODE_AUTO"
invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
:goto_26
:cond_26
const-string v2, ""
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_48
invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V
iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v2, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
const/4 v2, 0x1
:goto_37
return v2
:cond_38
const-string v2, "continuous-picture"
invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_26
const-string v1, "continuous-picture"
const-string v2, "Focus Mode: FOCUS_MODE_CONTINUOUS_PICTURE"
invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
goto :goto_26
:cond_48
const/4 v2, 0x0
goto :goto_37
.end method
.method public stopPreview()V
.registers 5
iget-object v1, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I
monitor-enter v1
:try_start_3
const-string v0, "6. Stop Preview."
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
const-wide/16 v2, -0x1
iput-wide v2, p0, Lco/vine/android/recorder/CameraManager;->mLastPreviewFrameTimestamp:J
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/recorder/CameraManager;->isPreviewing:Z
monitor-exit v1
return-void
:catchall_16
move-exception v0
monitor-exit v1
:try_end_18
.catchall {:try_start_3 .. :try_end_18} :catchall_16
throw v0
.end method
.method public stopSmoothZoom()Z
.registers 4
const/4 v1, 0x1
iget-boolean v2, p0, Lco/vine/android/recorder/CameraManager;->mIsSmoothZooming:Z
if-eqz v2, :cond_1d
iget-boolean v2, p0, Lco/vine/android/recorder/CameraManager;->mIsSmoothZoomingStopCalled:Z
if-nez v2, :cond_1d
iput-boolean v1, p0, Lco/vine/android/recorder/CameraManager;->mIsSmoothZoomingStopCalled:Z
const-string v2, "Stop smooth zoom."
invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
:try_start_10
iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v2}, Landroid/hardware/Camera;->stopSmoothZoom()V
:try_end_15
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_16
:goto_15
return v1
:catch_16
move-exception v0
const-string v2, "Failed to stop smooth zoom."
invoke-static {v2}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
goto :goto_15
:cond_1d
const/4 v1, 0x0
goto :goto_15
.end method
.method public switchImageStabilization()V
.registers 6
iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mLOCK:[I
monitor-enter v3
:try_start_3
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v4, 0xf
if-lt v2, v4, :cond_28
iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
:try_end_b
.catchall {:try_start_3 .. :try_end_b} :catchall_33
if-eqz v2, :cond_28
:try_start_d
iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v1
invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z
move-result v2
if-eqz v2, :cond_23
invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z
move-result v2
if-nez v2, :cond_2a
const/4 v2, 0x1
:goto_20
invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V
:cond_23
iget-object v2, p0, Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
:cond_28
:goto_28
:try_start_28
:try_end_28
.catchall {:try_start_d .. :try_end_28} :catchall_33
.catch Ljava/lang/Exception; {:try_start_d .. :try_end_28} :catch_2c
monitor-exit v3
return-void
:cond_2a
const/4 v2, 0x0
goto :goto_20
:catch_2c
move-exception v0
const-string v2, "It just didn\'t work."
invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
goto :goto_28
:catchall_33
move-exception v2
monitor-exit v3
:try_end_35
.catchall {:try_start_28 .. :try_end_35} :catchall_33
throw v2
.end method
.method public waitForPreviewToStart()V
.registers 7
:try_start_0
iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mStartPreviewThread:Lco/vine/android/recorder/CameraManager$StartPreviewThread;
if-eqz v3, :cond_1b
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iget-object v3, p0, Lco/vine/android/recorder/CameraManager;->mStartPreviewThread:Lco/vine/android/recorder/CameraManager$StartPreviewThread;
invoke-virtual {v3}, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->join()V
const-string v3, "Waiting for preview thread took {}ms."
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
sub-long/2addr v4, v1
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V
:cond_1b
:goto_1b
:try_end_1b
.catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1b} :catch_1f
const/4 v3, 0x0
iput-object v3, p0, Lco/vine/android/recorder/CameraManager;->mStartPreviewThread:Lco/vine/android/recorder/CameraManager$StartPreviewThread;
return-void
:catch_1f
move-exception v0
const-string v3, "Couldn\'t wait for preview to join."
invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
goto :goto_1b
.end method