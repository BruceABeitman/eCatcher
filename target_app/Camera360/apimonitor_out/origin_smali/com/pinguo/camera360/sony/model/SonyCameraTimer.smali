.class public Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
.super Ljava/lang/Object;
.source "SonyCameraTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/sony/model/SonyCameraTimer$CameraTimerListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIME_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCameraTimerListener:Lcom/pinguo/camera360/sony/model/SonyCameraTimer$CameraTimerListener;

.field private mTimeCount:I

.field private mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mTimerHandler:Landroid/os/Handler;

.field private mTimerRunnable:Ljava/lang/Runnable;

.field private mTimerStopped:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimerHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimerRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimerStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x3

    iput v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimeCount:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    iget v1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimeCount:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mCameraTimerListener:Lcom/pinguo/camera360/sony/model/SonyCameraTimer$CameraTimerListener;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/sony/model/SonyCameraTimer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimerStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/sony/model/SonyCameraTimer;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/sony/model/SonyCameraTimer;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->setTimerStopped(Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/sony/model/SonyCameraTimer;)Lcom/pinguo/camera360/sony/model/SonyCameraTimer$CameraTimerListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mCameraTimerListener:Lcom/pinguo/camera360/sony/model/SonyCameraTimer$CameraTimerListener;

    return-object v0
.end method

.method static synthetic access$4()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/sony/model/SonyCameraTimer;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/sony/model/SonyCameraTimer;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private initTimerRunnable()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimerRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer$1;-><init>(Lcom/pinguo/camera360/sony/model/SonyCameraTimer;)V

    iput-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimerRunnable:Ljava/lang/Runnable;

    goto :goto_4
.end method

.method private setTimerStopped(Z)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimerStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public isTimerRunning()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimerStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    iget-object v3, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ltz v1, :cond_9

    iget-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimeCount:I

    if-ge v1, v2, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public setTimerCount(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput p1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimeCount:I

    return-void
.end method

.method public setTimerListener(Lcom/pinguo/camera360/sony/model/SonyCameraTimer$CameraTimerListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mCameraTimerListener:Lcom/pinguo/camera360/sony/model/SonyCameraTimer$CameraTimerListener;

    return-void
.end method

.method public startTimer()V
    .registers 3

    invoke-direct {p0}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->initTimerRunnable()V

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimerStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimeCount:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->setTimerStopped(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mCameraTimerListener:Lcom/pinguo/camera360/sony/model/SonyCameraTimer$CameraTimerListener;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mCameraTimerListener:Lcom/pinguo/camera360/sony/model/SonyCameraTimer$CameraTimerListener;

    invoke-interface {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer$CameraTimerListener;->onTimerStart()V

    :cond_26
    :goto_26
    return-void

    :cond_27
    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimeCount:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_26
.end method

.method public stopTimer()V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->setTimerStopped(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mCameraTimerListener:Lcom/pinguo/camera360/sony/model/SonyCameraTimer$CameraTimerListener;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mCameraTimerListener:Lcom/pinguo/camera360/sony/model/SonyCameraTimer$CameraTimerListener;

    invoke-interface {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer$CameraTimerListener;->onTimerStop()V

    :cond_1a
    return-void
.end method
