.class public interface abstract Lcom/pinguo/album/data/loader/ThumbnailDataLoader$DataListener;
.super Ljava/lang/Object;
.source "ThumbnailDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/data/loader/ThumbnailDataLoader;
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
            "Lcom/pinguo/album/data/MediaSet$SortTag;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSlotContentChanged(I)V
.end method

.method public abstract onTagChanged(I)V
.end method
