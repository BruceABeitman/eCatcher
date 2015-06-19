.class public final Lcom/d/a/b/b/e;
.super Ljava/lang/Object;
.source "ImageDecodingInfo.java"
.field final a:Ljava/lang/String;
.field final b:Ljava/lang/String;
.field final c:Lcom/d/a/b/a/f;
.field final d:Lcom/d/a/b/a/e;
.field final e:Lcom/d/a/b/a/l;
.field final f:Lcom/d/a/b/d/c;
.field final g:Ljava/lang/Object;
.field final h:Landroid/graphics/BitmapFactory$Options;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/d/a/b/a/f;Lcom/d/a/b/a/l;Lcom/d/a/b/d/c;Lcom/d/a/b/d;)V
.registers 11
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/d/a/b/b/e;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/d/a/b/b/e;->b:Ljava/lang/String;
iput-object p3, p0, Lcom/d/a/b/b/e;->c:Lcom/d/a/b/a/f;
iget-object v0, p6, Lcom/d/a/b/d;->g:Lcom/d/a/b/a/e;
iput-object v0, p0, Lcom/d/a/b/b/e;->d:Lcom/d/a/b/a/e;
iput-object p4, p0, Lcom/d/a/b/b/e;->e:Lcom/d/a/b/a/l;
iput-object p5, p0, Lcom/d/a/b/b/e;->f:Lcom/d/a/b/d/c;
iget-object v0, p6, Lcom/d/a/b/d;->j:Ljava/lang/Object;
iput-object v0, p0, Lcom/d/a/b/b/e;->g:Ljava/lang/Object;
new-instance v0, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
iput-object v0, p0, Lcom/d/a/b/b/e;->h:Landroid/graphics/BitmapFactory$Options;
iget-object v0, p6, Lcom/d/a/b/d;->h:Landroid/graphics/BitmapFactory$Options;
iget-object v1, p0, Lcom/d/a/b/b/e;->h:Landroid/graphics/BitmapFactory$Options;
iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I
iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I
iget-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z
iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z
iget-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z
iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z
iget-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
iget-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
iget-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z
iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z
iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
iget-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z
iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z
iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I
iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I
iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I
iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I
iget-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B
iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0xa
if-lt v2, v3, :cond_56
iget-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z
iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z
:cond_56
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0xb
if-lt v2, v3, :cond_64
iget-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
iget-boolean v0, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z
iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z
:cond_64
return-void
.end method