.class public Lcom/tencent/open/c;
.super Landroid/os/AsyncTask;
.source "ProGuard"
.field private static final a:Ljava/text/SimpleDateFormat;
.field private b:Lcom/tencent/open/c$a;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Ljava/text/SimpleDateFormat;
const-string/jumbo v1, "yyyy-MM-dd-HHmmss"
sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/tencent/open/c;->a:Ljava/text/SimpleDateFormat;
return-void
.end method
.method public constructor <init>(Lcom/tencent/open/c$a;)V
.registers 2
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
iput-object p1, p0, Lcom/tencent/open/c;->b:Lcom/tencent/open/c$a;
return-void
.end method
.method private a(Landroid/graphics/BitmapFactory$Options;II)I
.registers 7
iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I
const/4 v0, 0x1
if-gt v1, p3, :cond_9
if-le v2, p2, :cond_19
:cond_9
int-to-float v0, v1
int-to-float v1, p3
div-float/2addr v0, v1
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
int-to-float v1, v2
int-to-float v2, p2
div-float/2addr v1, v2
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v1
if-ge v0, v1, :cond_1a
:goto_19
:cond_19
return v0
:cond_1a
move v0, v1
goto :goto_19
.end method
.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.registers 9
const/4 v6, 0x0
const/16 v4, 0x140
const/4 v0, 0x1
new-instance v2, Ljava/io/ByteArrayOutputStream;
invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v3, 0x64
invoke-virtual {p1, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
array-length v1, v1
div-int/lit16 v1, v1, 0x400
const/16 v3, 0x400
if-le v1, v3, :cond_25
invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V
sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v3, 0x32
invoke-virtual {p1, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
:cond_25
new-instance v1, Ljava/io/ByteArrayInputStream;
invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v3
invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
new-instance v3, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V
iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {v1, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
const/4 v1, 0x0
iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-direct {p0, v3, v4, v4}, Lcom/tencent/open/c;->a(Landroid/graphics/BitmapFactory$Options;II)I
move-result v1
if-gtz v1, :cond_6b
:goto_41
const-string/jumbo v1, "comp"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "comp be="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
new-instance v0, Ljava/io/ByteArrayInputStream;
invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
invoke-static {v0, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
:cond_6b
move v0, v1
goto :goto_41
.end method
.method private a(J)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/util/Date;
invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V
sget-object v1, Lcom/tencent/open/c;->a:Ljava/text/SimpleDateFormat;
invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/String;)V
.registers 3
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_14
:try_start_6
new-instance v0, Ljava/io/File;
invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_14
invoke-virtual {v0}, Ljava/io/File;->delete()Z
:goto_14
:try_end_14
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_15
:cond_14
return-void
:catch_15
move-exception v0
goto :goto_14
.end method
.method public static a()Z
.registers 3
const/4 v0, 0x1
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "mounted"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_f
:cond_e
:goto_e
return v0
:cond_f
new-instance v1, Ljava/io/File;
const-string/jumbo v2, "/mnt/sdcard-ext"
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z
move-result v1
if-nez v1, :cond_e
const/4 v0, 0x0
goto :goto_e
.end method
.method private b()Ljava/lang/String;
.registers 4
const-string/jumbo v0, "."
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "mounted"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_19
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
:goto_18
:cond_18
return-object v0
:cond_19
new-instance v1, Ljava/io/File;
const-string/jumbo v2, "/mnt/sdcard-ext"
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z
move-result v1
if-eqz v1, :cond_18
const-string/jumbo v0, "/mnt/sdcard-ext"
goto :goto_18
.end method
.method private b(Landroid/graphics/Bitmap;)Ljava/lang/String;
.registers 7
const/4 v1, 0x0
const-string/jumbo v0, ""
:try_start_4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-direct {p0, v2, v3}, Lcom/tencent/open/c;->a(J)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v2, ".png"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-direct {p0}, Lcom/tencent/open/c;->b()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ".AppCenterWebBuffer"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v3, Ljava/io/File;
invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v2
if-nez v2, :cond_66
invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
move-result v2
if-nez v2, :cond_66
:cond_66
new-instance v3, Ljava/io/File;
invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v2
if-eqz v2, :cond_74
invoke-virtual {v3}, Ljava/io/File;->delete()Z
:cond_74
invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
new-instance v2, Ljava/io/FileOutputStream;
invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
:try_end_7c
.catchall {:try_start_4 .. :try_end_7c} :catchall_98
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7c} :catch_8c
:try_start_7c
sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v3, 0x64
invoke-virtual {p1, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
:try_end_86
.catchall {:try_start_7c .. :try_end_86} :catchall_a3
.catch Ljava/lang/Exception; {:try_start_7c .. :try_end_86} :catch_a6
if-eqz v2, :cond_8b
:try_start_88
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:cond_8b
:goto_8b
:try_end_8b
.catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_9f
return-object v0
:catch_8c
move-exception v0
:try_start_8d
:goto_8d
const-string/jumbo v0, ""
:try_end_90
.catchall {:try_start_8d .. :try_end_90} :catchall_98
if-eqz v1, :cond_8b
:try_start_92
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
:try_end_95
.catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_96
goto :goto_8b
:catch_96
move-exception v1
goto :goto_8b
:catchall_98
move-exception v0
:goto_99
if-eqz v1, :cond_9e
:try_start_9b
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
:goto_9e
:try_end_9e
.catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_a1
:cond_9e
throw v0
:catch_9f
move-exception v1
goto :goto_8b
:catch_a1
move-exception v1
goto :goto_9e
:catchall_a3
move-exception v0
move-object v1, v2
goto :goto_99
:catch_a6
move-exception v0
move-object v1, v2
goto :goto_8d
.end method
.method protected varargs a([Landroid/graphics/Bitmap;)Ljava/util/HashMap;
.registers 7
const/16 v3, 0x140
const/4 v4, 0x0
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
const/4 v0, 0x0
:try_start_9
aget-object v2, p1, v0
if-eqz v2, :cond_3b
const-string/jumbo v0, ""
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
if-gt v0, v3, :cond_1c
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v0
if-le v0, v3, :cond_3c
:cond_1c
invoke-direct {p0, v2}, Lcom/tencent/open/c;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v3
invoke-direct {p0, v3}, Lcom/tencent/open/c;->b(Landroid/graphics/Bitmap;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
:goto_27
invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
const-string/jumbo v2, "ResultType"
const/4 v3, 0x1
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v2, "ResultValue"
invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_3b
:cond_3b
return-object v1
:cond_3c
invoke-direct {p0, v2}, Lcom/tencent/open/c;->b(Landroid/graphics/Bitmap;)Ljava/lang/String;
:try_end_3f
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3f} :catch_41
move-result-object v0
goto :goto_27
:catch_41
move-exception v0
const-string/jumbo v2, "ResultType"
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v2, "ResultValue"
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_3b
.end method
.method protected a(Ljava/util/HashMap;)V
.registers 4
const-string/jumbo v0, "ResultType"
invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_22
iget-object v1, p0, Lcom/tencent/open/c;->b:Lcom/tencent/open/c$a;
const-string/jumbo v0, "ResultValue"
invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-interface {v1, v0}, Lcom/tencent/open/c$a;->a(Ljava/lang/String;)V
:goto_1e
invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V
return-void
:cond_22
iget-object v1, p0, Lcom/tencent/open/c;->b:Lcom/tencent/open/c$a;
const-string/jumbo v0, "ResultValue"
invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-interface {v1, v0}, Lcom/tencent/open/c$a;->b(Ljava/lang/String;)V
goto :goto_1e
.end method
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Landroid/graphics/Bitmap;
invoke-virtual {p0, p1}, Lcom/tencent/open/c;->a([Landroid/graphics/Bitmap;)Ljava/util/HashMap;
move-result-object v0
return-object v0
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/util/HashMap;
invoke-virtual {p0, p1}, Lcom/tencent/open/c;->a(Ljava/util/HashMap;)V
return-void
.end method