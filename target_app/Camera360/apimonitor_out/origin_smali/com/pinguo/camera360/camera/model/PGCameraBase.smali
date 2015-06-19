.class public Lcom/pinguo/camera360/camera/model/PGCameraBase;
.super Lcom/pinguo/camera360/lib/camera/model/CameraModel;
.source "PGCameraBase.java"

# interfaces
.implements Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$AntiShakeStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/camera/model/PGCameraBase$AntiShakeListener;,
        Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIME_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAntiShakeInstance:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;

.field private mAntiShakeListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$AntiShakeListener;

.field private mTimeCount:I

.field private mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mTimerCameraListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;

.field private mTimerHandler:Landroid/os/Handler;

.field private mTimerRunnable:Ljava/lang/Runnable;

.field private mTimerStopped:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/camera/model/PGCameraBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x3

    iput v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimeCount:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    iget v1, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimeCount:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v2, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeInstance:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;

    iput-object v2, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$AntiShakeListener;

    iput-object v2, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerCameraListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/camera/model/PGCameraBase;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/camera/model/PGCameraBase;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/camera/model/PGCameraBase;)Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerCameraListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/camera/model/PGCameraBase;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/camera/model/PGCameraBase;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private initTimerRunnable()V
    .registers 2

    new-instance v0, Lcom/pinguo/camera360/camera/model/PGCameraBase$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/model/PGCameraBase$1;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public antiShakeTimeout()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$AntiShakeListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$AntiShakeListener;

    invoke-interface {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase$AntiShakeListener;->onTimeout()V

    :cond_9
    return-void
.end method

.method public cancelAntiShakeTakePicture()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeInstance:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->cancelCapture()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$AntiShakeListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$AntiShakeListener;

    invoke-interface {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase$AntiShakeListener;->onClose()V

    :cond_e
    return-void
.end method

.method public closeAntiShakeFunction()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeInstance:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeInstance:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->stopAntiShakeFunction()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeInstance:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$AntiShakeListener;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$AntiShakeListener;

    invoke-interface {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase$AntiShakeListener;->onStop()V

    :cond_15
    return-void
.end method

.method public getCameraFacing()I
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCurCameraId()I

    move-result v1

    aget-object v0, v0, v1

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    return v0
.end method

.method public isAntiShakeRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeInstance:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeInstance:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->isAntiShakeRunning()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isCameraShaking(ZI)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$AntiShakeListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$AntiShakeListener;

    invoke-interface {v0, p2}, Lcom/pinguo/camera360/camera/model/PGCameraBase$AntiShakeListener;->onUpdate(I)V

    :cond_9
    return-void
.end method

.method public isCanTakePicture(Z)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$AntiShakeListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$AntiShakeListener;

    invoke-interface {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase$AntiShakeListener;->onClose()V

    :cond_9
    return-void
.end method

.method public isTimerRunning()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const-string/jumbo v1, "isTimerRunning"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "timeValue="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ltz v1, :cond_9

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimeCount:I

    if-ge v1, v2, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public openAntiShakeFunction()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeInstance:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;

    if-nez v0, :cond_10

    new-instance v0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;

    invoke-direct {v0}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeInstance:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeInstance:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->setAntiShakeStateChangeListener(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$AntiShakeStateChangeListener;)V

    :cond_10
    return-void
.end method

.method public setTimeCount(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput p1, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimeCount:I

    return-void
.end method

.method public setTimerStopped(Z)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public startAntiShake(Lcom/pinguo/camera360/camera/model/PGCameraBase$AntiShakeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeInstance:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;

    if-eqz v0, :cond_10

    iput-object p1, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$AntiShakeListener;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$AntiShakeListener;

    invoke-interface {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase$AntiShakeListener;->onStart()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeInstance:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->startAntiShakeFunction()V

    :cond_10
    return-void
.end method

.method public startTimerTake(Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerCameraListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->initTimerRunnable()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v1, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimeCount:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->setTimerStopped(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerCameraListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerCameraListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;

    invoke-interface {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;->onTimerStart()V

    :cond_28
    :goto_28
    return-void

    :cond_29
    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v1, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimeCount:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_28
.end method

.method public stopAntiShake()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeInstance:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeInstance:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->stopAntiShakeFunction()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$AntiShakeListener;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mAntiShakeListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$AntiShakeListener;

    invoke-interface {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase$AntiShakeListener;->onStop()V

    :cond_12
    return-void
.end method

.method public stopTimerTake()V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->setTimerStopped(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerCameraListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerCameraListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;

    invoke-interface {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;->onTimerStop()V

    :cond_1a
    return-void
.end method
