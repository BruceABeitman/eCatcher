.class public Lcom/pinguo/album/data/video/LocalVideo$LocalVideoRequest;
.super Lcom/pinguo/album/data/cache/ImageBlobRequest;
.source "LocalVideo.java"
.field private mLocalFilePath:Ljava/lang/String;
.method constructor <init>(Lcom/pinguo/album/PGAlbumApp;Lcom/pinguo/album/data/MediaPath;Ljava/lang/String;ILjava/lang/String;Z)V
.registers 14
invoke-static {p4}, Lcom/pinguo/album/data/MediaItem;->getTargetSize(I)I
move-result v5
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move v4, p4
move v6, p6
invoke-direct/range {v0 .. v6}, Lcom/pinguo/album/data/cache/ImageBlobRequest;-><init>(Lcom/pinguo/album/PGAlbumApp;Lcom/pinguo/album/data/MediaPath;Ljava/lang/String;IIZ)V
iput-object p5, p0, Lcom/pinguo/album/data/video/LocalVideo$LocalVideoRequest;->mLocalFilePath:Ljava/lang/String;
return-void
.end method
.method public onDecodeOriginal(Lcom/pinguo/album/AlbumThreadPool$JobContext;I)Landroid/graphics/Bitmap;
.registers 5
iget-object v1, p0, Lcom/pinguo/album/data/video/LocalVideo$LocalVideoRequest;->mLocalFilePath:Ljava/lang/String;
invoke-static {v1}, Lcom/pinguo/album/data/utils/BitmapUtils;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_e
invoke-interface {p1}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->isCancelled()Z
move-result v1
if-eqz v1, :cond_f
:cond_e
const/4 v0, 0x0
:cond_f
return-object v0
.end method