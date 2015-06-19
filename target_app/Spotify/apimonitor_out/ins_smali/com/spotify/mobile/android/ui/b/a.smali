.class public final Lcom/spotify/mobile/android/ui/b/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"
.field private static e:Lcom/spotify/mobile/android/util/dg;
.field private final a:Landroid/graphics/Bitmap;
.field private final b:Landroid/graphics/Paint;
.field private final c:Landroid/graphics/BitmapShader;
.field private final d:Landroid/graphics/Matrix;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/ui/b/a$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/ui/b/a$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/ui/b/a;->e:Lcom/spotify/mobile/android/util/dg;
return-void
.end method
.method public constructor <init>(Landroid/graphics/Bitmap;)V
.registers 6
invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/b/a;->d:Landroid/graphics/Matrix;
if-nez p1, :cond_14
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "Bitmap cannot be null."
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
iput-object p1, p0, Lcom/spotify/mobile/android/ui/b/a;->a:Landroid/graphics/Bitmap;
new-instance v0, Landroid/graphics/Paint;
const/4 v1, 0x1
invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/b/a;->b:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/a;->b:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
new-instance v0, Landroid/graphics/BitmapShader;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/b/a;->a:Landroid/graphics/Bitmap;
sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;
sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;
invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/b/a;->c:Landroid/graphics/BitmapShader;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/a;->b:Landroid/graphics/Paint;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/b/a;->c:Landroid/graphics/BitmapShader;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
return-void
.end method
.method public static a()Lcom/spotify/mobile/android/util/dg;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/ui/b/a;->e:Lcom/spotify/mobile/android/util/dg;
return-object v0
.end method
.method public final draw(Landroid/graphics/Canvas;)V
.registers 9
const/4 v6, 0x0
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/b/a;->getBounds()Landroid/graphics/Rect;
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
int-to-float v0, v0
const/high16 v3, 0x4000
div-float/2addr v0, v3
iget-object v3, p0, Lcom/spotify/mobile/android/ui/b/a;->d:Landroid/graphics/Matrix;
invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V
iget-object v3, p0, Lcom/spotify/mobile/android/ui/b/a;->d:Landroid/graphics/Matrix;
neg-float v4, v1
neg-float v5, v2
invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z
iget-object v3, p0, Lcom/spotify/mobile/android/ui/b/a;->c:Landroid/graphics/BitmapShader;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/b/a;->d:Landroid/graphics/Matrix;
invoke-virtual {v3, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/b/a;->b:Landroid/graphics/Paint;
invoke-virtual {p1, v6, v6, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
return-void
.end method
.method public final getIntrinsicHeight()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/a;->a:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v0
return v0
.end method
.method public final getIntrinsicWidth()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/a;->a:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
return v0
.end method
.method public final getOpacity()I
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/a;->b:Landroid/graphics/Paint;
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
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/a;->a:Landroid/graphics/Bitmap;
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
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/a;->b:Landroid/graphics/Paint;
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