.class public final Lcom/lenovo/anyshare/sdk/internal/aj;
.super Ljava/lang/Object;
.source "BitmapUtils.java"
.method private static a(Landroid/graphics/BitmapFactory$Options;II)I
.registers 6
invoke-static {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/aj;->b(Landroid/graphics/BitmapFactory$Options;II)I
move-result v0
const/16 v2, 0x8
if-gt v0, v2, :cond_e
const/4 v1, 0x1
:goto_9
if-ge v1, v0, :cond_14
shl-int/lit8 v1, v1, 0x1
goto :goto_9
:cond_e
add-int/lit8 v2, v0, 0x7
div-int/lit8 v2, v2, 0x8
mul-int/lit8 v1, v2, 0x8
:cond_14
return v1
.end method
.method public static a(Landroid/content/ContentResolver;I)Landroid/graphics/Bitmap;
.registers 6
int-to-long v0, p1
const/4 v2, 0x3
const/4 v3, 0x0
invoke-static {p0, v0, v1, v2, v3}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
.registers 2
const/16 v0, 0x100
invoke-static {p0, v0, v0}, Lcom/lenovo/anyshare/sdk/internal/aj;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
.registers 4
invoke-static {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/aj;->b(Ljava/lang/String;II)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;
.registers 8
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/aq;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const/4 v0, 0x0
const-string/jumbo v4, "image/"
invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_16
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/aj;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v0
:cond_12
:goto_12
if-nez v0, :cond_38
const/4 v3, 0x0
:goto_15
return-object v3
:cond_16
const-string/jumbo v4, "video/"
invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_24
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/aj;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_12
:cond_24
const-string/jumbo v4, "application/"
invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_12
invoke-static {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/az;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
move-result-object v1
check-cast v1, Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_12
:cond_38
new-instance v3, Ljava/io/ByteArrayOutputStream;
invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v5, 0x64
invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
goto :goto_15
.end method
.method public static a(Landroid/graphics/Bitmap;Ljava/io/File;)V
.registers 4
sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v1, 0x64
invoke-static {p0, p1, v0, v1}, Lcom/lenovo/anyshare/sdk/internal/aj;->a(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)V
return-void
.end method
.method public static a(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)V
.registers 10
const/4 v1, 0x0
:try_start_1
new-instance v2, Ljava/io/BufferedOutputStream;
new-instance v3, Ljava/io/FileOutputStream;
invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_start_b
:try_end_b
.catchall {:try_start_1 .. :try_end_b} :catchall_30
.catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_15
invoke-virtual {p0, p2, p3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
:try_end_e
.catchall {:try_start_b .. :try_end_e} :catchall_4d
.catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_e} :catch_50
if-eqz v2, :cond_13
:try_start_10
invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
:cond_13
:goto_13
:try_end_13
.catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_42
move-object v1, v2
:cond_14
:goto_14
return-void
:catch_15
move-exception v0
:try_start_16
:goto_16
const-string/jumbo v3, "BitmapUtils"
const-string/jumbo v4, "FileNotFoundException"
invoke-static {v3, v4, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_1f
.catchall {:try_start_16 .. :try_end_1f} :catchall_30
if-eqz v1, :cond_14
:try_start_21
invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
:try_end_24
.catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25
goto :goto_14
:catch_25
move-exception v0
const-string/jumbo v3, "BitmapUtils"
const-string/jumbo v4, "IOException"
invoke-static {v3, v4, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_14
:catchall_30
move-exception v3
:goto_31
if-eqz v1, :cond_36
:try_start_33
invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
:goto_36
:cond_36
:try_end_36
.catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37
throw v3
:catch_37
move-exception v0
const-string/jumbo v4, "BitmapUtils"
const-string/jumbo v5, "IOException"
invoke-static {v4, v5, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_36
:catch_42
move-exception v0
const-string/jumbo v3, "BitmapUtils"
const-string/jumbo v4, "IOException"
invoke-static {v3, v4, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_13
:catchall_4d
move-exception v3
move-object v1, v2
goto :goto_31
:catch_50
move-exception v0
move-object v1, v2
goto :goto_16
.end method
.method private static b(Landroid/graphics/BitmapFactory$Options;II)I
.registers 15
const/4 v6, 0x1
const/4 v11, -0x1
iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
int-to-double v4, v7
iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
int-to-double v0, v7
if-ne p2, v11, :cond_12
move v2, v6
:goto_b
if-ne p1, v11, :cond_20
const/16 v3, 0x80
:goto_f
if-ge v3, v2, :cond_34
:cond_11
:goto_11
return v2
:cond_12
mul-double v7, v4, v0
int-to-double v9, p2
div-double/2addr v7, v9
invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v7
invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D
move-result-wide v7
double-to-int v2, v7
goto :goto_b
:cond_20
int-to-double v7, p1
div-double v7, v4, v7
invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D
move-result-wide v7
int-to-double v9, p1
div-double v9, v0, v9
invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D
move-result-wide v9
invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D
move-result-wide v7
double-to-int v3, v7
goto :goto_f
:cond_34
if-ne p2, v11, :cond_3a
if-ne p1, v11, :cond_3a
move v2, v6
goto :goto_11
:cond_3a
if-eq p1, v11, :cond_11
move v2, v3
goto :goto_11
.end method
.method public static b(Ljava/lang/String;)Landroid/graphics/Bitmap;
.registers 2
const/4 v0, 0x1
invoke-static {p0, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public static b(Ljava/lang/String;II)Landroid/graphics/Bitmap;
.registers 6
new-instance v0, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v1, 0x1
iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I
move-result v1
mul-int v2, p1, p2
invoke-static {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/aj;->a(Landroid/graphics/BitmapFactory$Options;II)I
move-result v1
iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
const/4 v1, 0x0
iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v1
return-object v1
.end method
.method public static b(Landroid/content/ContentResolver;I)Ljava/io/ByteArrayOutputStream;
.registers 6
invoke-static {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/aj;->a(Landroid/content/ContentResolver;I)Landroid/graphics/Bitmap;
move-result-object v0
if-nez v0, :cond_8
const/4 v1, 0x0
:goto_7
return-object v1
:cond_8
new-instance v1, Ljava/io/ByteArrayOutputStream;
invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v3, 0x64
invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
goto :goto_7
.end method
.method public static c(Landroid/content/ContentResolver;I)Landroid/graphics/Bitmap;
.registers 6
int-to-long v0, p1
const/4 v2, 0x3
const/4 v3, 0x0
invoke-static {p0, v0, v1, v2, v3}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public static d(Landroid/content/ContentResolver;I)Ljava/io/ByteArrayOutputStream;
.registers 6
invoke-static {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/aj;->c(Landroid/content/ContentResolver;I)Landroid/graphics/Bitmap;
move-result-object v0
if-nez v0, :cond_8
const/4 v1, 0x0
:goto_7
return-object v1
:cond_8
new-instance v1, Ljava/io/ByteArrayOutputStream;
invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v3, 0x64
invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
goto :goto_7
.end method
.method public static e(Landroid/content/ContentResolver;I)Ljava/lang/String;
.registers 9
const/4 v6, 0x1
const/4 v4, 0x2
new-array v2, v4, [Ljava/lang/String;
const/4 v4, 0x0
const-string/jumbo v5, "_id"
aput-object v5, v2, v4
const-string/jumbo v4, "_data"
aput-object v4, v2, v6
const/4 v3, 0x0
int-to-long v4, p1
invoke-static {p0, v4, v5, v6, v2}, Landroid/provider/MediaStore$Images$Thumbnails;->queryMiniThumbnail(Landroid/content/ContentResolver;JI[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
if-eqz v0, :cond_28
:try_start_17
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v4
if-eqz v4, :cond_28
const-string/jumbo v4, "_data"
invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
:try_end_27
.catchall {:try_start_17 .. :try_end_27} :catchall_2c
move-result-object v3
:cond_28
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V
return-object v3
:catchall_2c
move-exception v4
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V
throw v4
.end method
.method public static f(Landroid/content/ContentResolver;I)Ljava/lang/String;
.registers 11
const/4 v4, 0x0
const/4 v0, 0x1
new-array v2, v0, [Ljava/lang/String;
const/4 v0, 0x0
const-string/jumbo v1, "_data"
aput-object v1, v2, v0
const/4 v8, 0x0
sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "_id="
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
move-object v0, p0
move-object v5, v4
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
if-eqz v6, :cond_3a
:try_start_29
invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_3a
const-string/jumbo v0, "_data"
invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v7
invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
:try_end_39
.catchall {:try_start_29 .. :try_end_39} :catchall_3e
move-result-object v8
:cond_3a
invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V
return-object v8
:catchall_3e
move-exception v0
invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V
throw v0
.end method