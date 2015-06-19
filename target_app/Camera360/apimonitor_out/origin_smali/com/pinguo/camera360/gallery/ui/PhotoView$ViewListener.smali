.class public interface abstract Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;
.super Ljava/lang/Object;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ViewListener"
.end annotation


# virtual methods
.method public abstract lockOrientation()V
.end method

.method public abstract onCommitDeleteImage()V
.end method

.method public abstract onCurrentImageUpdated()V
.end method

.method public abstract onDeleteImage(Lcom/pinguo/camera360/gallery/data/Path;I)V
.end method

.method public abstract onDown()V
.end method

.method public abstract onFullScreenChanged(Z)V
.end method

.method public abstract onLongPress()V
.end method

.method public abstract onScaleBegin()V
.end method

.method public abstract onScaleEnd()V
.end method

.method public abstract onSingleTapConfirmed(II)V
.end method

.method public abstract onUp()V
.end method

.method public abstract unlockOrientation()V
.end method
