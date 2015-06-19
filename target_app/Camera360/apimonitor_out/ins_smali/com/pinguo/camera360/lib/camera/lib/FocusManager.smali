.class public Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
.super Ljava/lang/Object;
.source "FocusManager.java"
.field protected static final CONTINUOUS_SNAP_MAX_INTERVAL:I = 0x3e8
.field protected static final FIRST_AUTO_FOCUS_DELAY:I = 0x7d0
.field protected static final FOCUSING_TIMEOUT:I = 0x1388
.field private static final MSG_CAPTURE:I = 0x5
.field private static final MSG_HIDE_TOUCH_INDICATOR:I = 0x6
.field private static final MSG_START_DISTANCE_CHECKER:I = 0x4
.field public static final STATE_FAIL:Ljava/lang/String; = "STATE_FAIL"
.field public static final STATE_FOCUSING:Ljava/lang/String; = "STATE_FOCUSING"
.field public static final STATE_FOCUSING_SNAP_ON_FINISH:Ljava/lang/String; = "STATE_FOCUSING_SNAP_ON_FINISH"
.field public static final STATE_IDLE:Ljava/lang/String; = "STATE_IDLE"
.field public static final STATE_SUCCESS:Ljava/lang/String; = "STATE_SUCCESS"
.field private static final TAG:Ljava/lang/String; = "FocusManager"
.field private mAutoFocusCallBack:Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
.field private mCaptureTime:J
.field private mCloseSensor:Z
.field private mDefaultFocusModes:[Ljava/lang/String;
.field private mDistanceListener:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$DistanceCheckerListener;
.field private mEnableFocus:Z
.field private mFocusArea:Ljava/util/List;
.field private mFocusAreaSupported:Z
.field private mFocusDistanceChecker:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;
.field private mFocusFinishTime:J
.field private mFocusMode:Ljava/lang/String;
.field private mFocusStateMachine:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
.field private mFocusSuccess:Z
.field private mHandler:Landroid/os/Handler;
.field private mIsCameraRelease:Z
.field private mIsFocusSupported:Z
.field private mIsPreviewPause:Z
.field private mIsShutterDownFocus:Z
.field private mLastCaptureTime:J
.field private mLastFocusFinishTime:J
.field private mLastFocusSuccess:Z
.field private mMatrix:Landroid/graphics/Matrix;
.field private mMeteringArea:Ljava/util/List;
.field private mMeteringAreaSupported:Z
.field private mPreviewHeight:I
.field private mPreviewWidth:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 6
const-wide/16 v1, 0x0
const/4 v0, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusSuccess:Z
iput-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mLastFocusSuccess:Z
iput-wide v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mCaptureTime:J
iput-wide v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mLastCaptureTime:J
iput-wide v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusFinishTime:J
iput-wide v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mLastFocusFinishTime:J
iput-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mIsFocusSupported:Z
iput-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mEnableFocus:Z
iput-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mIsPreviewPause:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mIsCameraRelease:Z
new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager$1;-><init>(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;)V
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mDistanceListener:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$DistanceCheckerListener;
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mMatrix:Landroid/graphics/Matrix;
new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
const-string/jumbo v1, "FocusStateMachine"
const-string/jumbo v2, "STATE_IDLE"
invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;
move-result-object v3
invoke-direct {v0, v1, v2, p0, v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/lib/FocusManager;Landroid/os/Looper;)V
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusStateMachine:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusStateMachine:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->start()V
new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager$MainHandler;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager$MainHandler;-><init>(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;Lcom/pinguo/camera360/lib/camera/lib/FocusManager$MainHandler;)V
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mHandler:Landroid/os/Handler;
new-instance v0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mDistanceListener:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$DistanceCheckerListener;
invoke-direct {v0, p1, v1}, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;-><init>(Landroid/content/Context;Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$DistanceCheckerListener;)V
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusDistanceChecker:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mEnableFocus:Z
return v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mCloseSensor:Z
return v0
.end method
.method static synthetic access$10(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;)Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mAutoFocusCallBack:Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mIsPreviewPause:Z
return v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mIsCameraRelease:Z
return v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;)Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusStateMachine:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;)J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusFinishTime:J
return-wide v0
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mLastFocusSuccess:Z
return v0
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mIsShutterDownFocus:Z
return v0
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->sendMsgToStateMachine(I)V
return-void
.end method
.method static synthetic access$9(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;)Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusDistanceChecker:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;
return-object v0
.end method
.method private initializeFocusAreas(IIIIII)V
.registers 16
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusArea:Ljava/util/List;
if-nez v0, :cond_1b
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusArea:Ljava/util/List;
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusArea:Ljava/util/List;
new-instance v1, Landroid/hardware/Camera$Area;
new-instance v2, Landroid/graphics/Rect;
invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V
const/4 v3, 0x1
invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_1b
const/high16 v3, 0x3f80
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusArea:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/hardware/Camera$Area;
iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;
move-object v0, p0
move v1, p1
move v2, p2
move v4, p3
move v5, p4
move v6, p5
move v7, p6
invoke-virtual/range {v0 .. v8}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
return-void
.end method
.method private initializeMeteringAreas(IIIIII)V
.registers 16
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mMeteringArea:Ljava/util/List;
if-nez v0, :cond_1b
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mMeteringArea:Ljava/util/List;
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mMeteringArea:Ljava/util/List;
new-instance v1, Landroid/hardware/Camera$Area;
new-instance v2, Landroid/graphics/Rect;
invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V
const/4 v3, 0x1
invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_1b
const/high16 v3, 0x3fc0
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mMeteringArea:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/hardware/Camera$Area;
iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;
move-object v0, p0
move v1, p1
move v2, p2
move v4, p3
move v5, p4
move v6, p5
move v7, p6
invoke-virtual/range {v0 .. v8}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
return-void
.end method
.method public static isSupported(Ljava/lang/String;Ljava/util/List;)Z
.registers 4
const/4 v0, 0x0
if-nez p1, :cond_4
:cond_3
:goto_3
return v0
:cond_4
invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
move-result v1
if-ltz v1, :cond_3
const/4 v0, 0x1
goto :goto_3
.end method
.method private sendMsgToStateMachine(I)V
.registers 6
const-string/jumbo v1, "FocusManager"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "send msg to state machine : "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Landroid/os/Message;
invoke-direct {v0}, Landroid/os/Message;-><init>()V
iput p1, v0, Landroid/os/Message;->what:I
const/4 v1, 0x1
iput v1, v0, Landroid/os/Message;->arg1:I
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusStateMachine:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->sendMessage(Landroid/os/Message;)V
return-void
.end method
.method protected autoFocus()V
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mEnableFocus:Z
if-nez v0, :cond_5
:cond_4
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mAutoFocusCallBack:Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mAutoFocusCallBack:Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
invoke-interface {v0}, Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;->autoFocus()V
:cond_e
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusDistanceChecker:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;
if-eqz v0, :cond_4
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusDistanceChecker:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->updateLastSensorValues()V
goto :goto_4
.end method
.method public calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
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
invoke-static {v6, v7, v8}, Lcom/pinguo/lib/util/Util;->clamp(III)I
move-result v3
div-int/lit8 v6, v1, 0x2
sub-int v6, p5, v6
const/4 v7, 0x0
sub-int v8, p7, v1
invoke-static {v6, v7, v8}, Lcom/pinguo/lib/util/Util;->clamp(III)I
move-result v5
new-instance v4, Landroid/graphics/RectF;
int-to-float v6, v3
int-to-float v7, v5
add-int v8, v3, v2
int-to-float v8, v8
add-int v9, v5, v1
int-to-float v9, v9
invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V
iget-object v6, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mMatrix:Landroid/graphics/Matrix;
invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z
move-object/from16 v0, p8
invoke-static {v4, v0}, Lcom/pinguo/lib/util/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
return-void
.end method
.method protected cancelAutoFocus()V
.registers 3
const-string/jumbo v0, "FocusManager"
const-string/jumbo v1, "Cancel autofocus."
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->resetTouchFocus()V
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mAutoFocusCallBack:Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mAutoFocusCallBack:Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
invoke-interface {v0}, Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;->cancelAutoFocus()V
:cond_15
return-void
.end method
.method public capture()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mAutoFocusCallBack:Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mAutoFocusCallBack:Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
invoke-interface {v0}, Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;->capture()Z
:cond_9
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->setCaptureTime(J)V
return-void
.end method
.method public closeSensorFocus(Z)V
.registers 5
iput-boolean p1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mCloseSensor:Z
const-string/jumbo v0, "FocusManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "closeSensorFocus : "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-boolean v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mCloseSensor:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public doCapture()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusStateMachine:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->getState()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "STATE_FOCUSING_SNAP_ON_FINISH"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_10
:goto_f
return-void
:cond_10
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mIsShutterDownFocus:Z
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusStateMachine:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->sendMessage(I)V
goto :goto_f
.end method
.method protected getAutoFocusCallBack()Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mAutoFocusCallBack:Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
return-object v0
.end method
.method public getCaptureTime()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mCaptureTime:J
return-wide v0
.end method
.method public getFocusFinishTime()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusFinishTime:J
return-wide v0
.end method
.method protected getFocusMode()Ljava/lang/String;
.registers 2
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getFocusMode()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getLastCaptureTime()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mLastCaptureTime:J
return-wide v0
.end method
.method public getLastFocusFinishTime()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mLastFocusFinishTime:J
return-wide v0
.end method
.method public getState()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusStateMachine:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->getState()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public initializeFocusParameters(II)V
.registers 10
iput p1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mPreviewWidth:I
iput p2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mPreviewHeight:I
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v2
const-string/jumbo v3, "auto"
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getSupportedFocusModes()Ljava/util/List;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z
move-result v3
iput-boolean v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mIsFocusSupported:Z
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isFocusAreaSupported()Z
move-result v3
iput-boolean v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusAreaSupported:Z
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isMeteringAreaSupported()Z
move-result v3
iput-boolean v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mMeteringAreaSupported:Z
const-string/jumbo v3, "FocusManager"
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "mPreviewWidth = "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v5, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mPreviewWidth:I
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, "mPreviewHeight = "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget v5, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mPreviewHeight:I
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "FocusManager"
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "mIsFocusSupported = "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-boolean v5, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mIsFocusSupported:Z
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, " mFocusAreaSupported  = "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-boolean v5, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusAreaSupported:Z
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, "mMeteringAreaSupported = "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-boolean v5, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mMeteringAreaSupported:Z
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, "settingModel.getSupportedFocusModes() = "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getSupportedFocusModes()Ljava/util/List;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
new-instance v1, Landroid/graphics/Point;
invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V
const/4 v3, 0x0
const/16 v4, 0x5a
iget v5, v1, Landroid/graphics/Point;->x:I
iget v6, v1, Landroid/graphics/Point;->y:I
invoke-static {v0, v3, v4, v5, v6}, Lcom/pinguo/lib/util/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V
iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mMatrix:Landroid/graphics/Matrix;
invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z
return-void
.end method
.method public isFocusSuccess()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusSuccess:Z
return v0
.end method
.method public isLastFocusSuccess()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mLastFocusSuccess:Z
return v0
.end method
.method protected isShutterDownFocus()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mIsShutterDownFocus:Z
return v0
.end method
.method public isTouchSnap()Z
.registers 2
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTouchScreenTakePic()Z
move-result v0
return v0
.end method
.method protected needAutoFocusCall()Z
.registers 5
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->getFocusMode()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "FocusManager"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "focusMode = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "infinity"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_35
const-string/jumbo v1, "fixed"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_35
const-string/jumbo v1, "edof"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_37
:cond_35
const/4 v1, 0x0
:goto_36
return v1
:cond_37
const/4 v1, 0x1
goto :goto_36
.end method
.method protected needFocus()Z
.registers 6
const/4 v2, 0x1
const/4 v1, 0x0
iget-boolean v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mIsFocusSupported:Z
if-nez v3, :cond_7
:goto_6
:cond_6
return v1
:cond_7
const-string/jumbo v3, "STATE_FOCUSING"
iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusStateMachine:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->getState()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_6
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->needAutoFocusCall()Z
move-result v3
if-eqz v3, :cond_6
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getCamera()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
move-result-object v0
if-eqz v0, :cond_2c
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->getFacing()I
move-result v3
if-eq v3, v2, :cond_6
:cond_2c
move v1, v2
goto :goto_6
.end method
.method public onAutoFocus(Z)V
.registers 5
const-string/jumbo v0, "FocusManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "onAutoFocus is success = "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iput-boolean p1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mLastFocusSuccess:Z
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusFinishTime:J
if-eqz p1, :cond_27
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusStateMachine:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
const/4 v1, 0x7
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->sendMessage(I)V
:goto_26
return-void
:cond_27
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusStateMachine:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->sendMessage(I)V
goto :goto_26
.end method
.method public onShutterDown()V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mIsShutterDownFocus:Z
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->needFocus()Z
move-result v0
if-nez v0, :cond_a
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusStateMachine:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->sendMessage(I)V
goto :goto_9
.end method
.method public onShutterUp()V
.registers 4
const-string/jumbo v1, "FocusManager"
const-string/jumbo v2, "onShutterUp MSG_CANCEL_FOCUS"
invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getCamera()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
move-result-object v0
if-eqz v0, :cond_1b
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->getFacing()I
move-result v1
const/4 v2, 0x1
if-ne v1, v2, :cond_1b
:goto_1a
return-void
:cond_1b
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mIsShutterDownFocus:Z
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusStateMachine:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
const/4 v2, 0x3
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->sendMessage(I)V
goto :goto_1a
.end method
.method public onTouch(Landroid/graphics/Point;Landroid/view/MotionEvent;Z)Z
.registers 9
const/4 v4, 0x1
const-string/jumbo v1, "FocusManager"
const-string/jumbo v2, "onTouch"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mIsShutterDownFocus:Z
const-string/jumbo v1, "FocusManager"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "mFocusAreaSupported ="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-boolean v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusAreaSupported:Z
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " mFocusArea = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusArea:Ljava/util/List;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusAreaSupported:Z
if-nez v1, :cond_3a
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusArea:Ljava/util/List;
if-eqz v1, :cond_3c
:cond_3a
if-nez p3, :cond_44
:cond_3c
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusStateMachine:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
const/16 v2, 0xb
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->sendMessage(I)V
:goto_43
return v4
:cond_44
new-instance v0, Landroid/os/Message;
invoke-direct {v0}, Landroid/os/Message;-><init>()V
iput v4, v0, Landroid/os/Message;->what:I
iget v1, p1, Landroid/graphics/Point;->x:I
int-to-float v1, v1
invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
move-result v2
add-float/2addr v1, v2
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v1
iput v1, v0, Landroid/os/Message;->arg1:I
iget v1, p1, Landroid/graphics/Point;->y:I
int-to-float v1, v1
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v2
add-float/2addr v1, v2
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v1
iput v1, v0, Landroid/os/Message;->arg2:I
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusStateMachine:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->sendMessage(Landroid/os/Message;)V
goto :goto_43
.end method
.method public resetSensorValue()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mLastFocusSuccess:Z
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusDistanceChecker:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusDistanceChecker:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->reset()V
:cond_c
return-void
.end method
.method public resetTouchFocus()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mAutoFocusCallBack:Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mAutoFocusCallBack:Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
invoke-interface {v0}, Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;->onResetFocusArea()V
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mAutoFocusCallBack:Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
invoke-interface {v0}, Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;->clear()V
:cond_f
iput-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusArea:Ljava/util/List;
iput-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mMeteringArea:Ljava/util/List;
return-void
.end method
.method public setCameraRelease(Z)V
.registers 5
const-string/jumbo v0, "FocusManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "setCameraRelease isReleaseCamera"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iput-boolean p1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mIsCameraRelease:Z
if-eqz p1, :cond_23
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusStateMachine:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusStateMachine:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->removeAllPendingMessage()V
:cond_23
return-void
.end method
.method protected setCaptureTime(J)V
.registers 5
iget-wide v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mCaptureTime:J
iput-wide v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mLastCaptureTime:J
iput-wide p1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mCaptureTime:J
return-void
.end method
.method protected setFocusArea(II)V
.registers 12
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mAutoFocusCallBack:Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mAutoFocusCallBack:Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
invoke-interface {v0}, Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;->getFocusSize()Landroid/graphics/Point;
move-result-object v7
iget v1, v7, Landroid/graphics/Point;->x:I
iget v2, v7, Landroid/graphics/Point;->y:I
const-string/jumbo v0, "test"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "focusWidth="
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "focusHeight"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "mPreviewWidth="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget v4, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mPreviewWidth:I
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "mPreviewHeight="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget v4, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mPreviewHeight:I
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, " x / "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "/ y = "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v8, Landroid/graphics/Point;
iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mPreviewWidth:I
iget v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mPreviewHeight:I
invoke-direct {v8, v0, v3}, Landroid/graphics/Point;-><init>(II)V
iget v5, v8, Landroid/graphics/Point;->x:I
iget v6, v8, Landroid/graphics/Point;->y:I
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusAreaSupported:Z
if-eqz v0, :cond_77
move-object v0, p0
move v3, p1
move v4, p2
invoke-direct/range {v0 .. v6}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->initializeFocusAreas(IIIIII)V
:cond_77
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mMeteringAreaSupported:Z
if-eqz v0, :cond_81
move-object v0, p0
move v3, p1
move v4, p2
invoke-direct/range {v0 .. v6}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->initializeMeteringAreas(IIIIII)V
:cond_81
const-string/jumbo v0, "test"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "x = "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "Y =  "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mAutoFocusCallBack:Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
invoke-interface {v0, p1, p2, v5, v6}, Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;->onSetFocusArea(IIII)V
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->updateFocusParameters()V
goto/16 :goto_4
.end method
.method public setFocusCallBack(Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mAutoFocusCallBack:Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
return-void
.end method
.method public setFocusEnable(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mEnableFocus:Z
return-void
.end method
.method public setFocusFinishTime(J)V
.registers 5
iget-wide v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusFinishTime:J
iput-wide v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mLastFocusFinishTime:J
iput-wide p1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusFinishTime:J
return-void
.end method
.method public setFocusMode(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusMode:Ljava/lang/String;
return-void
.end method
.method public setFocusSuccess(Z)V
.registers 3
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusSuccess:Z
iput-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mLastFocusSuccess:Z
iput-boolean p1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusSuccess:Z
return-void
.end method
.method public setMatrix(ZI)V
.registers 7
iget v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mPreviewHeight:I
if-eqz v1, :cond_3e
iget v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mPreviewWidth:I
if-eqz v1, :cond_3e
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
const-string/jumbo v1, "Focus"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Update matrix:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mPreviewWidth:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mPreviewHeight:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mPreviewWidth:I
iget v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mPreviewHeight:I
invoke-static {v0, p1, p2, v1, v2}, Lcom/pinguo/lib/util/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mMatrix:Landroid/graphics/Matrix;
invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z
:cond_3e
return-void
.end method
.method public setPreviewPause(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mIsPreviewPause:Z
return-void
.end method
.method protected setShutterDownFocus(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mIsShutterDownFocus:Z
return-void
.end method
.method protected showFocusViewFail(Z)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mAutoFocusCallBack:Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mAutoFocusCallBack:Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;->showFail(Z)V
:cond_9
return-void
.end method
.method protected showFocusViewStart()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mAutoFocusCallBack:Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mAutoFocusCallBack:Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
invoke-interface {v0}, Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;->showStart()V
:cond_9
return-void
.end method
.method protected showFocusViewSuccess(Z)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mAutoFocusCallBack:Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mAutoFocusCallBack:Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;->showSuccess(Z)V
:cond_9
return-void
.end method
.method public startFirstFocusAfterStartPreview()V
.registers 6
const/4 v4, 0x4
const-string/jumbo v1, "FocusManager"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "start sensor mIsFocusSupported ="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-boolean v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mIsFocusSupported:Z
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mIsFocusSupported:Z
if-nez v1, :cond_1e
:goto_1d
return-void
:cond_1e
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getCamera()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
move-result-object v0
if-eqz v0, :cond_58
const-string/jumbo v1, "FocusManager"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "cameraProxy.getFacing() = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->getFacing()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->getFacing()I
move-result v1
const/4 v2, 0x1
if-ne v1, v2, :cond_58
const-string/jumbo v1, "FocusManager"
const-string/jumbo v2, "mFocusDistanceChecker.unRegister()"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusDistanceChecker:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->unRegister()V
goto :goto_1d
:cond_58
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z
move-result v1
if-eqz v1, :cond_65
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V
:cond_65
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mHandler:Landroid/os/Handler;
const-wide/16 v2, 0x7d0
invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iput-wide v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mLastFocusFinishTime:J
goto :goto_1d
.end method
.method public stopSensor()V
.registers 3
const/4 v1, 0x4
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z
move-result v0
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
:cond_e
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusDistanceChecker:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->unRegister()V
return-void
.end method
.method public updateFocusParameters()V
.registers 5
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v0
iget-boolean v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusAreaSupported:Z
if-eqz v1, :cond_3c
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusArea:Ljava/util/List;
if-eqz v1, :cond_3c
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusArea:Ljava/util/List;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setFocusAreas(Ljava/util/List;)V
:goto_11
iget-boolean v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mMeteringAreaSupported:Z
if-eqz v1, :cond_46
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mMeteringArea:Ljava/util/List;
if-eqz v1, :cond_46
const-string/jumbo v1, "FocusManager"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "upDateFocusParameters  :  meter area "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mMeteringArea:Ljava/util/List;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mMeteringArea:Ljava/util/List;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setMeteringAreas(Ljava/util/List;)V
:goto_36
const/16 v1, 0x8
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->updateParameters(I)V
return-void
:cond_3c
const-string/jumbo v1, "FocusManager"
const-string/jumbo v2, "updateFocusParameters : setFocusAreas unsupported."
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_11
:cond_46
const-string/jumbo v1, "FocusManager"
const-string/jumbo v2, "updateFocusParameters : setMeteringAreas unsupported."
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_36
.end method