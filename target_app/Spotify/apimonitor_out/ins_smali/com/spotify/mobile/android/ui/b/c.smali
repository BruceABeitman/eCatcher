.class public final Lcom/spotify/mobile/android/ui/b/c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"
.implements Landroid/graphics/drawable/Animatable;
.implements Ljava/lang/Runnable;
.field private a:J
.field private b:Landroid/graphics/drawable/Drawable;
.field private c:Landroid/graphics/drawable/Drawable;
.field private d:Landroid/graphics/ColorFilter;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V
return-void
.end method
.method private a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
.registers 11
const/high16 v7, 0x4000
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/b/c;->getBounds()Landroid/graphics/Rect;
move-result-object v1
invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v2
invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v3
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
move-result v4
if-ltz v2, :cond_16
if-gez v3, :cond_21
:cond_16
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/b/c;->getBounds()Landroid/graphics/Rect;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
:goto_20
return-void
:cond_21
int-to-float v0, v2
int-to-float v5, v3
div-float/2addr v0, v5
invoke-virtual {v1}, Landroid/graphics/Rect;->width()I
move-result v5
int-to-float v5, v5
invoke-virtual {v1}, Landroid/graphics/Rect;->height()I
move-result v6
int-to-float v6, v6
div-float/2addr v5, v6
cmpg-float v0, v0, v5
if-gez v0, :cond_5a
invoke-virtual {v1}, Landroid/graphics/Rect;->width()I
move-result v0
int-to-float v0, v0
int-to-float v5, v2
div-float/2addr v0, v5
:goto_3a
invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I
move-result v5
int-to-float v5, v5
invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I
move-result v1
int-to-float v1, v1
invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V
invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V
neg-int v0, v2
int-to-float v0, v0
div-float/2addr v0, v7
neg-int v1, v3
int-to-float v1, v1
div-float/2addr v1, v7
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V
invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V
goto :goto_20
:cond_5a
invoke-virtual {v1}, Landroid/graphics/Rect;->height()I
move-result v0
int-to-float v0, v0
int-to-float v5, v3
div-float/2addr v0, v5
goto :goto_3a
.end method
.method public final a(Landroid/graphics/drawable/Drawable;Z)V
.registers 8
const/16 v4, 0xff
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/b/c;->stop()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/c;->c:Landroid/graphics/drawable/Drawable;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/b/c;->b:Landroid/graphics/drawable/Drawable;
iput-object p1, p0, Lcom/spotify/mobile/android/ui/b/c;->c:Landroid/graphics/drawable/Drawable;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/c;->b:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/c;->b:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
:cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/c;->c:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/c;->c:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/b/c;->c:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/b/c;->c:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v2
invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/c;->c:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/b/c;->d:Landroid/graphics/ColorFilter;
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
:cond_31
if-eqz p2, :cond_37
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/b/c;->start()V
:goto_36
return-void
:cond_37
invoke-virtual {p0, v4}, Lcom/spotify/mobile/android/ui/b/c;->setLevel(I)Z
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/b/c;->invalidateSelf()V
goto :goto_36
.end method
.method public final draw(Landroid/graphics/Canvas;)V
.registers 6
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
move-result v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/b/c;->getLevel()I
move-result v1
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/b/c;->isRunning()Z
move-result v2
if-eqz v2, :cond_22
iget-object v2, p0, Lcom/spotify/mobile/android/ui/b/c;->b:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_22
iget-object v2, p0, Lcom/spotify/mobile/android/ui/b/c;->c:Landroid/graphics/drawable/Drawable;
if-nez v2, :cond_1d
iget-object v2, p0, Lcom/spotify/mobile/android/ui/b/c;->b:Landroid/graphics/drawable/Drawable;
rsub-int v3, v1, 0xff
invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
:cond_1d
iget-object v2, p0, Lcom/spotify/mobile/android/ui/b/c;->b:Landroid/graphics/drawable/Drawable;
invoke-direct {p0, p1, v2}, Lcom/spotify/mobile/android/ui/b/c;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
:cond_22
iget-object v2, p0, Lcom/spotify/mobile/android/ui/b/c;->c:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_30
iget-object v2, p0, Lcom/spotify/mobile/android/ui/b/c;->c:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/b/c;->c:Landroid/graphics/drawable/Drawable;
invoke-direct {p0, p1, v2}, Lcom/spotify/mobile/android/ui/b/c;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
:cond_30
invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
const/16 v0, 0xff
if-ne v1, v0, :cond_3a
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/b/c;->stop()V
:cond_3a
return-void
.end method
.method public final getOpacity()I
.registers 4
const/4 v1, -0x2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/c;->b:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/c;->b:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I
move-result v0
:goto_b
iget-object v2, p0, Lcom/spotify/mobile/android/ui/b/c;->c:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_15
iget-object v1, p0, Lcom/spotify/mobile/android/ui/b/c;->c:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I
move-result v1
:cond_15
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/b/c;->resolveOpacity(II)I
move-result v0
return v0
:cond_1a
move v0, v1
goto :goto_b
.end method
.method public final isRunning()Z
.registers 5
iget-wide v0, p0, Lcom/spotify/mobile/android/ui/b/c;->a:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method protected final onLevelChange(I)Z
.registers 3
const/4 v0, 0x1
return v0
.end method
.method public final run()V
.registers 9
const-wide/16 v6, 0x1f4
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/spotify/mobile/android/ui/b/c;->a:J
sub-long v2, v0, v2
invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J
move-result-wide v2
const-wide/16 v4, 0xff
mul-long/2addr v2, v4
div-long/2addr v2, v6
long-to-int v2, v2
invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/ui/b/c;->setLevel(I)Z
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/b/c;->invalidateSelf()V
const-wide/16 v2, 0x10
add-long/2addr v0, v2
invoke-virtual {p0, p0, v0, v1}, Lcom/spotify/mobile/android/ui/b/c;->scheduleSelf(Ljava/lang/Runnable;J)V
return-void
.end method
.method public final setAlpha(I)V
.registers 2
return-void
.end method
.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/ui/b/c;->d:Landroid/graphics/ColorFilter;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/c;->b:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/c;->b:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
:cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/c;->c:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/c;->c:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
:cond_14
return-void
.end method
.method public final setVisible(ZZ)Z
.registers 6
invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
move-result v0
if-eqz p1, :cond_16
if-nez v0, :cond_a
if-eqz p2, :cond_15
:cond_a
const-wide/16 v1, 0x0
iput-wide v1, p0, Lcom/spotify/mobile/android/ui/b/c;->a:J
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v1
invoke-virtual {p0, p0, v1, v2}, Lcom/spotify/mobile/android/ui/b/c;->scheduleSelf(Ljava/lang/Runnable;J)V
:goto_15
:cond_15
return v0
:cond_16
invoke-virtual {p0, p0}, Lcom/spotify/mobile/android/ui/b/c;->unscheduleSelf(Ljava/lang/Runnable;)V
goto :goto_15
.end method
.method public final start()V
.registers 3
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/b/c;->isRunning()Z
move-result v0
if-nez v0, :cond_1c
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/spotify/mobile/android/ui/b/c;->a:J
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/c;->b:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/ui/b/c;->b:Landroid/graphics/drawable/Drawable;
const/16 v1, 0xff
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
:cond_17
iget-wide v0, p0, Lcom/spotify/mobile/android/ui/b/c;->a:J
invoke-virtual {p0, p0, v0, v1}, Lcom/spotify/mobile/android/ui/b/c;->scheduleSelf(Ljava/lang/Runnable;J)V
:cond_1c
return-void
.end method
.method public final stop()V
.registers 3
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/b/c;->isRunning()Z
move-result v0
if-eqz v0, :cond_d
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/spotify/mobile/android/ui/b/c;->a:J
invoke-virtual {p0, p0}, Lcom/spotify/mobile/android/ui/b/c;->unscheduleSelf(Ljava/lang/Runnable;)V
:cond_d
return-void
.end method