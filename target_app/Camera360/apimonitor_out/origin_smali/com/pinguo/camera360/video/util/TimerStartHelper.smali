.class public Lcom/pinguo/camera360/video/util/TimerStartHelper;
.super Ljava/lang/Object;
.source "TimerStartHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/video/util/TimerStartHelper$TimerListener;
    }
.end annotation


# instance fields
.field private mTimeCount:I

.field private mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mTimerHandler:Landroid/os/Handler;

.field private mTimerListener:Lcom/pinguo/camera360/video/util/TimerStartHelper$TimerListener;

.field private mTimerRunnable:Ljava/lang/Runnable;

.field private mTimerStopped:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x3

    iput v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimeCount:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    iget v1, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimeCount:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v2, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerListener:Lcom/pinguo/camera360/video/util/TimerStartHelper$TimerListener;

    invoke-direct {p0}, Lcom/pinguo/camera360/video/util/TimerStartHelper;->initTimerRunnable()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/video/util/TimerStartHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/video/util/TimerStartHelper;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/video/util/TimerStartHelper;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/video/util/TimerStartHelper;->setTimerStopped(Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/video/util/TimerStartHelper;)Lcom/pinguo/camera360/video/util/TimerStartHelper$TimerListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerListener:Lcom/pinguo/camera360/video/util/TimerStartHelper$TimerListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/video/util/TimerStartHelper;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/video/util/TimerStartHelper;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private initTimerRunnable()V
    .registers 2

    new-instance v0, Lcom/pinguo/camera360/video/util/TimerStartHelper$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/video/util/TimerStartHelper$1;-><init>(Lcom/pinguo/camera360/video/util/TimerStartHelper;)V

    iput-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private setTimeCount(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput p1, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimeCount:I

    return-void
.end method

.method private setTimerStopped(Z)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public isTimerRunning()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ltz v1, :cond_9

    iget-object v1, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimeCount:I

    if-ge v1, v2, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public startTimerTake(ILcom/pinguo/camera360/video/util/TimerStartHelper$TimerListener;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/video/util/TimerStartHelper;->setTimeCount(I)V

    iput-object p2, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerListener:Lcom/pinguo/camera360/video/util/TimerStartHelper$TimerListener;

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v1, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimeCount:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/video/util/TimerStartHelper;->setTimerStopped(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerListener:Lcom/pinguo/camera360/video/util/TimerStartHelper$TimerListener;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerListener:Lcom/pinguo/camera360/video/util/TimerStartHelper$TimerListener;

    invoke-interface {v0}, Lcom/pinguo/camera360/video/util/TimerStartHelper$TimerListener;->onTimerStart()V

    :cond_28
    :goto_28
    return-void

    :cond_29
    iget-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v1, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimeCount:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_28
.end method

.method public stopTimerTake()V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/video/util/TimerStartHelper;->setTimerStopped(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerListener:Lcom/pinguo/camera360/video/util/TimerStartHelper$TimerListener;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerListener:Lcom/pinguo/camera360/video/util/TimerStartHelper$TimerListener;

    invoke-interface {v0}, Lcom/pinguo/camera360/video/util/TimerStartHelper$TimerListener;->onTimerStop()V

    :cond_1a
    return-void
.end method
