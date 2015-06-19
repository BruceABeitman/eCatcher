.class public final Lcom/spotify/mobile/android/ui/b/b;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"
.field private static f:Lcom/spotify/mobile/android/util/dg;
.field private final a:Landroid/graphics/Bitmap;
.field private final b:Landroid/graphics/Paint;
.field private final c:Landroid/graphics/BitmapShader;
.field private final d:Landroid/graphics/ColorFilter;
.field private final e:Landroid/graphics/Matrix;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/ui/b/b$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/ui/b/b$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/ui/b/b;->f:Lcom/spotify/mobile/android/util/dg;
return-void
.end method
.method public constructor <init>(Landroid/graphics/Bitmap;)V
.registers 6
invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/b/b;->e:Landroid/graphics/Matrix;
if-nez p1, :cond_14
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "Bitmap cannot be null."
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
iput-object p1, p0, Lcom/spotify/mobile/android/ui/b/b;->a:Landroid/graphics/Bitmap;
new-instance v0, Landroid/graphics/Paint;
const/4 v1, 0x1
invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/b/b;->b:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/b;->b:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
new-instance v0, Landroid/graphics/BitmapShader;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/b/b;->a:Landroid/graphics/Bitmap;
sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;
sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;
invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/b/b;->c:Landroid/graphics/BitmapShader;
new-instance v0, Landroid/graphics/PorterDuffColorFilter;
const/high16 v1, -0x3400
sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;
invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/b/b;->d:Landroid/graphics/ColorFilter;
return-void
.end method
.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
.registers 3
new-instance v0, Lcom/spotify/mobile/android/ui/b/d;
const v1, 0x3f666666
invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/ui/b/d;-><init>(Landroid/graphics/drawable/Drawable;F)V
return-object v0
.end method
.method public static a()Lcom/spotify/mobile/android/util/dg;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/ui/b/b;->f:Lcom/spotify/mobile/android/util/dg;
return-object v0
.end method
.method private b()I
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/b;->a:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/b/b;->a:Landroid/graphics/Bitmap;
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
return v0
.end method
.method public final draw(Landroid/graphics/Canvas;)V
.registers 14
const/4 v11, 0x0
const v10, 0x3fa66666
const v9, 0x3f666666
const/high16 v8, 0x4000
const/4 v7, 0x0
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/b/b;->getBounds()Landroid/graphics/Rect;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F
move-result v1
invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F
move-result v2
invoke-virtual {v0}, Landroid/graphics/Rect;->width()I
move-result v3
invoke-virtual {v0}, Landroid/graphics/Rect;->height()I
move-result v0
invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I
move-result v0
int-to-float v3, v0
div-float/2addr v3, v8
iget-object v4, p0, Lcom/spotify/mobile/android/ui/b/b;->e:Landroid/graphics/Matrix;
invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V
iget-object v4, p0, Lcom/spotify/mobile/android/ui/b/b;->e:Landroid/graphics/Matrix;
neg-float v5, v1
neg-float v6, v2
invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z
iget-object v4, p0, Lcom/spotify/mobile/android/ui/b/b;->c:Landroid/graphics/BitmapShader;
iget-object v5, p0, Lcom/spotify/mobile/android/ui/b/b;->e:Landroid/graphics/Matrix;
invoke-virtual {v4, v5}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
iget-object v4, p0, Lcom/spotify/mobile/android/ui/b/b;->b:Landroid/graphics/Paint;
const/4 v5, 0x0
invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/b/b;->b:Landroid/graphics/Paint;
iget-object v5, p0, Lcom/spotify/mobile/android/ui/b/b;->d:Landroid/graphics/ColorFilter;
invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
invoke-virtual {p1, v11, v11, v0, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z
invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V
invoke-virtual {p1, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/b;->a:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
neg-int v0, v0
int-to-float v0, v0
div-float/2addr v0, v8
iget-object v4, p0, Lcom/spotify/mobile/android/ui/b/b;->a:Landroid/graphics/Bitmap;
invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
neg-int v4, v4
int-to-float v4, v4
div-float/2addr v4, v8
invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/b;->a:Landroid/graphics/Bitmap;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/b/b;->b:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/b;->b:Landroid/graphics/Paint;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/b/b;->c:Landroid/graphics/BitmapShader;
invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/b;->b:Landroid/graphics/Paint;
const/4 v4, 0x0
invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V
invoke-virtual {p1, v9, v9}, Landroid/graphics/Canvas;->scale(FF)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/b;->b:Landroid/graphics/Paint;
invoke-virtual {p1, v7, v7, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
return-void
.end method
.method public final getIntrinsicHeight()I
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/b/b;->b()I
move-result v0
return v0
.end method
.method public final getIntrinsicWidth()I
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/b/b;->b()I
move-result v0
return v0
.end method
.method public final getOpacity()I
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/b;->b:Landroid/graphics/Paint;
invoke-virtual {v0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;
move-result-object v1
if-nez v1, :cond_1e
invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I
move-result v0
if-nez v0, :cond_10
const/4 v0, -0x2
:goto_f
return v0
:cond_10
const/16 v1, 0xff
if-ne v0, v1, :cond_1e
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/b;->a:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z
move-result v0
if-nez v0, :cond_1e
const/4 v0, -0x1
goto :goto_f
:cond_1e
const/4 v0, -0x3
goto :goto_f
.end method
.method public final setAlpha(I)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/b;->b:Landroid/graphics/Paint;
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V
return-void
.end method
.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Custom ColorFilters not supported"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method