.class public final Lcom/spotify/android/paste/graphics/f;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"
.field private a:Lcom/spotify/android/paste/graphics/SpotifyIcon;
.field private b:F
.field private c:Z
.field private d:I
.field private e:I
.field private f:Landroid/graphics/Paint;
.field private g:Landroid/graphics/Path;
.field private h:Landroid/graphics/Paint;
.field private i:Z
.field private j:Landroid/content/res/ColorStateList;
.field private k:Landroid/graphics/Rect;
.field private l:[F
.field private m:F
.field private n:F
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V
.registers 5
invoke-virtual {p2}, Lcom/spotify/android/paste/graphics/SpotifyIcon;->a()I
move-result v0
int-to-float v0, v0
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v0
int-to-float v0, v0
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;F)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;F)V
.registers 8
const/4 v3, 0x1
invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lcom/spotify/android/paste/graphics/f;->d:I
const/16 v0, 0xff
iput v0, p0, Lcom/spotify/android/paste/graphics/f;->e:I
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/spotify/android/paste/graphics/f;->k:Landroid/graphics/Rect;
new-array v0, v3, [F
iput-object v0, p0, Lcom/spotify/android/paste/graphics/f;->l:[F
iput-object p2, p0, Lcom/spotify/android/paste/graphics/f;->a:Lcom/spotify/android/paste/graphics/SpotifyIcon;
iput p3, p0, Lcom/spotify/android/paste/graphics/f;->b:F
const-string v0, "spoticon.ttf"
invoke-static {p1, v0}, Lcom/spotify/android/paste/graphics/h;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
move-result-object v0
new-instance v1, Landroid/graphics/Paint;
invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V
iput-object v1, p0, Lcom/spotify/android/paste/graphics/f;->f:Landroid/graphics/Paint;
iget-object v1, p0, Lcom/spotify/android/paste/graphics/f;->f:Landroid/graphics/Paint;
iget v2, p0, Lcom/spotify/android/paste/graphics/f;->d:I
invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V
iget-object v1, p0, Lcom/spotify/android/paste/graphics/f;->f:Landroid/graphics/Paint;
invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
iget-object v0, p0, Lcom/spotify/android/paste/graphics/f;->f:Landroid/graphics/Paint;
invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTextSize(F)V
iget-object v0, p0, Lcom/spotify/android/paste/graphics/f;->f:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V
iget-object v0, p0, Lcom/spotify/android/paste/graphics/f;->f:Landroid/graphics/Paint;
invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V
invoke-direct {p0}, Lcom/spotify/android/paste/graphics/f;->b()V
return-void
.end method
.method private b()V
.registers 8
const/4 v4, 0x0
const/4 v3, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/android/paste/graphics/f;->f:Landroid/graphics/Paint;
iget-object v1, p0, Lcom/spotify/android/paste/graphics/f;->a:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-virtual {v1}, Lcom/spotify/android/paste/graphics/SpotifyIcon;->toString()Ljava/lang/String;
move-result-object v1
iget-object v5, p0, Lcom/spotify/android/paste/graphics/f;->k:Landroid/graphics/Rect;
invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
iget-object v0, p0, Lcom/spotify/android/paste/graphics/f;->f:Landroid/graphics/Paint;
iget-object v1, p0, Lcom/spotify/android/paste/graphics/f;->a:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-virtual {v1}, Lcom/spotify/android/paste/graphics/SpotifyIcon;->toString()Ljava/lang/String;
move-result-object v1
iget-object v5, p0, Lcom/spotify/android/paste/graphics/f;->l:[F
invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I
iget-object v0, p0, Lcom/spotify/android/paste/graphics/f;->f:Landroid/graphics/Paint;
invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;
move-result-object v0
iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F
iput v0, p0, Lcom/spotify/android/paste/graphics/f;->n:F
iget-object v0, p0, Lcom/spotify/android/paste/graphics/f;->f:Landroid/graphics/Paint;
invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;
move-result-object v0
iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F
iget v1, p0, Lcom/spotify/android/paste/graphics/f;->n:F
sub-float/2addr v0, v1
iput v0, p0, Lcom/spotify/android/paste/graphics/f;->m:F
iget-boolean v0, p0, Lcom/spotify/android/paste/graphics/f;->c:Z
if-eqz v0, :cond_50
iget-object v0, p0, Lcom/spotify/android/paste/graphics/f;->g:Landroid/graphics/Path;
invoke-virtual {v0}, Landroid/graphics/Path;->reset()V
iget-object v0, p0, Lcom/spotify/android/paste/graphics/f;->f:Landroid/graphics/Paint;
iget-object v1, p0, Lcom/spotify/android/paste/graphics/f;->a:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-virtual {v1}, Lcom/spotify/android/paste/graphics/SpotifyIcon;->toString()Ljava/lang/String;
move-result-object v1
iget-object v6, p0, Lcom/spotify/android/paste/graphics/f;->g:Landroid/graphics/Path;
move v5, v4
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V
iget-object v0, p0, Lcom/spotify/android/paste/graphics/f;->g:Landroid/graphics/Path;
invoke-virtual {v0}, Landroid/graphics/Path;->close()V
:cond_50
return-void
.end method
.method private c()V
.registers 4
iget-object v0, p0, Lcom/spotify/android/paste/graphics/f;->f:Landroid/graphics/Paint;
iget v1, p0, Lcom/spotify/android/paste/graphics/f;->d:I
invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I
move-result v1
iget v2, p0, Lcom/spotify/android/paste/graphics/f;->e:I
mul-int/2addr v1, v2
div-int/lit16 v1, v1, 0xff
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V
return-void
.end method
.method public final a()V
.registers 2
iget-boolean v0, p0, Lcom/spotify/android/paste/graphics/f;->c:Z
if-nez v0, :cond_b
new-instance v0, Landroid/graphics/Path;
invoke-direct {v0}, Landroid/graphics/Path;-><init>()V
iput-object v0, p0, Lcom/spotify/android/paste/graphics/f;->g:Landroid/graphics/Path;
:cond_b
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/android/paste/graphics/f;->c:Z
invoke-direct {p0}, Lcom/spotify/android/paste/graphics/f;->b()V
invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/f;->invalidateSelf()V
return-void
.end method
.method public final a(F)V
.registers 3
iput p1, p0, Lcom/spotify/android/paste/graphics/f;->b:F
iget-object v0, p0, Lcom/spotify/android/paste/graphics/f;->f:Landroid/graphics/Paint;
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V
invoke-direct {p0}, Lcom/spotify/android/paste/graphics/f;->b()V
invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/f;->invalidateSelf()V
return-void
.end method
.method public final a(FFFI)V
.registers 6
iget-object v0, p0, Lcom/spotify/android/paste/graphics/f;->f:Landroid/graphics/Paint;
invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V
invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/f;->invalidateSelf()V
return-void
.end method
.method public final a(I)V
.registers 3
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/android/paste/graphics/f;->j:Landroid/content/res/ColorStateList;
iput p1, p0, Lcom/spotify/android/paste/graphics/f;->d:I
iget-object v0, p0, Lcom/spotify/android/paste/graphics/f;->f:Landroid/graphics/Paint;
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V
invoke-direct {p0}, Lcom/spotify/android/paste/graphics/f;->c()V
invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/f;->invalidateSelf()V
return-void
.end method
.method public final a(Landroid/content/res/ColorStateList;)V
.registers 3
iput-object p1, p0, Lcom/spotify/android/paste/graphics/f;->j:Landroid/content/res/ColorStateList;
invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/f;->getState()[I
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/graphics/f;->onStateChange([I)Z
invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/f;->invalidateSelf()V
return-void
.end method
.method public final a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)V
.registers 2
iput-object p1, p0, Lcom/spotify/android/paste/graphics/f;->a:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0}, Lcom/spotify/android/paste/graphics/f;->b()V
invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/f;->invalidateSelf()V
return-void
.end method
.method public final draw(Landroid/graphics/Canvas;)V
.registers 12
const/4 v2, 0x0
const/high16 v9, 0x4000
const/4 v4, 0x0
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
move-result v7
invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/f;->getBounds()Landroid/graphics/Rect;
move-result-object v0
iget-boolean v1, p0, Lcom/spotify/android/paste/graphics/f;->i:Z
if-eqz v1, :cond_1d
iget-object v1, p0, Lcom/spotify/android/paste/graphics/f;->h:Landroid/graphics/Paint;
const v3, -0xffff01
invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V
iget-object v1, p0, Lcom/spotify/android/paste/graphics/f;->h:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
:cond_1d
invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I
move-result v1
int-to-float v1, v1
invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I
move-result v3
int-to-float v3, v3
invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V
iget v1, p0, Lcom/spotify/android/paste/graphics/f;->n:F
neg-float v1, v1
invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V
iget-object v1, p0, Lcom/spotify/android/paste/graphics/f;->l:[F
aget v1, v1, v2
iget v3, p0, Lcom/spotify/android/paste/graphics/f;->m:F
div-float v5, v1, v3
invoke-virtual {v0}, Landroid/graphics/Rect;->width()I
move-result v6
int-to-float v6, v6
invoke-virtual {v0}, Landroid/graphics/Rect;->height()I
move-result v8
int-to-float v8, v8
div-float/2addr v6, v8
cmpl-float v5, v5, v6
if-lez v5, :cond_79
invoke-virtual {v0}, Landroid/graphics/Rect;->width()I
move-result v0
int-to-float v0, v0
div-float v0, v1, v0
:goto_4e
invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V
neg-float v0, v1
div-float/2addr v0, v9
neg-float v1, v3
div-float/2addr v1, v9
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V
iget-boolean v0, p0, Lcom/spotify/android/paste/graphics/f;->i:Z
if-eqz v0, :cond_6a
iget-object v0, p0, Lcom/spotify/android/paste/graphics/f;->h:Landroid/graphics/Paint;
const/high16 v1, -0x1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/spotify/android/paste/graphics/f;->k:Landroid/graphics/Rect;
iget-object v1, p0, Lcom/spotify/android/paste/graphics/f;->h:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
:cond_6a
iget-boolean v0, p0, Lcom/spotify/android/paste/graphics/f;->c:Z
if-eqz v0, :cond_81
iget-object v0, p0, Lcom/spotify/android/paste/graphics/f;->g:Landroid/graphics/Path;
iget-object v1, p0, Lcom/spotify/android/paste/graphics/f;->f:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
:goto_75
invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V
return-void
:cond_79
invoke-virtual {v0}, Landroid/graphics/Rect;->height()I
move-result v0
int-to-float v0, v0
div-float v0, v3, v0
goto :goto_4e
:cond_81
iget-object v0, p0, Lcom/spotify/android/paste/graphics/f;->a:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-virtual {v0}, Lcom/spotify/android/paste/graphics/SpotifyIcon;->toString()Ljava/lang/String;
move-result-object v1
const/4 v3, 0x1
iget-object v6, p0, Lcom/spotify/android/paste/graphics/f;->f:Landroid/graphics/Paint;
move-object v0, p1
move v5, v4
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
goto :goto_75
.end method
.method public final getIntrinsicHeight()I
.registers 2
iget v0, p0, Lcom/spotify/android/paste/graphics/f;->m:F
float-to-int v0, v0
return v0
.end method
.method public final getIntrinsicWidth()I
.registers 3
iget-object v0, p0, Lcom/spotify/android/paste/graphics/f;->l:[F
const/4 v1, 0x0
aget v0, v0, v1
float-to-int v0, v0
return v0
.end method
.method public final getOpacity()I
.registers 3
iget-object v0, p0, Lcom/spotify/android/paste/graphics/f;->f:Landroid/graphics/Paint;
invoke-virtual {v0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;
move-result-object v1
if-nez v1, :cond_16
invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I
move-result v0
if-nez v0, :cond_10
const/4 v0, -0x2
:goto_f
return v0
:cond_10
const/16 v1, 0xff
if-ne v0, v1, :cond_16
const/4 v0, -0x1
goto :goto_f
:cond_16
const/4 v0, -0x3
goto :goto_f
.end method
.method public final isStateful()Z
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/graphics/f;->j:Landroid/content/res/ColorStateList;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method protected final onStateChange([I)Z
.registers 4
iget-object v0, p0, Lcom/spotify/android/paste/graphics/f;->j:Landroid/content/res/ColorStateList;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget v0, p0, Lcom/spotify/android/paste/graphics/f;->d:I
iget-object v1, p0, Lcom/spotify/android/paste/graphics/f;->j:Landroid/content/res/ColorStateList;
invoke-virtual {v1, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I
move-result v0
iput v0, p0, Lcom/spotify/android/paste/graphics/f;->d:I
iget-object v1, p0, Lcom/spotify/android/paste/graphics/f;->f:Landroid/graphics/Paint;
invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V
invoke-direct {p0}, Lcom/spotify/android/paste/graphics/f;->c()V
invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/f;->invalidateSelf()V
const/4 v0, 0x1
goto :goto_5
.end method
.method public final setAlpha(I)V
.registers 2
iput p1, p0, Lcom/spotify/android/paste/graphics/f;->e:I
invoke-direct {p0}, Lcom/spotify/android/paste/graphics/f;->c()V
invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/f;->invalidateSelf()V
return-void
.end method
.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
.registers 3
iget-object v0, p0, Lcom/spotify/android/paste/graphics/f;->f:Landroid/graphics/Paint;
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/f;->invalidateSelf()V
return-void
.end method