.class public interface abstract Lcom/pinguo/camera360/sony/model/SonyCameraTimer$CameraTimerListener;
.super Ljava/lang/Object;
.source "SonyCameraTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraTimerListener"
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
