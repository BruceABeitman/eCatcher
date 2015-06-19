.class public final Lcom/instagram/n/c/a;
.super Ljava/lang/Object;
.source "BitmapUtil.java"
.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.registers 6
const/4 v4, 0x0
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v1
if-ne v0, v1, :cond_c
:goto_b
return-object p0
:cond_c
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v2
if-le v0, v1, :cond_34
sub-int/2addr v0, v1
div-int/lit8 v1, v0, 0x2
new-instance v0, Landroid/graphics/Rect;
add-int v3, v2, v1
invoke-direct {v0, v1, v4, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V
:goto_1c
new-instance v3, Landroid/graphics/Rect;
invoke-direct {v3, v4, v4, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;
move-result-object v1
invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v1
new-instance v2, Landroid/graphics/Canvas;
invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
const/4 v4, 0x0
invoke-virtual {v2, p0, v0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
move-object p0, v1
goto :goto_b
:cond_34
sub-int v0, v1, v0
div-int/lit8 v1, v0, 0x2
new-instance v0, Landroid/graphics/Rect;
add-int v3, v2, v1
invoke-direct {v0, v4, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V
goto :goto_1c
.end method
.method public static a(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;
.registers 13
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;
move-result-object v0
invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v6
new-instance v7, Landroid/graphics/Canvas;
invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v1
move v2, p1
move v3, p2
move v4, p3
move v5, p4
invoke-static/range {v0 .. v5}, Lcom/instagram/n/c/a;->a(IIIIIZ)Landroid/graphics/Matrix;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v7, p0, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
return-object v6
.end method
.method public static a(Landroid/graphics/Bitmap;[F)Landroid/graphics/Bitmap;
.registers 8
const/4 v5, 0x0
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v1
sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v0
new-instance v1, Landroid/graphics/Canvas;
invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
new-instance v2, Landroid/graphics/RectF;
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
int-to-float v3, v3
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
int-to-float v4, v4
invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V
new-instance v3, Landroid/graphics/BitmapShader;
sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;
sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;
invoke-direct {v3, p0, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
new-instance v4, Landroid/graphics/Paint;
invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V
const/4 v5, 0x1
invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V
invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
new-instance v3, Landroid/graphics/Path;
invoke-direct {v3}, Landroid/graphics/Path;-><init>()V
sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;
invoke-virtual {v3, v2, p1, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V
invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
return-object v0
.end method
.method public static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
.registers 9
const/4 v5, 0x1
invoke-static {p0, p1, p2}, Lcom/instagram/n/c/a;->b(Ljava/lang/String;II)I
move-result v0
new-instance v1, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V
invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I
move-result v0
iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v1
if-eqz v1, :cond_52
int-to-float v0, p1
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
int-to-float v2, v2
div-float/2addr v0, v2
int-to-float v2, p2
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v3
int-to-float v3, v3
div-float/2addr v2, v3
invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F
move-result v0
int-to-float v2, p2
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
int-to-float v3, v3
div-float/2addr v2, v3
int-to-float v3, p1
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
int-to-float v4, v4
div-float/2addr v3, v4
invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F
move-result v2
invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F
move-result v0
const/high16 v2, 0x3f80
cmpg-float v0, v0, v2
if-gez v0, :cond_52
invoke-static {v1, p1, p2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
move-result-object v0
if-eq v0, v1, :cond_51
invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
:goto_51
:cond_51
return-object v0
:cond_52
move-object v0, v1
goto :goto_51
.end method
.method private static a(IIIIIZ)Landroid/graphics/Matrix;
.registers 14
const v7, 0x47c35000
const v6, -0x383cb000
const/4 v5, 0x0
new-instance v2, Landroid/graphics/Matrix;
invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V
new-instance v3, Landroid/graphics/RectF;
int-to-float v0, p0
int-to-float v1, p1
invoke-direct {v3, v5, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V
rem-int/lit16 v0, p4, 0x168
if-eqz v0, :cond_1e
int-to-float v0, p4
invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->setRotate(F)V
invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z
:cond_1e
rem-int/lit16 v0, p4, 0xb4
const/16 v1, 0x5a
if-ne v0, v1, :cond_53
const/4 v0, 0x1
move v1, v0
:goto_26
if-eqz v1, :cond_56
move v0, p1
:goto_29
if-eqz v1, :cond_58
:goto_2b
mul-int/2addr v0, p3
mul-int v1, p2, p0
if-le v0, v1, :cond_5a
new-instance v0, Landroid/graphics/RectF;
int-to-float v1, p2
add-float/2addr v1, v7
int-to-float v4, p3
invoke-direct {v0, v6, v5, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V
:goto_38
sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;
invoke-virtual {v2, v3, v0, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
rem-int/lit16 v0, p4, 0x168
if-eqz v0, :cond_45
int-to-float v0, p4
invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preRotate(F)Z
:cond_45
if-eqz p5, :cond_52
const/high16 v0, -0x4080
const/high16 v1, 0x3f80
invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z
int-to-float v0, p2
invoke-virtual {v2, v0, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z
:cond_52
return-object v2
:cond_53
const/4 v0, 0x0
move v1, v0
goto :goto_26
:cond_56
move v0, p0
goto :goto_29
:cond_58
move p0, p1
goto :goto_2b
:cond_5a
new-instance v0, Landroid/graphics/RectF;
int-to-float v1, p2
int-to-float v4, p3
add-float/2addr v4, v7
invoke-direct {v0, v5, v6, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V
goto :goto_38
.end method
.method private static a(Ljava/lang/String;)Landroid/graphics/Rect;
.registers 4
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
new-instance v1, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v2, 0x1
iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iput v2, v0, Landroid/graphics/Rect;->right:I
iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
iput v1, v0, Landroid/graphics/Rect;->bottom:I
return-object v0
.end method
.method public static b(Ljava/lang/String;II)I
.registers 6
invoke-static {p0}, Lcom/instagram/n/c/a;->a(Ljava/lang/String;)Landroid/graphics/Rect;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/Rect;->width()I
move-result v1
div-int/2addr v1, p1
invoke-virtual {v0}, Landroid/graphics/Rect;->height()I
move-result v2
div-int/2addr v2, p2
invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I
move-result v1
invoke-virtual {v0}, Landroid/graphics/Rect;->width()I
move-result v2
div-int/2addr v2, p2
invoke-virtual {v0}, Landroid/graphics/Rect;->height()I
move-result v0
div-int/2addr v0, p1
invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I
move-result v0
invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I
move-result v0
return v0
.end method