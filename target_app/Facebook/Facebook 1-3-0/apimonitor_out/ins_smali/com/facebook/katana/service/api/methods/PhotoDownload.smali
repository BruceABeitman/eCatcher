.class public Lcom/facebook/katana/service/api/methods/PhotoDownload;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "PhotoDownload.java"
.implements Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;
.field private final mAlbumId:Ljava/lang/String;
.field private final mContext:Landroid/content/Context;
.field private final mFilename:Ljava/lang/String;
.field private final mOwnerId:J
.field private mPhoto:Lcom/facebook/katana/binding/StreamPhoto;
.field private final mPhotoId:Ljava/lang/String;
.field private final mType:I
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/katana/service/api/methods/ApiMethodListener;)V
.registers 16
const-string v2, "GET"
const/4 v3, 0x0
move-object v0, p0
move-object v1, p2
move-object v4, p7
move-object v5, p9
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mContext:Landroid/content/Context;
iput-wide p3, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mOwnerId:J
iput-object p5, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mAlbumId:Ljava/lang/String;
iput-object p6, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mPhotoId:Ljava/lang/String;
iput p8, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mType:I
invoke-static {p1}, Lcom/facebook/katana/util/FileUtils;->buildFilename(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mFilename:Ljava/lang/String;
return-void
.end method
.method public static insertCacheFullPhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/katana/binding/StreamPhoto;
.registers 11
const/4 v0, 0x0
invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v6
if-eqz v6, :cond_31
new-instance v7, Landroid/content/ContentValues;
invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V
const-string v2, "url"
invoke-virtual {v7, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "filename"
invoke-virtual {v7, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
sget-object v3, Lcom/facebook/katana/provider/PhotosProvider;->STREAM_PHOTOS_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v2, v3, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
move-result-object v1
new-instance v0, Lcom/facebook/katana/binding/StreamPhoto;
new-instance v2, Ljava/io/File;
invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->length()J
move-result-wide v4
move-object v2, p1
move-object v3, p2
invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/binding/StreamPhoto;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/Bitmap;)V
return-object v0
:cond_31
new-instance v2, Ljava/io/IOException;
const-string v3, "Cannot decode bitmap"
invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v2
.end method
.method public static insertProfilePhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/katana/binding/StreamPhoto;
.registers 14
const/4 v0, 0x0
invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v7
if-eqz v7, :cond_5c
const/high16 v2, 0x4248
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v4
iget v4, v4, Landroid/util/DisplayMetrics;->density:F
mul-float v10, v2, v4
float-to-int v2, v10
invoke-static {v7, v2}, Lcom/facebook/katana/util/ImageUtils;->resizeToSquareBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
move-result-object v6
invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V
invoke-static {p0}, Lcom/facebook/katana/util/FileUtils;->buildFilename(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
new-instance v8, Ljava/io/FileOutputStream;
invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v4, 0x64
invoke-virtual {v6, v2, v4, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
new-instance v9, Landroid/content/ContentValues;
invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V
const-string v2, "url"
invoke-virtual {v9, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "filename"
invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
sget-object v4, Lcom/facebook/katana/provider/PhotosProvider;->STREAM_PHOTOS_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v2, v4, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
move-result-object v1
new-instance v0, Lcom/facebook/katana/binding/StreamPhoto;
new-instance v2, Ljava/io/File;
invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->length()J
move-result-wide v4
move-object v2, p1
invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/binding/StreamPhoto;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/Bitmap;)V
return-object v0
:cond_5c
new-instance v2, Ljava/io/IOException;
const-string v4, "Cannot decode bitmap"
invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v2
.end method
.method public static insertStreamPhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/katana/binding/StreamPhoto;
.registers 15
const/4 v0, 0x0
invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v7
if-eqz v7, :cond_5d
const/high16 v2, 0x4290
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v4
iget v4, v4, Landroid/util/DisplayMetrics;->density:F
mul-float v11, v2, v4
float-to-int v10, v11
const/4 v2, 0x0
invoke-static {p2, v10, v10, v2}, Lcom/facebook/katana/util/ImageUtils;->resizeBitmapAndFrame(Ljava/lang/String;III)Landroid/graphics/Bitmap;
move-result-object v6
invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V
invoke-static {p0}, Lcom/facebook/katana/util/FileUtils;->buildFilename(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
new-instance v8, Ljava/io/FileOutputStream;
invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v4, 0x50
invoke-virtual {v6, v2, v4, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
new-instance v9, Landroid/content/ContentValues;
invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V
const-string v2, "url"
invoke-virtual {v9, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "filename"
invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
sget-object v4, Lcom/facebook/katana/provider/PhotosProvider;->STREAM_PHOTOS_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v2, v4, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
move-result-object v1
new-instance v0, Lcom/facebook/katana/binding/StreamPhoto;
new-instance v2, Ljava/io/File;
invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->length()J
move-result-wide v4
move-object v2, p1
invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/binding/StreamPhoto;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/Bitmap;)V
return-object v0
:cond_5d
new-instance v2, Ljava/io/IOException;
const-string v4, "Cannot decode bitmap"
invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v2
.end method
.method private static updateAlbumThumbnail(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
.registers 15
const/16 v6, 0x38
invoke-static {p4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_60
invoke-static {v0, v6, v6}, Lcom/facebook/katana/util/ImageUtils;->cropBitmapCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
move-result-object v1
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v6
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v7
mul-int/2addr v6, v7
mul-int/lit8 v3, v6, 0x4
new-instance v2, Ljava/io/ByteArrayOutputStream;
invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v7, 0x64
invoke-virtual {v1, v6, v7, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V
invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
new-instance v5, Landroid/content/ContentValues;
invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V
const-string v6, "thumbnail"
invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v7
invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
sget-object v6, Lcom/facebook/katana/provider/PhotosProvider;->ALBUMS_OWNER_CONTENT_URI:Landroid/net/Uri;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v4
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v6
const-string v7, "aid IN(?)"
const/4 v8, 0x1
new-array v8, v8, [Ljava/lang/String;
const/4 v9, 0x0
aput-object p3, v8, v9
invoke-virtual {v6, v4, v5, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
return-void
:cond_60
new-instance v6, Ljava/io/IOException;
const-string v7, "Cannot decode bitmap"
invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v6
.end method
.method private static updatePhotoFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 10
new-instance v1, Landroid/content/ContentValues;
invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
const-string v2, "filename"
invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
sget-object v2, Lcom/facebook/katana/provider/PhotosProvider;->PHOTOS_AID_CONTENT_URI:Landroid/net/Uri;
invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
const-string v3, "pid IN(?)"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/String;
const/4 v5, 0x0
aput-object p2, v4, v5
invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
return-void
.end method
.method public static updatePhotoThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 14
const/4 v9, 0x0
new-instance v3, Ljava/io/ByteArrayOutputStream;
const/16 v6, 0x800
invoke-direct {v3, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
new-instance v2, Ljava/io/FileInputStream;
invoke-direct {v2, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
const/16 v6, 0x400
new-array v1, v6, [B
:goto_11
invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I
move-result v4
if-gtz v4, :cond_3d
invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
new-instance v5, Landroid/content/ContentValues;
invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V
const-string v6, "thumbnail"
invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v7
invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
sget-object v6, Lcom/facebook/katana/provider/PhotosProvider;->PHOTOS_AID_CONTENT_URI:Landroid/net/Uri;
invoke-static {v6, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v6
const-string v7, "pid IN(?)"
const/4 v8, 0x1
new-array v8, v8, [Ljava/lang/String;
aput-object p2, v8, v9
invoke-virtual {v6, v0, v5, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
return-void
:cond_3d
invoke-virtual {v3, v1, v9, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
goto :goto_11
.end method
.method public getPhoto()Lcom/facebook/katana/binding/StreamPhoto;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mPhoto:Lcom/facebook/katana/binding/StreamPhoto;
return-object v0
.end method
.method public onHttpOperationComplete(Lcom/facebook/katana/service/api/methods/HttpOperation;ILjava/lang/String;Ljava/io/OutputStream;Ljava/lang/Exception;)V
.registers 17
const-wide/16 v3, 0x0
const/16 v0, 0xc8
if-ne p2, v0, :cond_e7
new-instance v6, Ljava/io/File;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mFilename:Ljava/lang/String;
invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v6}, Ljava/io/File;->length()J
move-result-wide v3
iget v0, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mType:I
packed-switch v0, :pswitch_data_f4
:goto_16
move v5, p2
move-object v7, p3
move-object/from16 v8, p5
invoke-static {p2}, Lcom/facebook/katana/service/api/methods/ApiLogging;->reportAndCheckTrx(I)Z
move-result v0
if-eqz v0, :cond_31
iget-object v0, p1, Lcom/facebook/katana/service/api/methods/HttpOperation;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;
invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;
move-result-object v0
invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lcom/facebook/katana/service/api/methods/HttpOperation;->calculateTimeElapsed()J
move-result-wide v1
invoke-static/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiLogging;->logTransferResponse(Ljava/lang/String;JJI)V
:cond_31
sget-object v0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mHandler:Landroid/os/Handler;
new-instance v1, Lcom/facebook/katana/service/api/methods/PhotoDownload$1;
invoke-direct {v1, p0, v5, v7, v8}, Lcom/facebook/katana/service/api/methods/PhotoDownload$1;-><init>(Lcom/facebook/katana/service/api/methods/PhotoDownload;ILjava/lang/String;Ljava/lang/Exception;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
:pswitch_3c
:try_start_3c
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mContext:Landroid/content/Context;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mBaseUrl:Ljava/lang/String;
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mFilename:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/facebook/katana/service/api/methods/PhotoDownload;->insertStreamPhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/katana/binding/StreamPhoto;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mPhoto:Lcom/facebook/katana/binding/StreamPhoto;
:goto_48
:try_end_48
.catch Ljava/io/IOException; {:try_start_3c .. :try_end_48} :catch_53
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mFilename:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->delete()Z
goto :goto_16
:catch_53
move-exception v0
move-object v9, v0
const/4 p2, 0x0
const/4 p3, 0x0
move-object/from16 p5, v9
goto :goto_48
:pswitch_5a
:try_start_5a
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mContext:Landroid/content/Context;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mBaseUrl:Ljava/lang/String;
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mFilename:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/facebook/katana/service/api/methods/PhotoDownload;->insertCacheFullPhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/katana/binding/StreamPhoto;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mPhoto:Lcom/facebook/katana/binding/StreamPhoto;
:try_end_66
.catch Ljava/io/IOException; {:try_start_5a .. :try_end_66} :catch_67
goto :goto_16
:catch_67
move-exception v0
move-object v9, v0
const/4 p2, 0x0
const/4 p3, 0x0
move-object/from16 p5, v9
goto :goto_16
:try_start_6e
:pswitch_6e
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mContext:Landroid/content/Context;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mBaseUrl:Ljava/lang/String;
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mFilename:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/facebook/katana/service/api/methods/PhotoDownload;->insertProfilePhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/katana/binding/StreamPhoto;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mPhoto:Lcom/facebook/katana/binding/StreamPhoto;
:try_end_7a
.catch Ljava/io/IOException; {:try_start_6e .. :try_end_7a} :catch_85
:goto_7a
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mFilename:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->delete()Z
goto :goto_16
:catch_85
move-exception v0
move-object v9, v0
const/4 p2, 0x0
const/4 p3, 0x0
move-object/from16 p5, v9
goto :goto_7a
:try_start_8c
:pswitch_8c
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mContext:Landroid/content/Context;
iget-wide v1, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mOwnerId:J
iget-object v5, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mAlbumId:Ljava/lang/String;
iget-object v6, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mFilename:Ljava/lang/String;
invoke-static {v0, v1, v2, v5, v6}, Lcom/facebook/katana/service/api/methods/PhotoDownload;->updateAlbumThumbnail(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
:goto_97
:try_end_97
.catch Ljava/io/IOException; {:try_start_8c .. :try_end_97} :catch_a3
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mFilename:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->delete()Z
goto/16 :goto_16
:catch_a3
move-exception v0
move-object v9, v0
const/4 p2, 0x0
const/4 p3, 0x0
move-object/from16 p5, v9
goto :goto_97
:pswitch_aa
:try_start_aa
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mContext:Landroid/content/Context;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mAlbumId:Ljava/lang/String;
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mPhotoId:Ljava/lang/String;
iget-object v5, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mFilename:Ljava/lang/String;
invoke-static {v0, v1, v2, v5}, Lcom/facebook/katana/service/api/methods/PhotoDownload;->updatePhotoThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:try_end_b5
.catch Ljava/io/IOException; {:try_start_aa .. :try_end_b5} :catch_c1
:goto_b5
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mFilename:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->delete()Z
goto/16 :goto_16
:catch_c1
move-exception v0
move-object v9, v0
const/4 p2, 0x0
const/4 p3, 0x0
move-object/from16 p5, v9
goto :goto_b5
:try_start_c8
:pswitch_c8
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mContext:Landroid/content/Context;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mAlbumId:Ljava/lang/String;
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mPhotoId:Ljava/lang/String;
iget-object v5, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mFilename:Ljava/lang/String;
invoke-static {v0, v1, v2, v5}, Lcom/facebook/katana/service/api/methods/PhotoDownload;->updatePhotoFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:try_end_d3
.catch Ljava/lang/NullPointerException; {:try_start_c8 .. :try_end_d3} :catch_d5
goto/16 :goto_16
:catch_d5
move-exception v0
move-object v10, v0
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mFilename:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->delete()Z
const/4 p2, 0x0
const/4 p3, 0x0
move-object/from16 p5, v10
goto/16 :goto_16
:cond_e7
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mFilename:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->delete()Z
goto/16 :goto_16
nop
:pswitch_data_f4
.packed-switch 0x48
:pswitch_6e
:pswitch_3c
:pswitch_8c
:pswitch_aa
:pswitch_c8
:pswitch_5a
.end packed-switch
.end method
.method public onHttpOperationProgress(Lcom/facebook/katana/service/api/methods/HttpOperation;JJ)V
.registers 6
return-void
.end method
.method public start()V
.registers 7
:try_start_0
new-instance v1, Lcom/facebook/katana/service/api/methods/HttpOperation;
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mHttpMethod:Ljava/lang/String;
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mBaseUrl:Ljava/lang/String;
new-instance v4, Ljava/io/FileOutputStream;
iget-object v5, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mFilename:Ljava/lang/String;
invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
invoke-direct {v1, v2, v3, v4, p0}, Lcom/facebook/katana/service/api/methods/HttpOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;)V
iput-object v1, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mHttpOp:Lcom/facebook/katana/service/api/methods/HttpOperation;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mHttpOp:Lcom/facebook/katana/service/api/methods/HttpOperation;
invoke-virtual {v1}, Lcom/facebook/katana/service/api/methods/HttpOperation;->start()V
:try_end_17
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18
:goto_17
return-void
:catch_18
move-exception v1
move-object v0, v1
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/PhotoDownload;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
const/4 v2, 0x0
const/4 v3, 0x0
invoke-interface {v1, p0, v2, v3, v0}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
goto :goto_17
.end method