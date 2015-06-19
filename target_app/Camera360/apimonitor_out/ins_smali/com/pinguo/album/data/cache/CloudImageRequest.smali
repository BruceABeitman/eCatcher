.class public Lcom/pinguo/album/data/cache/CloudImageRequest;
.super Lcom/pinguo/album/data/cache/ImageBlobRequest;
.source "CloudImageRequest.java"
.field public static final HTTPS_DELETE_URL:Ljava/lang/String; = "mobile/picture/delete"
.field public static final HTTPS_PREFFIX:Ljava/lang/String; = "http://dn-c360.qbox.me/"
.field public static final HTTPS_SURFFIX_MICO_THUMBNAIL:Ljava/lang/String; = "?imageView/1/"
.field public static final HTTPS_SURFFIX_THUMBNAIL:Ljava/lang/String; = "?imageView/2/"
.field private static final TAG:Ljava/lang/String;
.field private mUrlKey:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/album/data/cache/CloudImageRequest;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/album/data/cache/CloudImageRequest;->TAG:Ljava/lang/String;
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
iput-object p5, p0, Lcom/pinguo/album/data/cache/CloudImageRequest;->mUrlKey:Ljava/lang/String;
return-void
.end method
.method public onDecodeOriginal(Lcom/pinguo/album/AlbumThreadPool$JobContext;I)Landroid/graphics/Bitmap;
.registers 15
const/4 v7, 0x0
const/4 v11, 0x2
invoke-static {p2}, Lcom/pinguo/album/data/MediaItem;->getTargetSize(I)I
move-result v6
const-string/jumbo v0, ""
if-ne p2, v11, :cond_55
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "http://dn-c360.qbox.me/"
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v9, p0, Lcom/pinguo/album/data/cache/CloudImageRequest;->mUrlKey:Ljava/lang/String;
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, "?imageView/1/"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, "w/"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, "/h/"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_3a
const/4 v4, 0x0
:try_start_3b
new-instance v8, Lcom/pinguo/album/data/download/PGImageDownloader;
iget-object v9, p0, Lcom/pinguo/album/data/cache/CloudImageRequest;->mApplication:Lcom/pinguo/album/PGAlbumApp;
invoke-interface {v9}, Lcom/pinguo/album/PGAlbumApp;->getAndroidContext()Landroid/content/Context;
move-result-object v9
invoke-direct {v8, v9}, Lcom/pinguo/album/data/download/PGImageDownloader;-><init>(Landroid/content/Context;)V
const/4 v9, 0x0
invoke-virtual {v8, v0, v9}, Lcom/pinguo/album/data/download/PGImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
:try_end_4a
.catch Ljava/io/IOException; {:try_start_3b .. :try_end_4a} :catch_7a
move-result-object v4
:goto_4b
if-eqz v4, :cond_53
invoke-interface {p1}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->isCancelled()Z
move-result v8
if-eqz v8, :cond_9c
:cond_53
move-object v1, v7
:goto_54
return-object v1
:cond_55
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "http://dn-c360.qbox.me/"
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v9, p0, Lcom/pinguo/album/data/cache/CloudImageRequest;->mUrlKey:Ljava/lang/String;
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, "?imageView/2/"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, "w/"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_3a
:catch_7a
move-exception v3
sget-object v8, Lcom/pinguo/album/data/cache/CloudImageRequest;->TAG:Ljava/lang/String;
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, " [fail]:"
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v4}, Lcom/pinguo/album/utils/Utils;->closeSilently(Ljava/io/Closeable;)V
goto :goto_4b
:cond_9c
const/4 v1, 0x0
invoke-static {}, Lcom/pinguo/album/data/MediaItem;->getBytesBufferPool()Lcom/pinguo/album/data/utils/BytesBufferPool;
move-result-object v8
invoke-virtual {v8}, Lcom/pinguo/album/data/utils/BytesBufferPool;->get()Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;
move-result-object v2
:try_start_a5
invoke-virtual {v2, p1, v4}, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->readFrom(Lcom/pinguo/album/AlbumThreadPool$JobContext;Ljava/io/InputStream;)V
invoke-interface {p1}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->isCancelled()Z
:try_end_ab
.catchall {:try_start_a5 .. :try_end_ab} :catchall_11a
.catch Ljava/io/IOException; {:try_start_a5 .. :try_end_ab} :catch_10c
move-result v8
if-eqz v8, :cond_b7
invoke-static {}, Lcom/pinguo/album/data/MediaItem;->getBytesBufferPool()Lcom/pinguo/album/data/utils/BytesBufferPool;
move-result-object v8
invoke-virtual {v8, v2}, Lcom/pinguo/album/data/utils/BytesBufferPool;->recycle(Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;)V
move-object v1, v7
goto :goto_54
:cond_b7
:try_start_b7
new-instance v5, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V
sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
iput-object v7, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
sget-boolean v7, Lcom/pinguo/album/common/ApiHelper;->AT_LEAST_11:Z
if-eqz v7, :cond_f4
if-ne p2, v11, :cond_e9
iget-object v7, v2, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->data:[B
iget v8, v2, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->offset:I
iget v9, v2, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->length:I
invoke-static {p1, v7, v8, v9, v5}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->decodeUsingPool(Lcom/pinguo/album/AlbumThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v1
:goto_d0
if-nez v1, :cond_e0
invoke-interface {p1}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->isCancelled()Z
move-result v7
if-nez v7, :cond_e0
sget-object v7, Lcom/pinguo/album/data/cache/CloudImageRequest;->TAG:Ljava/lang/String;
const-string/jumbo v8, "decode cached failed"
invoke-static {v7, v8}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
:cond_e0
:try_end_e0
.catchall {:try_start_b7 .. :try_end_e0} :catchall_11a
.catch Ljava/io/IOException; {:try_start_b7 .. :try_end_e0} :catch_10c
invoke-static {}, Lcom/pinguo/album/data/MediaItem;->getBytesBufferPool()Lcom/pinguo/album/data/utils/BytesBufferPool;
move-result-object v7
invoke-virtual {v7, v2}, Lcom/pinguo/album/data/utils/BytesBufferPool;->recycle(Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;)V
goto/16 :goto_54
:cond_e9
:try_start_e9
iget-object v7, v2, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->data:[B
iget v8, v2, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->offset:I
iget v9, v2, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->length:I
invoke-static {p1, v7, v8, v9, v5}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->decodeUsingPool(Lcom/pinguo/album/AlbumThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v1
goto :goto_d0
:cond_f4
if-ne p2, v11, :cond_101
iget-object v7, v2, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->data:[B
iget v8, v2, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->offset:I
iget v9, v2, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->length:I
invoke-static {p1, v7, v8, v9, v5}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->decode(Lcom/pinguo/album/AlbumThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v1
goto :goto_d0
:cond_101
iget-object v7, v2, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->data:[B
iget v8, v2, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->offset:I
iget v9, v2, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->length:I
invoke-static {p1, v7, v8, v9, v5}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->decode(Lcom/pinguo/album/AlbumThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
:try_end_10a
.catchall {:try_start_e9 .. :try_end_10a} :catchall_11a
.catch Ljava/io/IOException; {:try_start_e9 .. :try_end_10a} :catch_10c
move-result-object v1
goto :goto_d0
:catch_10c
move-exception v3
:try_start_10d
invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
:try_end_110
.catchall {:try_start_10d .. :try_end_110} :catchall_11a
const/4 v1, 0x0
invoke-static {}, Lcom/pinguo/album/data/MediaItem;->getBytesBufferPool()Lcom/pinguo/album/data/utils/BytesBufferPool;
move-result-object v7
invoke-virtual {v7, v2}, Lcom/pinguo/album/data/utils/BytesBufferPool;->recycle(Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;)V
goto/16 :goto_54
:catchall_11a
move-exception v7
invoke-static {}, Lcom/pinguo/album/data/MediaItem;->getBytesBufferPool()Lcom/pinguo/album/data/utils/BytesBufferPool;
move-result-object v8
invoke-virtual {v8, v2}, Lcom/pinguo/album/data/utils/BytesBufferPool;->recycle(Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;)V
throw v7
.end method
.method public run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Landroid/graphics/Bitmap;
.registers 3
const/4 v0, 0x2
invoke-interface {p1, v0}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->setMode(I)Z
invoke-super {p0, p1}, Lcom/pinguo/album/data/cache/ImageBlobRequest;->run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method