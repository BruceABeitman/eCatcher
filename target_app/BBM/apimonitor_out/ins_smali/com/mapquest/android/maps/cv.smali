.class final Lcom/mapquest/android/maps/cv;
.super Ljava/lang/Object;
.source "Util.java"
.method public static a(D)D
.registers 6
invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D
move-result-wide v0
const-wide/high16 v2, 0x4000
invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D
move-result-wide v2
div-double/2addr v0, v2
return-wide v0
.end method
.method public static a(FFFF)F
.registers 7
sub-float v0, p0, p2
sub-float v1, p0, p2
mul-float/2addr v0, v1
sub-float v1, p1, p3
sub-float v2, p1, p3
mul-float/2addr v1, v2
add-float/2addr v0, v1
float-to-double v0, v0
invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v0
double-to-float v0, v0
return v0
.end method
.method public static a(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
.registers 6
iget v0, p0, Landroid/graphics/PointF;->x:F
iget v1, p0, Landroid/graphics/PointF;->y:F
iget v2, p1, Landroid/graphics/PointF;->x:F
iget v3, p1, Landroid/graphics/PointF;->y:F
invoke-static {v0, v1, v2, v3}, Lcom/mapquest/android/maps/cv;->a(FFFF)F
move-result v0
return v0
.end method
.method public static a(Lcom/mapquest/android/maps/b;Lcom/mapquest/android/maps/MapView;)Landroid/graphics/Rect;
.registers 7
const/4 v3, 0x0
invoke-virtual {p1}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;
move-result-object v0
instance-of v1, v0, Lcom/mapquest/android/maps/bs;
if-eqz v1, :cond_d
check-cast v0, Lcom/mapquest/android/maps/bs;
iget-object v0, v0, Lcom/mapquest/android/maps/bs;->a:Lcom/mapquest/android/maps/br;
:cond_d
iget-object v1, p0, Lcom/mapquest/android/maps/b;->a:Lcom/mapquest/android/maps/s;
invoke-interface {v0, v1, v3}, Lcom/mapquest/android/maps/bq;->a(Lcom/mapquest/android/maps/s;Landroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v1
iget-object v2, p0, Lcom/mapquest/android/maps/b;->b:Lcom/mapquest/android/maps/s;
invoke-interface {v0, v2, v3}, Lcom/mapquest/android/maps/bq;->a(Lcom/mapquest/android/maps/s;Landroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v0
new-instance v2, Landroid/graphics/Rect;
iget v3, v1, Landroid/graphics/Point;->x:I
iget v1, v1, Landroid/graphics/Point;->y:I
iget v4, v0, Landroid/graphics/Point;->x:I
iget v0, v0, Landroid/graphics/Point;->y:I
invoke-direct {v2, v3, v1, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V
return-object v2
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
.registers 10
new-instance v2, Landroid/util/DisplayMetrics;
invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V
move-object v0, p0
check-cast v0, Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v0
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I
packed-switch v0, :pswitch_data_9e
const-string v0, "_mdpi.png"
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_25
const/4 v1, 0x0
new-instance v4, Ljava/io/File;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v5
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_9c
:try_start_50
new-instance v0, Ljava/io/FileInputStream;
invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
:try_end_55
.catch Ljava/lang/Exception; {:try_start_50 .. :try_end_55} :catch_83
:goto_55
if-nez v0, :cond_72
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v4, "/com/mapquest/android/maps/"
invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v0
:cond_72
new-instance v1, Landroid/graphics/drawable/BitmapDrawable;
invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V
iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I
invoke-virtual {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V
return-object v1
:pswitch_7d
const-string v0, "_hdpi.png"
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_25
:catch_83
move-exception v0
const-string v5, "mq.android.maps.util"
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "unable to load resource from app cache:"
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v4
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v5, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_9c
move-object v0, v1
goto :goto_55
:pswitch_data_9e
.packed-switch 0xf0
:pswitch_7d
.end packed-switch
.end method
.method public static a(Landroid/graphics/Rect;Lcom/mapquest/android/maps/MapView;)Lcom/mapquest/android/maps/b;
.registers 11
const/4 v7, 0x4
const/4 v0, 0x0
invoke-virtual {p1}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;
move-result-object v1
iget v2, p0, Landroid/graphics/Rect;->left:I
iget v3, p0, Landroid/graphics/Rect;->top:I
invoke-interface {v1, v2, v3}, Lcom/mapquest/android/maps/bq;->a(II)Lcom/mapquest/android/maps/s;
move-result-object v2
iget v3, p0, Landroid/graphics/Rect;->right:I
iget v4, p0, Landroid/graphics/Rect;->top:I
invoke-interface {v1, v3, v4}, Lcom/mapquest/android/maps/bq;->a(II)Lcom/mapquest/android/maps/s;
move-result-object v3
iget v4, p0, Landroid/graphics/Rect;->left:I
iget v5, p0, Landroid/graphics/Rect;->bottom:I
invoke-interface {v1, v4, v5}, Lcom/mapquest/android/maps/bq;->a(II)Lcom/mapquest/android/maps/s;
move-result-object v4
iget v5, p0, Landroid/graphics/Rect;->right:I
iget v6, p0, Landroid/graphics/Rect;->bottom:I
invoke-interface {v1, v5, v6}, Lcom/mapquest/android/maps/bq;->a(II)Lcom/mapquest/android/maps/s;
move-result-object v1
new-array v5, v7, [Lcom/mapquest/android/maps/s;
aput-object v2, v5, v0
const/4 v2, 0x1
aput-object v3, v5, v2
const/4 v2, 0x2
aput-object v4, v5, v2
const/4 v2, 0x3
aput-object v1, v5, v2
const v4, 0xaba9500
const v1, -0xaba9500
const v2, -0x55d4a80
const v3, 0x55d4a80
move v8, v0
move v0, v4
move v4, v8
:goto_42
if-ge v4, v7, :cond_6f
aget-object v6, v5, v4
iget v6, v6, Lcom/mapquest/android/maps/s;->b:I
if-ge v6, v0, :cond_4e
aget-object v0, v5, v4
iget v0, v0, Lcom/mapquest/android/maps/s;->b:I
:cond_4e
aget-object v6, v5, v4
iget v6, v6, Lcom/mapquest/android/maps/s;->b:I
if-le v6, v1, :cond_58
aget-object v1, v5, v4
iget v1, v1, Lcom/mapquest/android/maps/s;->b:I
:cond_58
aget-object v6, v5, v4
iget v6, v6, Lcom/mapquest/android/maps/s;->a:I
if-le v6, v2, :cond_62
aget-object v2, v5, v4
iget v2, v2, Lcom/mapquest/android/maps/s;->a:I
:cond_62
aget-object v6, v5, v4
iget v6, v6, Lcom/mapquest/android/maps/s;->a:I
if-ge v6, v3, :cond_6c
aget-object v3, v5, v4
iget v3, v3, Lcom/mapquest/android/maps/s;->a:I
:cond_6c
add-int/lit8 v4, v4, 0x1
goto :goto_42
:cond_6f
new-instance v4, Lcom/mapquest/android/maps/b;
new-instance v5, Lcom/mapquest/android/maps/s;
invoke-direct {v5, v2, v0}, Lcom/mapquest/android/maps/s;-><init>(II)V
new-instance v0, Lcom/mapquest/android/maps/s;
invoke-direct {v0, v3, v1}, Lcom/mapquest/android/maps/s;-><init>(II)V
invoke-direct {v4, v5, v0}, Lcom/mapquest/android/maps/b;-><init>(Lcom/mapquest/android/maps/s;Lcom/mapquest/android/maps/s;)V
return-object v4
.end method
.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
.registers 6
if-eqz p0, :cond_30
new-instance v0, Ljava/io/StringWriter;
invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V
const/16 v1, 0x400
new-array v1, v1, [C
:try_start_b
new-instance v2, Ljava/io/BufferedReader;
new-instance v3, Ljava/io/InputStreamReader;
const-string v4, "UTF-8"
invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
:goto_17
invoke-virtual {v2, v1}, Ljava/io/Reader;->read([C)I
move-result v3
const/4 v4, -0x1
if-eq v3, v4, :cond_28
const/4 v4, 0x0
invoke-virtual {v0, v1, v4, v3}, Ljava/io/Writer;->write([CII)V
:try_end_22
.catchall {:try_start_b .. :try_end_22} :catchall_23
goto :goto_17
:catchall_23
move-exception v0
invoke-virtual {p0}, Ljava/io/InputStream;->close()V
throw v0
:cond_28
invoke-virtual {p0}, Ljava/io/InputStream;->close()V
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
:goto_2f
return-object v0
:cond_30
const-string v0, ""
goto :goto_2f
.end method
.method static a(Landroid/os/Handler;)Z
.registers 3
invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;
move-result-object v0
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
if-ne v0, v1, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public static b(Lcom/mapquest/android/maps/b;Lcom/mapquest/android/maps/MapView;)Landroid/graphics/Rect;
.registers 12
const/4 v9, 0x4
const/4 v8, 0x0
const/4 v0, 0x0
invoke-virtual {p1}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;
move-result-object v1
new-instance v2, Lcom/mapquest/android/maps/s;
iget-object v3, p0, Lcom/mapquest/android/maps/b;->a:Lcom/mapquest/android/maps/s;
iget v3, v3, Lcom/mapquest/android/maps/s;->a:I
iget-object v4, p0, Lcom/mapquest/android/maps/b;->a:Lcom/mapquest/android/maps/s;
iget v4, v4, Lcom/mapquest/android/maps/s;->b:I
invoke-direct {v2, v3, v4}, Lcom/mapquest/android/maps/s;-><init>(II)V
invoke-interface {v1, v2, v8}, Lcom/mapquest/android/maps/bq;->a(Lcom/mapquest/android/maps/s;Landroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v2
new-instance v3, Lcom/mapquest/android/maps/s;
iget-object v4, p0, Lcom/mapquest/android/maps/b;->a:Lcom/mapquest/android/maps/s;
iget v4, v4, Lcom/mapquest/android/maps/s;->a:I
iget-object v5, p0, Lcom/mapquest/android/maps/b;->b:Lcom/mapquest/android/maps/s;
iget v5, v5, Lcom/mapquest/android/maps/s;->b:I
invoke-direct {v3, v4, v5}, Lcom/mapquest/android/maps/s;-><init>(II)V
invoke-interface {v1, v3, v8}, Lcom/mapquest/android/maps/bq;->a(Lcom/mapquest/android/maps/s;Landroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v3
new-instance v4, Lcom/mapquest/android/maps/s;
iget-object v5, p0, Lcom/mapquest/android/maps/b;->b:Lcom/mapquest/android/maps/s;
iget v5, v5, Lcom/mapquest/android/maps/s;->a:I
iget-object v6, p0, Lcom/mapquest/android/maps/b;->a:Lcom/mapquest/android/maps/s;
iget v6, v6, Lcom/mapquest/android/maps/s;->b:I
invoke-direct {v4, v5, v6}, Lcom/mapquest/android/maps/s;-><init>(II)V
invoke-interface {v1, v4, v8}, Lcom/mapquest/android/maps/bq;->a(Lcom/mapquest/android/maps/s;Landroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v4
new-instance v5, Lcom/mapquest/android/maps/s;
iget-object v6, p0, Lcom/mapquest/android/maps/b;->b:Lcom/mapquest/android/maps/s;
iget v6, v6, Lcom/mapquest/android/maps/s;->a:I
iget-object v7, p0, Lcom/mapquest/android/maps/b;->b:Lcom/mapquest/android/maps/s;
iget v7, v7, Lcom/mapquest/android/maps/s;->b:I
invoke-direct {v5, v6, v7}, Lcom/mapquest/android/maps/s;-><init>(II)V
invoke-interface {v1, v5, v8}, Lcom/mapquest/android/maps/bq;->a(Lcom/mapquest/android/maps/s;Landroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v1
new-array v5, v9, [Landroid/graphics/Point;
aput-object v2, v5, v0
const/4 v2, 0x1
aput-object v3, v5, v2
const/4 v2, 0x2
aput-object v4, v5, v2
const/4 v2, 0x3
aput-object v1, v5, v2
move v4, v0
move v3, v0
move v2, v0
move v1, v0
:goto_5c
if-ge v4, v9, :cond_91
aget-object v6, v5, v4
iget v6, v6, Landroid/graphics/Point;->x:I
if-lt v6, v0, :cond_66
if-nez v0, :cond_6a
:cond_66
aget-object v0, v5, v4
iget v0, v0, Landroid/graphics/Point;->x:I
:cond_6a
aget-object v6, v5, v4
iget v6, v6, Landroid/graphics/Point;->x:I
if-gt v6, v1, :cond_72
if-nez v1, :cond_76
:cond_72
aget-object v1, v5, v4
iget v1, v1, Landroid/graphics/Point;->x:I
:cond_76
aget-object v6, v5, v4
iget v6, v6, Landroid/graphics/Point;->y:I
if-lt v6, v2, :cond_7e
if-nez v2, :cond_82
:cond_7e
aget-object v2, v5, v4
iget v2, v2, Landroid/graphics/Point;->y:I
:cond_82
aget-object v6, v5, v4
iget v6, v6, Landroid/graphics/Point;->y:I
if-gt v6, v3, :cond_8a
if-nez v3, :cond_8e
:cond_8a
aget-object v3, v5, v4
iget v3, v3, Landroid/graphics/Point;->y:I
:cond_8e
add-int/lit8 v4, v4, 0x1
goto :goto_5c
:cond_91
new-instance v4, Landroid/graphics/Rect;
invoke-direct {v4, v0, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V
return-object v4
.end method