.class public Lcom/pinguo/camera360/gallery/data/C360Image$LocalLargeImageRequest;
.super Ljava/lang/Object;
.source "C360Image.java"
.implements Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;
.field  mLocalFilePath:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/gallery/data/C360Image$LocalLargeImageRequest;->mLocalFilePath:Ljava/lang/String;
return-void
.end method
.method public run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/C360Image$LocalLargeImageRequest;->mLocalFilePath:Ljava/lang/String;
const/4 v1, 0x0
invoke-static {p1, v0, v1}, Lcom/pinguo/camera360/gallery/data/DecodeUtils;->createBitmapRegionDecoder(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/data/C360Image$LocalLargeImageRequest;->run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
move-result-object v0
return-object v0
.end method