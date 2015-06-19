.class public Lcom/pinguo/camera360/cloud/cropImage/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"
.field public static final CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String; = null
.field public static final CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String; = null
.field public static final DEFAULT_THUMBNAIL:Landroid/graphics/Bitmap; = null
.field public static final IMAGE_JPEG_TYPE:Ljava/lang/String; = "image/jpeg"
.field public static final INCLUDE_DRM_IMAGES:I = 0x2
.field public static final INCLUDE_IMAGES:I = 0x1
.field public static final INCLUDE_VIDEOS:I = 0x4
.field public static final NO_IMAGE_BITMAP:Landroid/graphics/Bitmap; = null
.field public static final SORT_ASCENDING:I = 0x1
.field public static final SORT_DESCENDING:I = 0x2
.field private static final STORAGE_URI:Landroid/net/Uri; = null
.field private static final TAG:Ljava/lang/String; = "ImageManager"
.method static constructor <clinit>()V
.registers 3
const/16 v2, 0x20
const/4 v1, 0x1
sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
sput-object v0, Lcom/pinguo/camera360/cloud/cropImage/ImageManager;->STORAGE_URI:Landroid/net/Uri;
sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/cloud/cropImage/ImageManager;->DEFAULT_THUMBNAIL:Landroid/graphics/Bitmap;
sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/cloud/cropImage/ImageManager;->NO_IMAGE_BITMAP:Landroid/graphics/Bitmap;
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/DCIM/Camera"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/cloud/cropImage/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;
sget-object v0, Lcom/pinguo/camera360/cloud/cropImage/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;
invoke-static {v0}, Lcom/pinguo/camera360/cloud/cropImage/ImageManager;->getBucketId(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/cloud/cropImage/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JJLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;
.registers 26
const/4 v6, 0x0
new-instance v11, Ljava/lang/StringBuilder;
invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v12
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v12, "/"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
move-object/from16 v0, p9
invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
:try_start_1b
new-instance v2, Ljava/io/File;
move-object/from16 v0, p8
invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v11
if-nez v11, :cond_37
invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
move-result v11
if-nez v11, :cond_37
const-string/jumbo v11, "ImageManager"
const-string/jumbo v12, "Create dir failed!"
invoke-static {v11, v12}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
:cond_37
new-instance v4, Ljava/io/File;
move-object/from16 v0, p8
move-object/from16 v1, p9
invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
new-instance v7, Ljava/io/FileOutputStream;
invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
:try_end_45
.catchall {:try_start_1b .. :try_end_45} :catchall_10c
.catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_45} :catch_117
.catch Ljava/io/IOException; {:try_start_1b .. :try_end_45} :catch_100
if-eqz p10, :cond_e5
:try_start_47
sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v12, 0x4b
move-object/from16 v0, p10
invoke-virtual {v0, v11, v12, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
const/4 v11, 0x0
const/4 v12, 0x0
aput v12, p12, v11
:goto_54
:try_end_54
.catchall {:try_start_47 .. :try_end_54} :catchall_111
.catch Ljava/io/FileNotFoundException; {:try_start_47 .. :try_end_54} :catch_f3
.catch Ljava/io/IOException; {:try_start_47 .. :try_end_54} :catch_114
invoke-static {v7}, Lcom/pinguo/camera360/cloud/cropImage/Util;->closeSilently(Ljava/io/Closeable;)V
new-instance v11, Ljava/io/File;
move-object/from16 v0, p8
move-object/from16 v1, p9
invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v11}, Ljava/io/File;->length()J
move-result-wide v8
new-instance v10, Landroid/content/ContentValues;
const/16 v11, 0xb
invoke-direct {v10, v11}, Landroid/content/ContentValues;-><init>(I)V
const-string/jumbo v11, "title"
invoke-virtual {v10, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v11, "_display_name"
move-object/from16 v0, p9
invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v11, "datetaken"
invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v12
invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string/jumbo v11, "date_modified"
invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v12
invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string/jumbo v11, "date_added"
invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v12
invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string/jumbo v11, "mime_type"
const-string/jumbo v12, "image/jpeg"
invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v11, "orientation"
const/4 v12, 0x0
aget v12, p12, v12
invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v12
invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v11, "_data"
invoke-virtual {v10, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v11, "_size"
invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v12
invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
if-eqz p6, :cond_dd
if-eqz p7, :cond_dd
const-string/jumbo v11, "latitude"
invoke-virtual/range {p6 .. p6}, Ljava/lang/Double;->floatValue()F
move-result v12
invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v12
invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V
const-string/jumbo v11, "longitude"
invoke-virtual/range {p7 .. p7}, Ljava/lang/Double;->floatValue()F
move-result v12
invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v12
invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V
:cond_dd
sget-object v11, Lcom/pinguo/camera360/cloud/cropImage/ImageManager;->STORAGE_URI:Landroid/net/Uri;
invoke-virtual {p0, v11, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
move-result-object v11
move-object v6, v7
:goto_e4
return-object v11
:try_start_e5
:cond_e5
move-object/from16 v0, p11
invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V
const/4 v11, 0x0
invoke-static {v5}, Lcom/pinguo/camera360/cloud/cropImage/ImageManager;->getExifOrientation(Ljava/lang/String;)I
move-result v12
aput v12, p12, v11
:try_end_f1
.catchall {:try_start_e5 .. :try_end_f1} :catchall_111
.catch Ljava/io/FileNotFoundException; {:try_start_e5 .. :try_end_f1} :catch_f3
.catch Ljava/io/IOException; {:try_start_e5 .. :try_end_f1} :catch_114
goto/16 :goto_54
:catch_f3
move-exception v3
move-object v6, v7
:goto_f5
:try_start_f5
const-string/jumbo v11, "ImageManager"
invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_fb
.catchall {:try_start_f5 .. :try_end_fb} :catchall_10c
invoke-static {v6}, Lcom/pinguo/camera360/cloud/cropImage/Util;->closeSilently(Ljava/io/Closeable;)V
const/4 v11, 0x0
goto :goto_e4
:catch_100
move-exception v3
:try_start_101
:goto_101
const-string/jumbo v11, "ImageManager"
invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_107
.catchall {:try_start_101 .. :try_end_107} :catchall_10c
invoke-static {v6}, Lcom/pinguo/camera360/cloud/cropImage/Util;->closeSilently(Ljava/io/Closeable;)V
const/4 v11, 0x0
goto :goto_e4
:catchall_10c
move-exception v11
:goto_10d
invoke-static {v6}, Lcom/pinguo/camera360/cloud/cropImage/Util;->closeSilently(Ljava/io/Closeable;)V
throw v11
:catchall_111
move-exception v11
move-object v6, v7
goto :goto_10d
:catch_114
move-exception v3
move-object v6, v7
goto :goto_101
:catch_117
move-exception v3
goto :goto_f5
.end method
.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLjava/lang/String;ILjava/io/File;Landroid/location/Location;)Landroid/net/Uri;
.registers 18
invoke-virtual/range {p6 .. p6}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v1
invoke-virtual/range {p6 .. p6}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual/range {p6 .. p6}, Ljava/io/File;->length()J
move-result-wide v3
new-instance v6, Landroid/content/ContentValues;
const/16 v7, 0x9
invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V
const-string/jumbo v7, "title"
invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v7, "_display_name"
invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v7, "datetaken"
invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v8
invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string/jumbo v7, "mime_type"
invoke-virtual {v6, v7, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v7, "orientation"
invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v7, "_data"
invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v7, "_size"
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v8
invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
if-eqz p7, :cond_67
const-string/jumbo v7, "latitude"
invoke-static/range {p7 .. p7}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v8
invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v8
invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V
const-string/jumbo v7, "longitude"
invoke-static/range {p7 .. p7}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v8
invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v8
invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V
:cond_67
const/4 v5, 0x0
:try_start_68
sget-object v7, Lcom/pinguo/camera360/cloud/cropImage/ImageManager;->STORAGE_URI:Landroid/net/Uri;
invoke-virtual {p0, v7, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
:try_end_6d
.catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6d} :catch_70
move-result-object v5
move-object v7, v5
:goto_6f
return-object v7
:catch_70
move-exception v0
const-string/jumbo v7, "ImageManager"
invoke-static {v7, v0}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
const-string/jumbo v7, "ImageManager"
const-string/jumbo v8, "Insert to sysdb failed, just skip it."
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
const/4 v7, 0x0
goto :goto_6f
.end method
.method private static checkFsWritable()Z
.registers 4
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v3
invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "/DCIM"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v0, Ljava/io/File;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
move-result v2
if-nez v2, :cond_2f
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
move-result v2
if-nez v2, :cond_2f
const/4 v2, 0x0
:goto_2e
return v2
:cond_2f
invoke-virtual {v0}, Ljava/io/File;->canWrite()Z
move-result v2
goto :goto_2e
.end method
.method public static getBucketId(Ljava/lang/String;)Ljava/lang/String;
.registers 2
sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getExifOrientation(Ljava/lang/String;)I
.registers 9
const/4 v7, -0x1
const/4 v0, 0x0
const/4 v2, 0x0
:try_start_3
new-instance v3, Landroid/media/ExifInterface;
invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
:try_end_8
.catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_2e
move-object v2, v3
:goto_9
if-eqz v2, :cond_2d
const-string/jumbo v5, "Orientation"
invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
move-result v4
if-eq v4, v7, :cond_2d
packed-switch v4, :pswitch_data_42
:pswitch_17
const-string/jumbo v5, "ImageManager"
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "Invalid orientation:"
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
:goto_2d
:cond_2d
return v0
:catch_2e
move-exception v1
const-string/jumbo v5, "ImageManager"
const-string/jumbo v6, "cannot read exif"
invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_9
:pswitch_39
const/16 v0, 0x5a
goto :goto_2d
:pswitch_3c
const/16 v0, 0xb4
goto :goto_2d
:pswitch_3f
const/16 v0, 0x10e
goto :goto_2d
:pswitch_data_42
.packed-switch 0x3
:pswitch_3c
:pswitch_17
:pswitch_17
:pswitch_39
:pswitch_17
:pswitch_3f
.end packed-switch
.end method
.method public static getLastImageThumbPath()Ljava/lang/String;
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/DCIM/.thumbnails/image_last_thumb"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getLastVideoThumbPath()Ljava/lang/String;
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/DCIM/.thumbnails/video_last_thumb"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static hasStorage()Z
.registers 1
const/4 v0, 0x1
invoke-static {v0}, Lcom/pinguo/camera360/cloud/cropImage/ImageManager;->hasStorage(Z)Z
move-result v0
return v0
.end method
.method public static hasStorage(Z)Z
.registers 4
const/4 v1, 0x1
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v0
const-string/jumbo v2, "mounted"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_15
if-eqz p0, :cond_14
invoke-static {}, Lcom/pinguo/camera360/cloud/cropImage/ImageManager;->checkFsWritable()Z
move-result v1
:goto_14
:cond_14
return v1
:cond_15
if-nez p0, :cond_20
const-string/jumbo v2, "mounted_ro"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_14
:cond_20
const/4 v1, 0x0
goto :goto_14
.end method
.method public static isImageMimeType(Ljava/lang/String;)Z
.registers 2
const-string/jumbo v0, "image/"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public static isMediaScannerScanning(Landroid/content/ContentResolver;)Z
.registers 11
const/4 v9, 0x1
const/4 v8, 0x0
const/4 v3, 0x0
const/4 v7, 0x0
invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;
move-result-object v1
new-array v2, v9, [Ljava/lang/String;
const-string/jumbo v0, "volume"
aput-object v0, v2, v8
move-object v0, p0
move-object v4, v3
move-object v5, v3
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/cloud/cropImage/ImageManager;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
if-eqz v6, :cond_2f
invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
move-result v0
if-ne v0, v9, :cond_2c
invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
const-string/jumbo v0, "external"
invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
:cond_2c
invoke-interface {v6}, Landroid/database/Cursor;->close()V
:cond_2f
return v7
.end method
.method static isSingleImageMode(Ljava/lang/String;)Z
.registers 2
sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1a
sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1a
const/4 v0, 0x1
:goto_19
return v0
:cond_1a
const/4 v0, 0x0
goto :goto_19
.end method
.method public static isVideoMimeType(Ljava/lang/String;)Z
.registers 2
const-string/jumbo v0, "video/"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method private static query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.registers 8
const/4 v1, 0x0
if-nez p0, :cond_4
:goto_3
return-object v1
:try_start_4
:cond_4
invoke-virtual/range {p0 .. p5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_7
.catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_7} :catch_9
move-result-object v1
goto :goto_3
:catch_9
move-exception v0
goto :goto_3
.end method
.method public static quickHasStorage()Z
.registers 2
const-string/jumbo v0, "mounted"
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public static roundOrientation(I)I
.registers 4
move v0, p0
const/4 v2, -0x1
if-ne v0, v2, :cond_5
const/4 v0, 0x0
:cond_5
rem-int/lit16 v0, v0, 0x168
const/16 v2, 0x2d
if-ge v0, v2, :cond_d
const/4 v1, 0x0
:goto_c
return v1
:cond_d
const/16 v2, 0x87
if-ge v0, v2, :cond_14
const/16 v1, 0x5a
goto :goto_c
:cond_14
const/16 v2, 0xe1
if-ge v0, v2, :cond_1b
const/16 v1, 0xb4
goto :goto_c
:cond_1b
const/16 v2, 0x13b
if-ge v0, v2, :cond_22
const/16 v1, 0x10e
goto :goto_c
:cond_22
const/4 v1, 0x0
goto :goto_c
.end method
.method public static setImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)V
.registers 8
const/4 v3, 0x0
new-instance v0, Landroid/content/ContentValues;
invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v1, "_size"
invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
invoke-virtual {p0, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
return-void
.end method