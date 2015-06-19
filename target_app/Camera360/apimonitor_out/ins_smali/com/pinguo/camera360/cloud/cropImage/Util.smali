.class public Lcom/pinguo/camera360/cloud/cropImage/Util;
.super Ljava/lang/Object;
.source "Util.java"
.field private static final MAPS_CLASS_NAME:Ljava/lang/String; = "com.google.android.maps.MapsActivity"
.field private static final MAPS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.maps"
.field private static final TAG:Ljava/lang/String; = "db.Util"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static Assert(Z)V
.registers 2
if-nez p0, :cond_8
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_8
return-void
.end method
.method public static closeSilently(Landroid/os/ParcelFileDescriptor;)V
.registers 2
if-nez p0, :cond_3
:goto_2
return-void
:cond_3
:try_start_3
invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
:try_end_6
.catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7
goto :goto_2
:catch_7
move-exception v0
goto :goto_2
.end method
.method public static closeSilently(Ljava/io/Closeable;)V
.registers 2
if-nez p0, :cond_3
:goto_2
return-void
:cond_3
:try_start_3
invoke-interface {p0}, Ljava/io/Closeable;->close()V
:try_end_6
.catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7
goto :goto_2
:catch_7
move-exception v0
goto :goto_2
.end method
.method public static createSetAsIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
.registers 8
invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "file"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_32
invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v2
const/16 v3, 0x2e
invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I
move-result v1
const/4 v3, -0x1
if-eq v1, v3, :cond_32
invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;
move-result-object v3
invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v4
add-int/lit8 v5, v1, 0x1
invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v4
sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
move-result-object p1
:cond_32
new-instance v0, Landroid/content/Intent;
const-string/jumbo v3, "android.intent.action.ATTACH_DATA"
invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v3, "mimeType"
invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
return-object v0
.end method
.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
.registers 3
if-eq p0, p1, :cond_a
invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_9
return v0
:cond_a
const/4 v0, 0x1
goto :goto_9
.end method
.method public static extractMiniThumb(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
.registers 4
const/4 v0, 0x1
invoke-static {p0, p1, p2, v0}, Lcom/pinguo/camera360/cloud/cropImage/Util;->extractMiniThumb(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public static extractMiniThumb(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
.registers 9
if-nez p0, :cond_4
const/4 v1, 0x0
:cond_3
:goto_3
return-object v1
:cond_4
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
if-ge v3, v4, :cond_2b
int-to-float v3, p1
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v4
int-to-float v4, v4
div-float v2, v3, v4
:goto_16
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V
const/4 v3, 0x0
invoke-static {v0, p0, p1, p2, v3}, Lcom/pinguo/camera360/cloud/cropImage/Util;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
move-result-object v1
if-eqz p3, :cond_3
if-eq v1, p0, :cond_3
invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
goto :goto_3
:cond_2b
int-to-float v3, p2
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
int-to-float v4, v4
div-float v2, v3, v4
goto :goto_16
.end method
.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
const/4 v0, 0x0
:goto_1
array-length v1, p0
if-lt v0, v1, :cond_6
const/4 v0, -0x1
:cond_5
return v0
:cond_6
aget-object v1, p0, v0
invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_5
add-int/lit8 v0, v0, 0x1
goto :goto_1
.end method
.method public static openMaps(Landroid/content/Context;DD)V
.registers 16
const/4 v10, 0x2
const/4 v9, 0x1
const/4 v8, 0x0
:try_start_3
const-string/jumbo v4, "http://maps.google.com/maps?f=q&q=(%s,%s)"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v7
aput-object v7, v5, v6
const/4 v6, 0x1
invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v7
aput-object v7, v5, v6
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
new-instance v0, Landroid/content/ComponentName;
const-string/jumbo v4, "com.google.android.apps.maps"
const-string/jumbo v5, "com.google.android.maps.MapsActivity"
invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
new-instance v4, Landroid/content/Intent;
const-string/jumbo v5, "android.intent.action.VIEW"
invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v6
invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
move-result-object v2
invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:try_end_39
.catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_39} :catch_3a
:goto_39
return-void
:catch_3a
move-exception v1
const-string/jumbo v4, "db.Util"
const-string/jumbo v5, "GMM activity not found!"
invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const-string/jumbo v4, "geo:%s,%s"
new-array v5, v10, [Ljava/lang/Object;
invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v6
aput-object v6, v5, v8
invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v6
aput-object v6, v5, v9
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
new-instance v2, Landroid/content/Intent;
const-string/jumbo v4, "android.intent.action.VIEW"
invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v5
invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto :goto_39
.end method
.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.registers 10
const/high16 v3, 0x4000
if-eqz p1, :cond_31
if-eqz p0, :cond_31
new-instance v5, Landroid/graphics/Matrix;
invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V
int-to-float v0, p1
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v1
int-to-float v1, v1
div-float/2addr v1, v3
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
int-to-float v2, v2
div-float/2addr v2, v3
invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V
const/4 v1, 0x0
const/4 v2, 0x0
:try_start_1d
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
const/4 v6, 0x1
move-object v0, p0
invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
move-result-object v7
if-eq p0, v7, :cond_31
invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
:try_end_30
.catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_30} :catch_32
move-object p0, v7
:goto_31
:cond_31
return-object p0
:catch_32
move-exception v0
goto :goto_31
.end method
.method public static startBackgroundJob(Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
invoke-static {p0, p1, p2, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;
move-result-object v0
new-instance v1, Ljava/lang/Thread;
new-instance v2, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;
invoke-direct {v2, p0, p3, v0, p4}, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;-><init>(Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v1}, Ljava/lang/Thread;->start()V
return-void
.end method
.method public static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
.registers 33
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
sub-int v16, v3, p2
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v3
sub-int v18, v3, p3
if-nez p4, :cond_7c
if-ltz v16, :cond_12
if-gez v18, :cond_7c
:cond_12
sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
move/from16 v0, p2
move/from16 v1, p3
invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v11
new-instance v15, Landroid/graphics/Canvas;
invoke-direct {v15, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
const/4 v3, 0x0
div-int/lit8 v4, v16, 0x2
invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I
move-result v17
const/4 v3, 0x0
div-int/lit8 v4, v18, 0x2
invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I
move-result v19
new-instance v26, Landroid/graphics/Rect;
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
move/from16 v0, p2
invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I
move-result v3
add-int v3, v3, v17
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
move/from16 v0, p3
invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I
move-result v4
add-int v4, v4, v19
move-object/from16 v0, v26
move/from16 v1, v17
move/from16 v2, v19
invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V
invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->width()I
move-result v3
sub-int v3, p2, v3
div-int/lit8 v21, v3, 0x2
invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->height()I
move-result v3
sub-int v3, p3, v3
div-int/lit8 v22, v3, 0x2
new-instance v20, Landroid/graphics/Rect;
sub-int v3, p2, v21
sub-int v4, p3, v22
move-object/from16 v0, v20
move/from16 v1, v21
move/from16 v2, v22
invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V
const/4 v3, 0x0
move-object/from16 v0, p1
move-object/from16 v1, v26
move-object/from16 v2, v20
invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
:cond_7b
:goto_7b
return-object v11
:cond_7c
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
int-to-float v14, v3
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v3
int-to-float v13, v3
div-float v12, v14, v13
move/from16 v0, p2
int-to-float v3, v0
move/from16 v0, p3
int-to-float v4, v0
div-float v27, v3, v4
cmpl-float v3, v12, v27
if-lez v3, :cond_f1
move/from16 v0, p3
int-to-float v3, v0
div-float v25, v3, v13
const v3, 0x3f666666
cmpg-float v3, v25, v3
if-ltz v3, :cond_a6
const/high16 v3, 0x3f80
cmpl-float v3, v25, v3
if-lez v3, :cond_ee
:cond_a6
move-object/from16 v0, p0
move/from16 v1, v25
move/from16 v2, v25
invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V
:goto_af
if-eqz p0, :cond_110
const/4 v4, 0x0
const/4 v5, 0x0
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v6
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v7
const/4 v9, 0x1
move-object/from16 v3, p1
move-object/from16 v8, p0
invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
move-result-object v10
:goto_c4
const/4 v3, 0x0
invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I
move-result v4
sub-int v4, v4, p2
invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I
move-result v23
const/4 v3, 0x0
invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
sub-int v4, v4, p3
invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I
move-result v24
div-int/lit8 v3, v23, 0x2
div-int/lit8 v4, v24, 0x2
move/from16 v0, p2
move/from16 v1, p3
invoke-static {v10, v3, v4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
move-result-object v11
move-object/from16 v0, p1
if-eq v10, v0, :cond_7b
invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V
goto :goto_7b
:cond_ee
const/16 p0, 0x0
goto :goto_af
:cond_f1
move/from16 v0, p2
int-to-float v3, v0
div-float v25, v3, v14
const v3, 0x3f666666
cmpg-float v3, v25, v3
if-ltz v3, :cond_103
const/high16 v3, 0x3f80
cmpl-float v3, v25, v3
if-lez v3, :cond_10d
:cond_103
move-object/from16 v0, p0
move/from16 v1, v25
move/from16 v2, v25
invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V
goto :goto_af
:cond_10d
const/16 p0, 0x0
goto :goto_af
:cond_110
move-object/from16 v10, p1
goto :goto_c4
.end method