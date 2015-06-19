.class public interface abstract Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;
.super Ljava/lang/Object;
.source "PGCameraBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/model/PGCameraBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TimerCameraListener"
.end annotation


# virtual methods
.method public abstract onTimerDecrement(I)V
.end method

.method public abstract onTimerFinished()V
.end method

.method public abstract onTimerStart()V
.end method

.method public abstract onTimerStop()V
.end method
