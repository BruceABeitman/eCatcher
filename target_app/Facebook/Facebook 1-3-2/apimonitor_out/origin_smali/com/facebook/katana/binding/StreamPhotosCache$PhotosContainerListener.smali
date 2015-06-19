.class public interface abstract Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;
.super Ljava/lang/Object;
.source "StreamPhotosCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/binding/StreamPhotosCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "PhotosContainerListener"
.end annotation


# virtual methods
.method public abstract onPhotoDecoded(Landroid/graphics/Bitmap;Ljava/lang/String;)V
.end method

.method public abstract onPhotoRequested(Landroid/content/Context;Ljava/lang/String;I)V
.end method
