.class public interface abstract Lcom/pinguo/camera360/video/util/ThumbnailHelper$OnThumbnailCreateCallback;
.super Ljava/lang/Object;
.source "ThumbnailHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/video/util/ThumbnailHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnThumbnailCreateCallback"
.end annotation


# virtual methods
.method public abstract onThumbnailCreateInAsyncThread(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method public abstract onThumbnailCreateInUIThread()V
.end method
