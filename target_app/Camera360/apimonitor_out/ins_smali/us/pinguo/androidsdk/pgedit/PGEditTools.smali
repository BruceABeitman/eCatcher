.class public Lus/pinguo/androidsdk/pgedit/PGEditTools;
.super Ljava/lang/Object;
.source "PGEditTools.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static bitmapChangeJPGFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
.registers 3
const/16 v0, 0x64
invoke-static {p0, p1, v0}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->bitmapChangeJPGFile(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z
move-result v0
return v0
.end method
.method public static bitmapChangeJPGFile(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z
.registers 10
const/4 v4, 0x0
new-instance v1, Ljava/io/File;
invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v5
invoke-virtual {v5}, Ljava/io/File;->exists()Z
move-result v5
if-nez v5, :cond_2e
invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v5
invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "mkdirs "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
:cond_2e
const/4 v2, 0x0
:try_start_2f
new-instance v3, Ljava/io/FileOutputStream;
invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
:try_start_34
:try_end_34
.catchall {:try_start_2f .. :try_end_34} :catchall_63
.catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_34} :catch_54
sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
invoke-virtual {p0, v5, p2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
move-result v4
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "bitmapChangeJPGFile compress result is "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
:try_end_4d
.catchall {:try_start_34 .. :try_end_4d} :catchall_75
.catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_4d} :catch_78
if-eqz v3, :cond_73
:try_start_4f
invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
:try_end_52
.catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_6f
move-object v2, v3
:goto_53
:cond_53
return v4
:catch_54
move-exception v0
:goto_55
:try_start_55
invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
:try_end_58
.catchall {:try_start_55 .. :try_end_58} :catchall_63
if-eqz v2, :cond_53
:try_start_5a
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:try_end_5d
.catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e
goto :goto_53
:catch_5e
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_53
:catchall_63
move-exception v5
:goto_64
if-eqz v2, :cond_69
:try_start_66
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:try_end_69
.catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a
:cond_69
:goto_69
throw v5
:catch_6a
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_69
:catch_6f
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
:cond_73
move-object v2, v3
goto :goto_53
:catchall_75
move-exception v5
move-object v2, v3
goto :goto_64
:catch_78
move-exception v0
move-object v2, v3
goto :goto_55
.end method
.method public static deleteAll(Ljava/io/File;)V
.registers 5
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v2
if-eqz v2, :cond_e
invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v1
array-length v3, v1
const/4 v2, 0x0
:goto_c
if-lt v2, v3, :cond_29
:cond_e
invoke-virtual {p0}, Ljava/io/File;->delete()Z
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "delete:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
return-void
:cond_29
aget-object v0, v1, v2
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->deleteAll(Ljava/io/File;)V
add-int/lit8 v2, v2, 0x1
goto :goto_c
.end method
.method public static deleteFileAndFolder(Ljava/lang/String;)Z
.registers 3
new-instance v0, Ljava/io/File;
invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->deleteAll(Ljava/io/File;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_10
const/4 v1, 0x0
:goto_f
return v1
:cond_10
const/4 v1, 0x1
goto :goto_f
.end method
.method public static getARGB(Landroid/graphics/Bitmap;)[I
.registers 9
const/4 v2, 0x0
if-nez p0, :cond_5
const/4 v1, 0x0
:goto_4
return-object v1
:cond_5
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v3
mul-int/2addr v0, v3
new-array v1, v0, [I
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v6
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v7
move-object v0, p0
move v4, v2
move v5, v2
invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V
goto :goto_4
.end method
.method static getAnim(Landroid/content/Context;Ljava/lang/String;)I
.registers 5
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const-string/jumbo v1, "anim"
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method static getArray(Landroid/content/Context;Ljava/lang/String;)I
.registers 5
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const-string/jumbo v1, "array"
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public static getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
.registers 3
invoke-static {p0}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getRotatedDegree(Ljava/lang/String;)I
move-result v0
invoke-static {p0, p1, v0}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method static getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
.registers 16
const/4 v11, 0x0
const/4 v1, 0x0
if-gtz p1, :cond_d
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string/jumbo v2, "size is error"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_d
new-instance v10, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v2, 0x1
iput-boolean v2, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p0, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iget v2, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I
if-lez v2, :cond_20
iget v2, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I
if-gtz v2, :cond_27
:cond_20
const-string/jumbo v1, "get Bitmap outWidth or outheight is -1"
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
:goto_26
:cond_26
return-object v11
:cond_27
iget v2, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v3, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I
invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I
move-result v9
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "oldWidth is "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v3, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ",oldHeight is "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v3, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ",size is "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
div-int v12, v9, p1
iput v12, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
iput-boolean v1, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p0, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_26
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "scale is "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ",tempbitmap width is "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ",height is "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
new-instance v5, Landroid/graphics/Matrix;
invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V
int-to-float v2, p1
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I
move-result v3
int-to-float v3, v3
div-float v8, v2, v3
invoke-virtual {v5, v8, v8}, Landroid/graphics/Matrix;->postScale(FF)Z
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
move v2, v1
move v6, v1
invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
move-result-object v7
if-eq v7, v0, :cond_c4
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
:cond_c4
invoke-static {v7, p2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getRotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
move-result-object v11
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "get Bitmap width is "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ",height is "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
goto/16 :goto_26
.end method
.method static getBitmapNoDegree(Ljava/lang/String;I)Landroid/graphics/Bitmap;
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method static getColor(Landroid/content/Context;Ljava/lang/String;)I
.registers 5
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const-string/jumbo v1, "color"
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method static getDimen(Landroid/content/Context;Ljava/lang/String;)I
.registers 5
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const-string/jumbo v1, "dimen"
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method static getDrawable(Landroid/content/Context;Ljava/lang/String;)I
.registers 5
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const-string/jumbo v1, "drawable"
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method static getId(Landroid/content/Context;Ljava/lang/String;)I
.registers 5
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const-string/jumbo v1, "id"
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method static getLayout(Landroid/content/Context;Ljava/lang/String;)I
.registers 5
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const-string/jumbo v1, "layout"
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method static getRotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.registers 10
const/4 v1, 0x0
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v2, "getRotateBitmap rotate="
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
if-eqz p0, :cond_38
if-lez p1, :cond_38
new-instance v5, Landroid/graphics/Matrix;
invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V
int-to-float v0, p1
invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
const/4 v6, 0x1
move-object v0, p0
move v2, v1
invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
move-result-object v7
if-eqz v7, :cond_38
if-eq v7, p0, :cond_38
invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
:goto_37
return-object v7
:cond_38
move-object v7, p0
goto :goto_37
.end method
.method static getRotatedDegree(Ljava/lang/String;)I
.registers 7
const/4 v3, 0x0
:try_start_1
new-instance v1, Landroid/media/ExifInterface;
invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "Orientation"
const/4 v5, 0x0
invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
:try_end_d
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_1b
move-result v2
packed-switch v2, :pswitch_data_20
:pswitch_11
:goto_11
return v3
:pswitch_12
const/16 v3, 0x5a
goto :goto_11
:pswitch_15
const/16 v3, 0xb4
goto :goto_11
:pswitch_18
const/16 v3, 0x10e
goto :goto_11
:catch_1b
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_11
:pswitch_data_20
.packed-switch 0x3
:pswitch_15
:pswitch_11
:pswitch_11
:pswitch_12
:pswitch_11
:pswitch_18
.end packed-switch
.end method
.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.registers 14
const/4 v8, 0x0
if-nez p0, :cond_5
move-object v3, v8
:goto_4
return-object v3
:cond_5
const/4 v3, 0x0
:try_start_6
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v9
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v10
sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v3
new-instance v0, Landroid/graphics/Canvas;
invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
const v1, -0xbdbdbe
new-instance v4, Landroid/graphics/Paint;
invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V
new-instance v5, Landroid/graphics/Rect;
const/4 v9, 0x0
const/4 v10, 0x0
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v11
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v12
invoke-direct {v5, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V
new-instance v6, Landroid/graphics/RectF;
invoke-direct {v6, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v9
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v10
invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I
move-result v9
int-to-float v9, v9
const/high16 v10, 0x4000
div-float v7, v9, v10
const/4 v9, 0x1
invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V
const/4 v9, 0x0
const/4 v10, 0x0
const/4 v11, 0x0
const/4 v12, 0x0
invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawARGB(IIII)V
const v9, -0xbdbdbe
invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V
invoke-virtual {v0, v6, v7, v7, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
new-instance v9, Landroid/graphics/PorterDuffXfermode;
sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V
invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
invoke-virtual {v0, p0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
:try_end_6a
.catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6a} :catch_6b
goto :goto_4
:catch_6b
move-exception v2
if-eqz v3, :cond_77
invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z
move-result v9
if-nez v9, :cond_77
invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
:cond_77
move-object v3, v8
goto :goto_4
.end method
.method public static getSDFreeSize()J
.registers 6
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_d
const-wide/16 v2, 0x0
:goto_c
return-wide v2
:cond_d
new-instance v1, Landroid/os/StatFs;
invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I
move-result v2
int-to-long v2, v2
invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I
move-result v4
int-to-long v4, v4
mul-long/2addr v2, v4
goto :goto_c
.end method
.method static getString(Landroid/content/Context;Ljava/lang/String;)I
.registers 5
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const-string/jumbo v1, "string"
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public static declared-synchronized getUUID()Ljava/lang/String;
.registers 2
const-class v1, Lus/pinguo/androidsdk/pgedit/PGEditTools;
monitor-enter v1
:try_start_3
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v0
invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;
:try_end_a
.catchall {:try_start_3 .. :try_end_a} :catchall_d
move-result-object v0
monitor-exit v1
return-object v0
:catchall_d
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static getViewWidth(Landroid/view/View;)I
.registers 7
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
:try_start_3
invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
const/4 v4, 0x0
const/4 v5, 0x0
invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
invoke-virtual {p0, v2, v1}, Landroid/view/View;->measure(II)V
invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I
:try_end_13
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_15
move-result v3
:goto_14
return v3
:catch_15
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_14
.end method
.method public static hasSD()Z
.registers 4
invoke-static {}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getSDFreeSize()J
move-result-wide v0
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method