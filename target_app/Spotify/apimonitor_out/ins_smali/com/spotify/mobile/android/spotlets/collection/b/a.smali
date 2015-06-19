.class public final Lcom/spotify/mobile/android/spotlets/collection/b/a;
.super Ljava/lang/Object;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.registers 9
const/4 v6, 0x1
const/4 v1, 0x0
:try_start_2
new-instance v0, Landroid/media/ExifInterface;
invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
const-string v2, "Orientation"
const/4 v3, 0x1
invoke-virtual {v0, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
:try_end_11
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_11} :catch_37
move-result v0
packed-switch v0, :pswitch_data_46
:pswitch_15
:goto_15
move v0, v1
:goto_16
new-instance v5, Landroid/graphics/Matrix;
invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V
int-to-float v0, v0
invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
move-object v0, p1
move v2, v1
invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
:pswitch_2e
const/16 v0, 0x5a
goto :goto_16
:pswitch_31
const/16 v0, 0xb4
goto :goto_16
:pswitch_34
const/16 v0, 0x10e
goto :goto_16
:catch_37
move-exception v0
const-string v0, "Could not access ExIf from path %s"
new-array v2, v6, [Ljava/lang/Object;
invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v1
invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_15
:pswitch_data_46
.packed-switch 0x3
:pswitch_31
:pswitch_15
:pswitch_15
:pswitch_2e
:pswitch_15
:pswitch_34
.end packed-switch
.end method
.method public static a(Landroid/net/Uri;Lcom/spotify/mobile/android/util/ClientEvent;)V
.registers 9
const/4 v6, 0x0
const/4 v5, 0x1
new-instance v2, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V
new-instance v3, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V
iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v0
invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
const-string v0, "image_original_width"
iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v0, "image_original_height"
iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I
const/16 v1, 0x438
if-gt v0, v1, :cond_39
iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
const/16 v1, 0x780
if-le v0, v1, :cond_51
:cond_39
iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I
int-to-float v0, v0
const/high16 v1, 0x4487
div-float/2addr v0, v1
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
int-to-float v1, v1
const/high16 v4, 0x44f0
div-float/2addr v1, v4
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v1
if-ge v0, v1, :cond_75
:goto_4f
iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
:cond_51
iget v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v0
invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
invoke-static {p0, v0}, Lcom/spotify/mobile/android/spotlets/collection/b/a;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v0
:try_start_61
new-instance v1, Ljava/io/FileOutputStream;
invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v3, 0x50
invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
:try_end_74
.catch Ljava/io/FileNotFoundException; {:try_start_61 .. :try_end_74} :catch_77
.catch Ljava/io/IOException; {:try_start_61 .. :try_end_74} :catch_86
:goto_74
return-void
:cond_75
move v0, v1
goto :goto_4f
:catch_77
move-exception v0
const-string v1, "Could not save file to %s"
new-array v2, v5, [Ljava/lang/Object;
invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v6
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_74
:catch_86
move-exception v0
const-string v1, "Failed to compress image."
new-array v2, v6, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_74
.end method