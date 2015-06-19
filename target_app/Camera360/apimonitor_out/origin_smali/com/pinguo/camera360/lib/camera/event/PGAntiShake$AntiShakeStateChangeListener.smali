.class public interface abstract Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$AntiShakeStateChangeListener;
.super Ljava/lang/Object;
.source "PGAntiShake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AntiShakeStateChangeListener"
.end annotation


# virtual methods
.method public abstract antiShakeTimeout()V
.end method

.method public abstract isCameraShaking(ZI)V
.end method

.method public abstract isCanTakePicture(Z)V
.end method
