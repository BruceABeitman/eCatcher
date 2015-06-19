.class public interface abstract Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;
.super Ljava/lang/Object;
.source "AlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onContentChanged()V
.end method

.method public abstract onSizeChanged(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;",
            ">;)V"
        }
    .end annotation
.end method
