.class public interface abstract Lcom/pinguo/album/views/FullImageView$Listener;
.super Ljava/lang/Object;
.source "FullImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/views/FullImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCommitDeleteImage()V
.end method

.method public abstract onCurrentImageUpdated()V
.end method

.method public abstract onDeleteImage(Lcom/pinguo/album/data/MediaPath;I)V
.end method

.method public abstract onFilmModeChanged(Z)V
.end method

.method public abstract onFullScreenChanged(Z)V
.end method

.method public abstract onPictureCenter(Z)V
.end method

.method public abstract onSingleTapConfirmed(II)V
.end method
