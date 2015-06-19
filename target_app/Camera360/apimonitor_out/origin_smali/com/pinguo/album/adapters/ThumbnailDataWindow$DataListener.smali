.class public interface abstract Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;
.super Ljava/lang/Object;
.source "ThumbnailDataWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/adapters/ThumbnailDataWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataListener"
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
            "Lcom/pinguo/album/data/MediaSet$SortTag;",
            ">;)V"
        }
    .end annotation
.end method
