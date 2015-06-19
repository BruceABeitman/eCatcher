.class public interface abstract Lcom/pinguo/album/views/ThumbnailView$Renderer;
.super Ljava/lang/Object;
.source "ThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/views/ThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Renderer"
.end annotation


# virtual methods
.method public abstract onThumbnailSizeChanged(II)V
.end method

.method public abstract onVisibleRangeChanged(II)V
.end method

.method public abstract onVisibleTagRangeChanged(II)V
.end method

.method public abstract prepareDrawing()V
.end method

.method public abstract renderSortTag(Lcom/pinguo/album/opengles/GLESCanvas;III)I
.end method

.method public abstract renderThumbnail(Lcom/pinguo/album/opengles/GLESCanvas;IIII)I
.end method
