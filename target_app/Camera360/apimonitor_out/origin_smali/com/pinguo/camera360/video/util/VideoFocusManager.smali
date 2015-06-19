.class public Lcom/pinguo/camera360/video/util/VideoFocusManager;
.super Ljava/lang/Object;
.source "VideoFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/video/util/VideoFocusManager$Listener;
    }
.end annotation


# static fields
.field protected static final FOCUSING_TIMEOUT:I = 0x1388

.field private static final STATE_FAIL:I = 0x4

.field private static final STATE_FOCUSING:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SUCCESS:I = 0x3

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private final mFocusTimeoutRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIsFocusSupported:Z

.field private mListener:Lcom/pinguo/camera360/video/util/VideoFocusManager$Listener;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteringAreaSupported:Z

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/video/util/VideoFocusManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mState:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mIsFocusSupported:Z

    new-instance v0, Lcom/pinguo/camera360/video/util/VideoFocusManager$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/video/util/VideoFocusManager$1;-><init>(Lcom/pinguo/camera360/video/util/VideoFocusManager;)V

    iput-object v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mFocusTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/video/util/VideoFocusManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/video/util/VideoFocusManager;->cancelAutoFocus()V

    return-void
.end method

.method private autoFocus()V
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Start autofocus."

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mListener:Lcom/pinguo/camera360/video/util/VideoFocusManager$Listener;

    invoke-interface {v0}, Lcom/pinguo/camera360/video/util/VideoFocusManager$Listener;->autoFocus()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mState:I

    return-void
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

    iget-object v6, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/pinguo/lib/util/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    return-void
.end method

.method private cancelAutoFocus()V
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "cancel autofocus."

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mListener:Lcom/pinguo/camera360/video/util/VideoFocusManager$Listener;

    invoke-interface {v0}, Lcom/pinguo/camera360/video/util/VideoFocusManager$Listener;->cancelAutoFocus()V

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mFocusTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mState:I

    return-void
.end method

.method private initializeFocusAreas(IIIIII)V
    .registers 16
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_1b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mFocusArea:Ljava/util/List;

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mFocusArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    const/high16 v3, 0x3f80

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mFocusArea:Ljava/util/List;

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

    invoke-direct/range {v0 .. v8}, Lcom/pinguo/camera360/video/util/VideoFocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    return-void
.end method

.method private initializeMeteringAreas(IIIIII)V
    .registers 16
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mMeteringArea:Ljava/util/List;

    if-nez v0, :cond_1b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mMeteringArea:Ljava/util/List;

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mMeteringArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    const/high16 v3, 0x3fc0

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mMeteringArea:Ljava/util/List;

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

    invoke-direct/range {v0 .. v8}, Lcom/pinguo/camera360/video/util/VideoFocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    return-void
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_a

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private setFocusArea(II)V
    .registers 12

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mListener:Lcom/pinguo/camera360/video/util/VideoFocusManager$Listener;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mListener:Lcom/pinguo/camera360/video/util/VideoFocusManager$Listener;

    invoke-interface {v0}, Lcom/pinguo/camera360/video/util/VideoFocusManager$Listener;->getFocusSize()Landroid/graphics/Point;

    move-result-object v7

    iget v1, v7, Landroid/graphics/Point;->x:I

    iget v2, v7, Landroid/graphics/Point;->y:I

    sget-object v0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->TAG:Ljava/lang/String;

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

    iget v4, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mPreviewWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mPreviewHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mPreviewHeight:I

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

    iget v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mPreviewWidth:I

    iget v3, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mPreviewHeight:I

    invoke-direct {v8, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    iget v5, v8, Landroid/graphics/Point;->x:I

    iget v6, v8, Landroid/graphics/Point;->y:I

    iget-boolean v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_76

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/pinguo/camera360/video/util/VideoFocusManager;->initializeFocusAreas(IIIIII)V

    :cond_76
    iget-boolean v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_80

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/pinguo/camera360/video/util/VideoFocusManager;->initializeMeteringAreas(IIIIII)V

    :cond_80
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

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mListener:Lcom/pinguo/camera360/video/util/VideoFocusManager$Listener;

    invoke-interface {v0, p1, p2, v5, v6}, Lcom/pinguo/camera360/video/util/VideoFocusManager$Listener;->onSetFocusArea(IIII)V

    invoke-direct {p0}, Lcom/pinguo/camera360/video/util/VideoFocusManager;->updateFocusParameters()V

    goto/16 :goto_4
.end method

.method private updateFocusParameters()V
    .registers 4

    iget-boolean v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_43

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mFocusArea:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setFocusAreas(Ljava/util/List;)V

    :goto_11
    iget-boolean v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mMeteringArea:Ljava/util/List;

    if-eqz v0, :cond_4c

    sget-object v0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "upDateFocusParameters  :  meter area "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mMeteringArea:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mMeteringArea:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setMeteringAreas(Ljava/util/List;)V

    :goto_39
    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->updateParameters(I)V

    return-void

    :cond_43
    sget-object v0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateFocusParameters : setFocusAreas unsupported."

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_4c
    sget-object v0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateFocusParameters : setMeteringAreas unsupported."

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39
.end method


# virtual methods
.method public initializeFocusParameters(Lcom/pinguo/camera360/video/util/VideoFocusManager$Listener;II)V
    .registers 11

    iput-object p1, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mListener:Lcom/pinguo/camera360/video/util/VideoFocusManager$Listener;

    iput p2, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mPreviewWidth:I

    iput p3, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mPreviewHeight:I

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v2

    const-string/jumbo v3, "auto"

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/camera360/video/util/VideoFocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mIsFocusSupported:Z

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isFocusAreaSupported()Z

    move-result v3

    iput-boolean v3, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mFocusAreaSupported:Z

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isMeteringAreaSupported()Z

    move-result v3

    iput-boolean v3, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mMeteringAreaSupported:Z

    sget-object v3, Lcom/pinguo/camera360/video/util/VideoFocusManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mPreviewWidth = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mPreviewWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mPreviewHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mPreviewHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/pinguo/camera360/video/util/VideoFocusManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mIsFocusSupported = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mIsFocusSupported:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mFocusAreaSupported  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mFocusAreaSupported:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mMeteringAreaSupported = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mMeteringAreaSupported:Z

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

    invoke-direct {v1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    const/4 v3, 0x0

    const/16 v4, 0x5a

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v3, v4, v5, v6}, Lcom/pinguo/lib/util/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    iget-object v3, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public isFocusing()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mState:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isFoucsEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onAutoFocus(Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/util/VideoFocusManager;->isFoucsEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    sget-object v0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onAutoFocus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mFocusTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    if-eqz p1, :cond_33

    const/4 v0, 0x3

    iput v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mState:I

    :goto_2d
    iget-object v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mListener:Lcom/pinguo/camera360/video/util/VideoFocusManager$Listener;

    invoke-interface {v0}, Lcom/pinguo/camera360/video/util/VideoFocusManager$Listener;->cancelAutoFocus()V

    goto :goto_6

    :cond_33
    const/4 v0, 0x4

    iput v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mState:I

    goto :goto_2d
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/util/VideoFocusManager;->isFoucsEnabled()Z

    move-result v2

    if-nez v2, :cond_9

    :goto_8
    return v0

    :cond_9
    iget v2, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mState:I

    if-ne v2, v1, :cond_16

    sget-object v1, Lcom/pinguo/camera360/video/util/VideoFocusManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onTouch STATE_FOCUSING"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_16
    sget-object v0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onTouch can"

    invoke-static {v0, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/pinguo/camera360/video/util/VideoFocusManager;->setFocusArea(II)V

    invoke-direct {p0}, Lcom/pinguo/camera360/video/util/VideoFocusManager;->autoFocus()V

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mFocusTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pinguo/camera360/video/util/VideoFocusManager;->mFocusTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v1

    goto :goto_8
.end method

.method public release()V
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/util/VideoFocusManager;->isFoucsEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-direct {p0}, Lcom/pinguo/camera360/video/util/VideoFocusManager;->cancelAutoFocus()V

    goto :goto_6
.end method
