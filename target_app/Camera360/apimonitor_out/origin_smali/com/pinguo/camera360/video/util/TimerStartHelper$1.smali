.class Lcom/pinguo/camera360/video/util/TimerStartHelper$1;
.super Ljava/lang/Object;
.source "TimerStartHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/video/util/TimerStartHelper;->initTimerRunnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/video/util/TimerStartHelper;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/video/util/TimerStartHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper$1;->this$0:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper$1;->this$0:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    #getter for: Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerStopped:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/pinguo/camera360/video/util/TimerStartHelper;->access$0(Lcom/pinguo/camera360/video/util/TimerStartHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper$1;->this$0:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    #getter for: Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/pinguo/camera360/video/util/TimerStartHelper;->access$1(Lcom/pinguo/camera360/video/util/TimerStartHelper;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ge v0, v1, :cond_31

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper$1;->this$0:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    #calls: Lcom/pinguo/camera360/video/util/TimerStartHelper;->setTimerStopped(Z)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/video/util/TimerStartHelper;->access$2(Lcom/pinguo/camera360/video/util/TimerStartHelper;Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper$1;->this$0:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    #getter for: Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerListener:Lcom/pinguo/camera360/video/util/TimerStartHelper$TimerListener;
    invoke-static {v0}, Lcom/pinguo/camera360/video/util/TimerStartHelper;->access$3(Lcom/pinguo/camera360/video/util/TimerStartHelper;)Lcom/pinguo/camera360/video/util/TimerStartHelper$TimerListener;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper$1;->this$0:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    #getter for: Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerListener:Lcom/pinguo/camera360/video/util/TimerStartHelper$TimerListener;
    invoke-static {v0}, Lcom/pinguo/camera360/video/util/TimerStartHelper;->access$3(Lcom/pinguo/camera360/video/util/TimerStartHelper;)Lcom/pinguo/camera360/video/util/TimerStartHelper$TimerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/video/util/TimerStartHelper$TimerListener;->onTimerFinished()V

    goto :goto_d

    :cond_31
    iget-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper$1;->this$0:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    #getter for: Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerListener:Lcom/pinguo/camera360/video/util/TimerStartHelper$TimerListener;
    invoke-static {v0}, Lcom/pinguo/camera360/video/util/TimerStartHelper;->access$3(Lcom/pinguo/camera360/video/util/TimerStartHelper;)Lcom/pinguo/camera360/video/util/TimerStartHelper$TimerListener;

    move-result-object v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper$1;->this$0:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    #getter for: Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerListener:Lcom/pinguo/camera360/video/util/TimerStartHelper$TimerListener;
    invoke-static {v0}, Lcom/pinguo/camera360/video/util/TimerStartHelper;->access$3(Lcom/pinguo/camera360/video/util/TimerStartHelper;)Lcom/pinguo/camera360/video/util/TimerStartHelper$TimerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper$1;->this$0:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    #getter for: Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/pinguo/camera360/video/util/TimerStartHelper;->access$1(Lcom/pinguo/camera360/video/util/TimerStartHelper;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/pinguo/camera360/video/util/TimerStartHelper$TimerListener;->onTimerDecrement(I)V

    :cond_4c
    iget-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper$1;->this$0:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    #getter for: Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/pinguo/camera360/video/util/TimerStartHelper;->access$1(Lcom/pinguo/camera360/video/util/TimerStartHelper;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper$1;->this$0:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    #getter for: Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pinguo/camera360/video/util/TimerStartHelper;->access$4(Lcom/pinguo/camera360/video/util/TimerStartHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/video/util/TimerStartHelper$1;->this$0:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    #getter for: Lcom/pinguo/camera360/video/util/TimerStartHelper;->mTimerRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/pinguo/camera360/video/util/TimerStartHelper;->access$5(Lcom/pinguo/camera360/video/util/TimerStartHelper;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d
.end method
