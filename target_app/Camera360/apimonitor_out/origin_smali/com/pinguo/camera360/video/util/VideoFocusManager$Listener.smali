.class public interface abstract Lcom/pinguo/camera360/video/util/VideoFocusManager$Listener;
.super Ljava/lang/Object;
.source "VideoFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/video/util/VideoFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract autoFocus()V
.end method

.method public abstract cancelAutoFocus()V
.end method

.method public abstract getFocusSize()Landroid/graphics/Point;
.end method

.method public abstract onSetFocusArea(IIII)V
.end method
