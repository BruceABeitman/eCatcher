.class public interface abstract Lcom/pinguo/album/AlbumThreadPool$JobContext;
.super Ljava/lang/Object;
.source "AlbumThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/AlbumThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "JobContext"
.end annotation


# virtual methods
.method public abstract isCancelled()Z
.end method

.method public abstract setCancelListener(Lcom/pinguo/album/AlbumThreadPool$CancelListener;)V
.end method

.method public abstract setMode(I)Z
.end method
