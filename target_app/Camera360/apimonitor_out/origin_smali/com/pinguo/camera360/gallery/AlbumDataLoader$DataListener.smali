.class public interface abstract Lcom/pinguo/camera360/gallery/AlbumDataLoader$DataListener;
.super Ljava/lang/Object;
.source "AlbumDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/AlbumDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataListener"
.end annotation


# virtual methods
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

.method public abstract onSlotContentChanged(I)V
.end method

.method public abstract onTagChanged(I)V
.end method
