.class public final Lcom/instagram/android/d/d;
.super Ljava/lang/Object;
.source "AvatarBitmapUtil.java"
.method private static a(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
.registers 12
const/4 v9, 0x0
const/4 v8, 0x0
const/4 v7, 0x0
invoke-static {p0, p1}, Lcom/instagram/creation/photo/gallery/ImageManager;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/instagram/creation/photo/gallery/d;
move-result-object v0
invoke-interface {v0, p1}, Lcom/instagram/creation/photo/gallery/d;->a(Landroid/net/Uri;)Lcom/instagram/creation/photo/gallery/c;
move-result-object v0
invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J
move-result-wide v1
long-to-double v1, v1
const-wide v3, 0x3fd7ae147ae147aeL
mul-double/2addr v1, v3
double-to-int v1, v1
div-int/lit8 v1, v1, 0x4
invoke-static {}, Ljava/lang/System;->gc()V
invoke-interface {v0, v1}, Lcom/instagram/creation/photo/gallery/c;->a(I)Landroid/graphics/Bitmap;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Rotated image by: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v0}, Lcom/instagram/creation/photo/gallery/c;->c()I
move-result v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I
move-result v0
new-instance v2, Landroid/graphics/Matrix;
invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-static {v0, v9, v3}, Lcom/instagram/android/d/d;->a(ILjava/lang/Integer;I)Landroid/graphics/Rect;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/Rect;->width()I
move-result v3
invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I
move-result v3
new-instance v4, Landroid/graphics/RectF;
int-to-float v5, v3
int-to-float v6, v3
invoke-direct {v4, v8, v8, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V
invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z
invoke-virtual {v4}, Landroid/graphics/RectF;->width()F
move-result v2
invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
invoke-virtual {v4}, Landroid/graphics/RectF;->height()F
move-result v2
invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
invoke-static {}, Ljava/lang/System;->gc()V
sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v3, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v2
new-instance v4, Landroid/graphics/Rect;
invoke-direct {v4, v7, v7, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V
new-instance v3, Landroid/graphics/Canvas;
invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
invoke-virtual {v3, v1, v0, v4, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
return-object v2
.end method
.method public static a(Landroid/content/Context;ILandroid/net/Uri;)Landroid/graphics/Bitmap;
.registers 11
const/4 v6, 0x1
const/4 v1, 0x0
if-nez p1, :cond_74
:try_start_4
new-instance v0, Lcom/instagram/api/f/a;
invoke-direct {v0, p0}, Lcom/instagram/api/f/a;-><init>(Landroid/content/Context;)V
invoke-static {}, Lcom/instagram/api/f/a;->b()Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;
move-result-object v0
new-instance v2, Lch/boye/httpclientandroidlib/client/methods/HttpGet;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "https://graph.facebook.com/me/picture?type=large&method=GET&access_token="
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/b/b;->c()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
invoke-interface {v0, v2}, Lch/boye/httpclientandroidlib/client/HttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v1
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v0
invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
:try_end_38
.catchall {:try_start_4 .. :try_end_38} :catchall_6b
move-result-object v0
if-eqz v1, :cond_72
invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
move-object v1, v0
:goto_3f
:cond_3f
if-eqz v1, :cond_c0
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
int-to-float v0, v0
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
int-to-float v2, v2
div-float/2addr v0, v2
float-to-double v2, v0
const-wide/high16 v4, 0x3ff0
cmpl-double v2, v2, v4
if-eqz v2, :cond_be
const/high16 v2, 0x4316
mul-float/2addr v0, v2
float-to-int v0, v0
const/16 v2, 0x96
invoke-static {v1, v0, v2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
move-result-object v0
invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
:goto_60
invoke-static {v0}, Lcom/instagram/n/c/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v1
if-eq v0, v1, :cond_6a
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
move-object v0, v1
:goto_6a
:cond_6a
return-object v0
:catchall_6b
move-exception v0
if-eqz v1, :cond_71
invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
:cond_71
throw v0
:cond_72
move-object v1, v0
goto :goto_3f
:cond_74
if-ne p1, v6, :cond_b2
:try_start_76
invoke-static {}, Lcom/instagram/share/f/a;->b()Lcom/instagram/share/f/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/share/f/a;->g()Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/instagram/share/f/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_c2
new-instance v2, Lcom/instagram/api/f/a;
invoke-direct {v2, p0}, Lcom/instagram/api/f/a;-><init>(Landroid/content/Context;)V
invoke-static {}, Lcom/instagram/api/f/a;->b()Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;
move-result-object v2
new-instance v3, Lch/boye/httpclientandroidlib/client/methods/HttpGet;
invoke-direct {v3, v0}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
invoke-interface {v2, v3}, Lch/boye/httpclientandroidlib/client/HttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v1
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v0
invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
:try_end_a1
.catchall {:try_start_76 .. :try_end_a1} :catchall_ab
move-result-object v0
move-object v7, v0
move-object v0, v1
move-object v1, v7
:goto_a5
if-eqz v0, :cond_3f
invoke-static {v0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
goto :goto_3f
:catchall_ab
move-exception v0
if-eqz v1, :cond_b1
invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
:cond_b1
throw v0
:cond_b2
const/4 v0, 0x2
if-ne p1, v0, :cond_3f
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
invoke-static {v0, p2}, Lcom/instagram/android/d/d;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
move-result-object v1
goto :goto_3f
:cond_be
move-object v0, v1
goto :goto_60
:cond_c0
move-object v0, v1
goto :goto_6a
:cond_c2
move-object v0, v1
goto :goto_a5
.end method
.method private static a(ILjava/lang/Integer;I)Landroid/graphics/Rect;
.registers 5
const/4 v1, 0x0
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0, v1, v1, p0, p0}, Landroid/graphics/Rect;-><init>(IIII)V
return-object v0
.end method