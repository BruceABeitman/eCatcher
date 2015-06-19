.class public Lcom/pinguo/album/data/image/LocalImage$LocalLargeImageRequest;
.super Ljava/lang/Object;
.source "LocalImage.java"
.implements Lcom/pinguo/album/AlbumThreadPool$Job;
.field  mLocalFilePath:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/album/data/image/LocalImage$LocalLargeImageRequest;->mLocalFilePath:Ljava/lang/String;
return-void
.end method
.method public run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
.registers 4
iget-object v0, p0, Lcom/pinguo/album/data/image/LocalImage$LocalLargeImageRequest;->mLocalFilePath:Ljava/lang/String;
const/4 v1, 0x0
invoke-static {p1, v0, v1}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->createBitmapRegionDecoder(Lcom/pinguo/album/AlbumThreadPool$JobContext;Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/pinguo/album/data/image/LocalImage$LocalLargeImageRequest;->run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
move-result-object v0
return-object v0
.end method