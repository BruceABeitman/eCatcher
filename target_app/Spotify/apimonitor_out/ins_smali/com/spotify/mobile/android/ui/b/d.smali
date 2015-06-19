.class public final Lcom/spotify/mobile/android/ui/b/d;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"
.field private final a:Landroid/graphics/drawable/Drawable;
.field private final b:F
.field private final c:I
.method public constructor <init>(Landroid/graphics/drawable/Drawable;F)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/ui/b/d;-><init>(Landroid/graphics/drawable/Drawable;FI)V
return-void
.end method
.method public constructor <init>(Landroid/graphics/drawable/Drawable;FI)V
.registers 8
const/4 v3, 0x0
invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/ui/b/d;->a:Landroid/graphics/drawable/Drawable;
iput p2, p0, Lcom/spotify/mobile/android/ui/b/d;->b:F
iput p3, p0, Lcom/spotify/mobile/android/ui/b/d;->c:I
invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v0
if-ltz v0, :cond_16
invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v0
if-gez v0, :cond_1e
:cond_16
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "drawable must have an intrinsic size"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1e
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/d;->a:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/b/d;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/b/d;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v2
invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
return-void
.end method
.method public final draw(Landroid/graphics/Canvas;)V
.registers 9
const/high16 v6, 0x4000
iget v0, p0, Lcom/spotify/mobile/android/ui/b/d;->c:I
if-eqz v0, :cond_b
iget v0, p0, Lcom/spotify/mobile/android/ui/b/d;->c:I
invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V
:cond_b
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/b/d;->getBounds()Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/b/d;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v1
int-to-float v1, v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/b/d;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v2
int-to-float v2, v2
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
move-result v3
invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F
move-result v4
invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F
move-result v5
invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V
invoke-virtual {v0}, Landroid/graphics/Rect;->width()I
move-result v4
invoke-virtual {v0}, Landroid/graphics/Rect;->height()I
move-result v0
invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I
move-result v0
int-to-float v0, v0
invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F
move-result v4
div-float v5, v0, v4
div-float/2addr v0, v4
invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->scale(FF)V
iget v0, p0, Lcom/spotify/mobile/android/ui/b/d;->b:F
iget v4, p0, Lcom/spotify/mobile/android/ui/b/d;->b:F
invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->scale(FF)V
neg-float v0, v1
div-float/2addr v0, v6
neg-float v1, v2
div-float/2addr v1, v6
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/d;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V
return-void
.end method
.method public final getIntrinsicHeight()I
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/d;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v0
int-to-float v0, v0
iget v1, p0, Lcom/spotify/mobile/android/ui/b/d;->b:F
div-float/2addr v0, v1
float-to-int v0, v0
return v0
.end method
.method public final getIntrinsicWidth()I
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/d;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v0
int-to-float v0, v0
iget v1, p0, Lcom/spotify/mobile/android/ui/b/d;->b:F
div-float/2addr v0, v1
float-to-int v0, v0
return v0
.end method
.method public final getMinimumHeight()I
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/d;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I
move-result v0
int-to-float v0, v0
iget v1, p0, Lcom/spotify/mobile/android/ui/b/d;->b:F
div-float/2addr v0, v1
float-to-int v0, v0
return v0
.end method
.method public final getMinimumWidth()I
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/d;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I
move-result v0
int-to-float v0, v0
iget v1, p0, Lcom/spotify/mobile/android/ui/b/d;->b:F
div-float/2addr v0, v1
float-to-int v0, v0
return v0
.end method
.method public final getOpacity()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/d;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I
move-result v0
return v0
.end method
.method public final getState()[I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/d;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I
move-result-object v0
return-object v0
.end method
.method public final isStateful()Z
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/d;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z
move-result v0
return v0
.end method
.method public final jumpToCurrentState()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/d;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V
return-void
.end method
.method protected final onLevelChange(I)Z
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/d;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
move-result v0
return v0
.end method
.method protected final onStateChange([I)Z
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/d;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z
move-result v0
return v0
.end method
.method public final setAlpha(I)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/d;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
return-void
.end method
.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/d;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
return-void
.end method
.method public final setState([I)Z
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/d;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z
move-result v0
return v0
.end method