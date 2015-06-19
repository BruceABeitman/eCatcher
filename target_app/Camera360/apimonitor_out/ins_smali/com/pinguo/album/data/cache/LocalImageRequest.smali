.class public Lcom/pinguo/album/data/cache/LocalImageRequest;
.super Lcom/pinguo/album/data/cache/ImageBlobRequest;
.source "LocalImageRequest.java"
.field private static final TAG:Ljava/lang/String;
.field private mLocalFilePath:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/album/data/cache/LocalImageRequest;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/album/data/cache/LocalImageRequest;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/pinguo/album/PGAlbumApp;Lcom/pinguo/album/data/MediaPath;Ljava/lang/String;ILjava/lang/String;Z)V
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
iput-object p5, p0, Lcom/pinguo/album/data/cache/LocalImageRequest;->mLocalFilePath:Ljava/lang/String;
return-void
.end method
.method public onDecodeOriginal(Lcom/pinguo/album/AlbumThreadPool$JobContext;I)Landroid/graphics/Bitmap;
.registers 12
new-instance v3, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V
sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
iput-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
invoke-static {p2}, Lcom/pinguo/album/data/MediaItem;->getTargetSize(I)I
move-result v4
const/4 v6, 0x2
if-ne p2, v6, :cond_5a
new-instance v2, Lcom/pinguo/album/exif/ExifInterface;
invoke-direct {v2}, Lcom/pinguo/album/exif/ExifInterface;-><init>()V
const/4 v5, 0x0
:try_start_16
iget-object v6, p0, Lcom/pinguo/album/data/cache/LocalImageRequest;->mLocalFilePath:Ljava/lang/String;
invoke-virtual {v2, v6}, Lcom/pinguo/album/exif/ExifInterface;->readExif(Ljava/lang/String;)V
invoke-virtual {v2}, Lcom/pinguo/album/exif/ExifInterface;->getThumbnail()[B
:try_end_1e
.catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_1e} :catch_28
.catch Ljava/io/IOException; {:try_start_16 .. :try_end_1e} :catch_41
move-result-object v5
:goto_1f
if-eqz v5, :cond_5a
invoke-static {p1, v5, v3, v4}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->decodeIfBigEnough(Lcom/pinguo/album/AlbumThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_5a
:goto_27
return-object v0
:catch_28
move-exception v1
sget-object v6, Lcom/pinguo/album/data/cache/LocalImageRequest;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "failed to find file to read thumbnail: "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v8, p0, Lcom/pinguo/album/data/cache/LocalImageRequest;->mLocalFilePath:Ljava/lang/String;
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1f
:catch_41
move-exception v1
sget-object v6, Lcom/pinguo/album/data/cache/LocalImageRequest;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "failed to get thumbnail from: "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v8, p0, Lcom/pinguo/album/data/cache/LocalImageRequest;->mLocalFilePath:Ljava/lang/String;
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1f
:cond_5a
iget-object v6, p0, Lcom/pinguo/album/data/cache/LocalImageRequest;->mLocalFilePath:Ljava/lang/String;
invoke-static {p1, v6, v3, v4, p2}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->decodeThumbnail(Lcom/pinguo/album/AlbumThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_27
.end method