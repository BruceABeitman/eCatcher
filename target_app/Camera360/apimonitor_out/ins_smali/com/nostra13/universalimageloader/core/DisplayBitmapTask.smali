.class final Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;
.super Ljava/lang/Object;
.source "DisplayBitmapTask.java"
.implements Ljava/lang/Runnable;
.field private static final LOG_DISPLAY_IMAGE_IN_IMAGEVIEW:Ljava/lang/String; = "Display image in ImageView (loaded from %1$s) [%2$s]"
.field private static final LOG_TASK_CANCELLED_IMAGEVIEW_LOST:Ljava/lang/String; = "ImageView was collected by GC. Task is cancelled. [%s]"
.field private static final LOG_TASK_CANCELLED_IMAGEVIEW_REUSED:Ljava/lang/String; = "ImageView is reused for another image. Task is cancelled. [%s]"
.field private final bitmap:Landroid/graphics/Bitmap;
.field private final displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
.field private final engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
.field private final imageUri:Ljava/lang/String;
.field private final imageViewRef:Ljava/lang/ref/Reference;
.field private final listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
.field private final loadedFrom:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
.field private loggingEnabled:Z
.field private final memoryCacheKey:Ljava/lang/String;
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->bitmap:Landroid/graphics/Bitmap;
iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->uri:Ljava/lang/String;
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->imageUri:Ljava/lang/String;
iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->imageViewRef:Ljava/lang/ref/Reference;
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->imageViewRef:Ljava/lang/ref/Reference;
iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->memoryCacheKey:Ljava/lang/String;
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;
iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
iput-object p3, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
iput-object p4, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->loadedFrom:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
return-void
.end method
.method private isViewWasReused(Landroid/widget/ImageView;)Z
.registers 4
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
invoke-virtual {v1, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->getLoadingUriForView(Landroid/widget/ImageView;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_10
const/4 v1, 0x1
:goto_f
return v1
:cond_10
const/4 v1, 0x0
goto :goto_f
.end method
.method public run()V
.registers 8
const/4 v6, 0x1
const/4 v5, 0x0
iget-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->imageViewRef:Ljava/lang/ref/Reference;
invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
if-nez v1, :cond_24
iget-boolean v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->loggingEnabled:Z
if-eqz v2, :cond_1c
const-string/jumbo v2, "ImageView was collected by GC. Task is cancelled. [%s]"
new-array v3, v6, [Ljava/lang/Object;
iget-object v4, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;
aput-object v4, v3, v5
invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_1c
iget-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->imageUri:Ljava/lang/String;
invoke-interface {v2, v3, v1}, Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
:goto_23
return-void
:cond_24
invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->isViewWasReused(Landroid/widget/ImageView;)Z
move-result v2
if-eqz v2, :cond_42
iget-boolean v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->loggingEnabled:Z
if-eqz v2, :cond_3a
const-string/jumbo v2, "ImageView is reused for another image. Task is cancelled. [%s]"
new-array v3, v6, [Ljava/lang/Object;
iget-object v4, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;
aput-object v4, v3, v5
invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_3a
iget-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->imageUri:Ljava/lang/String;
invoke-interface {v2, v3, v1}, Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
goto :goto_23
:cond_42
iget-boolean v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->loggingEnabled:Z
if-eqz v2, :cond_57
const-string/jumbo v2, "Display image in ImageView (loaded from %1$s) [%2$s]"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
iget-object v4, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->loadedFrom:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
aput-object v4, v3, v5
iget-object v4, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;
aput-object v4, v3, v6
invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_57
iget-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->bitmap:Landroid/graphics/Bitmap;
iget-object v4, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->loadedFrom:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
invoke-interface {v2, v3, v1, v4}, Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;->display(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)Landroid/graphics/Bitmap;
move-result-object v0
iget-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->imageUri:Ljava/lang/String;
invoke-interface {v2, v3, v1, v0}, Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
iget-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
invoke-virtual {v2, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->cancelDisplayTaskFor(Landroid/widget/ImageView;)V
goto :goto_23
.end method
.method  setLoggingEnabled(Z)V
.registers 2
iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->loggingEnabled:Z
return-void
.end method