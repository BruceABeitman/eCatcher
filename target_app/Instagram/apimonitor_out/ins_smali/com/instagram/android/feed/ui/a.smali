.class public Lcom/instagram/android/feed/ui/a;
.super Landroid/graphics/drawable/Drawable;
.source "BoundedDrawable.java"
.implements Landroid/graphics/drawable/Drawable$Callback;
.field protected a:Lcom/instagram/android/feed/ui/b;
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, v0, v0}, Lcom/instagram/android/feed/ui/a;-><init>(Lcom/instagram/android/feed/ui/b;Landroid/content/res/Resources;)V
iget-object v0, p0, Lcom/instagram/android/feed/ui/a;->a:Lcom/instagram/android/feed/ui/b;
iput-object p1, v0, Lcom/instagram/android/feed/ui/b;->a:Landroid/graphics/drawable/Drawable;
if-eqz p1, :cond_d
invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
:cond_d
return-void
.end method
.method private constructor <init>(Lcom/instagram/android/feed/ui/b;Landroid/content/res/Resources;)V
.registers 4
invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V
new-instance v0, Lcom/instagram/android/feed/ui/b;
invoke-direct {v0, p1, p0, p2}, Lcom/instagram/android/feed/ui/b;-><init>(Lcom/instagram/android/feed/ui/b;Lcom/instagram/android/feed/ui/a;Landroid/content/res/Resources;)V
iput-object v0, p0, Lcom/instagram/android/feed/ui/a;->a:Lcom/instagram/android/feed/ui/b;
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/feed/ui/b;Landroid/content/res/Resources;B)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/instagram/android/feed/ui/a;-><init>(Lcom/instagram/android/feed/ui/b;Landroid/content/res/Resources;)V
return-void
.end method
.method protected a()V
.registers 10
invoke-virtual {p0}, Lcom/instagram/android/feed/ui/a;->getBounds()Landroid/graphics/Rect;
move-result-object v2
iget-object v0, p0, Lcom/instagram/android/feed/ui/a;->a:Lcom/instagram/android/feed/ui/b;
iget-object v0, v0, Lcom/instagram/android/feed/ui/b;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I
move-result v0
invoke-virtual {v2}, Landroid/graphics/Rect;->width()I
move-result v1
mul-int/2addr v0, v1
int-to-double v0, v0
const-wide v3, 0x40c3880000000000L
div-double/2addr v0, v3
double-to-int v1, v0
iget-object v0, p0, Lcom/instagram/android/feed/ui/a;->a:Lcom/instagram/android/feed/ui/b;
iget-object v0, v0, Lcom/instagram/android/feed/ui/b;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v0
int-to-double v3, v1
int-to-double v5, v0
const-wide/high16 v7, 0x4000
div-double/2addr v5, v7
cmpg-double v3, v3, v5
if-gez v3, :cond_3c
const/4 v0, 0x0
:cond_2b
:goto_2b
iget-object v1, p0, Lcom/instagram/android/feed/ui/a;->a:Lcom/instagram/android/feed/ui/b;
iget-object v1, v1, Lcom/instagram/android/feed/ui/b;->a:Landroid/graphics/drawable/Drawable;
iget v3, v2, Landroid/graphics/Rect;->left:I
iget v4, v2, Landroid/graphics/Rect;->top:I
iget v5, v2, Landroid/graphics/Rect;->left:I
add-int/2addr v0, v5
iget v2, v2, Landroid/graphics/Rect;->bottom:I
invoke-virtual {v1, v3, v4, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
return-void
:cond_3c
if-lt v1, v0, :cond_2b
move v0, v1
goto :goto_2b
.end method
.method public draw(Landroid/graphics/Canvas;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/ui/a;->a:Lcom/instagram/android/feed/ui/b;
iget-object v0, v0, Lcom/instagram/android/feed/ui/b;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I
move-result v0
if-nez v0, :cond_b
:goto_a
return-void
:cond_b
iget-object v0, p0, Lcom/instagram/android/feed/ui/a;->a:Lcom/instagram/android/feed/ui/b;
iget-object v0, v0, Lcom/instagram/android/feed/ui/b;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
goto :goto_a
.end method
.method public getChangingConfigurations()I
.registers 3
invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I
move-result v0
iget-object v1, p0, Lcom/instagram/android/feed/ui/a;->a:Lcom/instagram/android/feed/ui/b;
iget v1, v1, Lcom/instagram/android/feed/ui/b;->b:I
or-int/2addr v0, v1
iget-object v1, p0, Lcom/instagram/android/feed/ui/a;->a:Lcom/instagram/android/feed/ui/b;
iget-object v1, v1, Lcom/instagram/android/feed/ui/b;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I
move-result v1
or-int/2addr v0, v1
return v0
.end method
.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/ui/a;->a:Lcom/instagram/android/feed/ui/b;
invoke-virtual {v0}, Lcom/instagram/android/feed/ui/b;->a()Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/instagram/android/feed/ui/a;->a:Lcom/instagram/android/feed/ui/b;
invoke-virtual {p0}, Lcom/instagram/android/feed/ui/a;->getChangingConfigurations()I
move-result v1
iput v1, v0, Lcom/instagram/android/feed/ui/b;->b:I
iget-object v0, p0, Lcom/instagram/android/feed/ui/a;->a:Lcom/instagram/android/feed/ui/b;
:goto_12
return-object v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method
.method public getIntrinsicHeight()I
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/ui/a;->a:Lcom/instagram/android/feed/ui/b;
iget-object v0, v0, Lcom/instagram/android/feed/ui/b;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v0
return v0
.end method
.method public getIntrinsicWidth()I
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/ui/a;->a:Lcom/instagram/android/feed/ui/b;
iget-object v0, v0, Lcom/instagram/android/feed/ui/b;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v0
return v0
.end method
.method public getOpacity()I
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/ui/a;->a:Lcom/instagram/android/feed/ui/b;
iget-object v0, v0, Lcom/instagram/android/feed/ui/b;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I
move-result v0
return v0
.end method
.method public getPadding(Landroid/graphics/Rect;)Z
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/ui/a;->a:Lcom/instagram/android/feed/ui/b;
iget-object v0, v0, Lcom/instagram/android/feed/ui/b;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
move-result v0
return v0
.end method
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/feed/ui/a;->getCallback()Landroid/graphics/drawable/Drawable$Callback;
move-result-object v0
if-eqz v0, :cond_9
invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_9
return-void
.end method
.method public isStateful()Z
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/ui/a;->a:Lcom/instagram/android/feed/ui/b;
iget-object v0, v0, Lcom/instagram/android/feed/ui/b;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z
move-result v0
return v0
.end method
.method protected onBoundsChange(Landroid/graphics/Rect;)V
.registers 2
invoke-virtual {p0}, Lcom/instagram/android/feed/ui/a;->a()V
return-void
.end method
.method protected onLevelChange(I)Z
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/ui/a;->a:Lcom/instagram/android/feed/ui/b;
iget-object v0, v0, Lcom/instagram/android/feed/ui/b;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
invoke-virtual {p0}, Lcom/instagram/android/feed/ui/a;->a()V
invoke-virtual {p0}, Lcom/instagram/android/feed/ui/a;->invalidateSelf()V
const/4 v0, 0x1
return v0
.end method
.method protected onStateChange([I)Z
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/ui/a;->a:Lcom/instagram/android/feed/ui/b;
iget-object v0, v0, Lcom/instagram/android/feed/ui/b;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z
move-result v0
return v0
.end method
.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
.registers 6
invoke-virtual {p0}, Lcom/instagram/android/feed/ui/a;->getCallback()Landroid/graphics/drawable/Drawable$Callback;
move-result-object v0
if-eqz v0, :cond_9
invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
:cond_9
return-void
.end method
.method public setAlpha(I)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/ui/a;->a:Lcom/instagram/android/feed/ui/b;
iget-object v0, v0, Lcom/instagram/android/feed/ui/b;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
return-void
.end method
.method public setColorFilter(Landroid/graphics/ColorFilter;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/ui/a;->a:Lcom/instagram/android/feed/ui/b;
iget-object v0, v0, Lcom/instagram/android/feed/ui/b;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
return-void
.end method
.method public setVisible(ZZ)Z
.registers 4
iget-object v0, p0, Lcom/instagram/android/feed/ui/a;->a:Lcom/instagram/android/feed/ui/b;
iget-object v0, v0, Lcom/instagram/android/feed/ui/b;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
move-result v0
return v0
.end method
.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
.registers 4
invoke-virtual {p0}, Lcom/instagram/android/feed/ui/a;->getCallback()Landroid/graphics/drawable/Drawable$Callback;
move-result-object v0
if-eqz v0, :cond_9
invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
:cond_9
return-void
.end method