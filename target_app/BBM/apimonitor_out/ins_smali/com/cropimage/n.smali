.class public final Lcom/cropimage/n;
.super Ljava/lang/Object;
.source "Util.java"
.method public static a(Landroid/graphics/Bitmap;Landroid/graphics/Point;F)Landroid/graphics/Bitmap;
.registers 10
new-instance v5, Landroid/graphics/Matrix;
invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V
invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z
:try_start_8
iget v0, p1, Landroid/graphics/Point;->x:I
int-to-float v0, v0
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v1
int-to-float v1, v1
div-float/2addr v0, v1
iget v1, p1, Landroid/graphics/Point;->y:I
int-to-float v1, v1
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
int-to-float v2, v2
div-float/2addr v1, v2
cmpl-float v2, v1, v0
if-lez v2, :cond_36
invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z
:goto_21
const/4 v1, 0x0
const/4 v2, 0x0
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
const/4 v6, 0x1
move-object v0, p0
invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
move-result-object v0
invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
move-object p0, v0
:goto_35
return-object p0
:cond_36
invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z
:try_end_39
.catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_39} :catch_3a
goto :goto_21
:catch_3a
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_35
.end method
.method public static a(Ljava/io/Closeable;)V
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