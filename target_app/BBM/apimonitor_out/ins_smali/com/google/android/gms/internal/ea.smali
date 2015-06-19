.class public final Lcom/google/android/gms/internal/ea;
.super Landroid/graphics/drawable/Drawable;
.implements Landroid/graphics/drawable/Drawable$Callback;
.field private AO:Z
.field private AS:I
.field private AT:J
.field private AU:I
.field private AV:I
.field private AW:I
.field private AX:I
.field private AY:I
.field private AZ:Z
.field private Ba:Lcom/google/android/gms/internal/ea$b;
.field private Bb:Landroid/graphics/drawable/Drawable;
.field private Bc:Landroid/graphics/drawable/Drawable;
.field private Bd:Z
.field private Be:Z
.field private Bf:Z
.field private Bg:I
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
.registers 6
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ea;-><init>(Lcom/google/android/gms/internal/ea$b;)V
if-nez p1, :cond_a
invoke-static {}, Lcom/google/android/gms/internal/ea$a;->dP()Lcom/google/android/gms/internal/ea$a;
move-result-object p1
:cond_a
iput-object p1, p0, Lcom/google/android/gms/internal/ea;->Bb:Landroid/graphics/drawable/Drawable;
invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
iget-object v0, p0, Lcom/google/android/gms/internal/ea;->Ba:Lcom/google/android/gms/internal/ea$b;
iget v1, v0, Lcom/google/android/gms/internal/ea$b;->Bk:I
invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I
move-result v2
or-int/2addr v1, v2
iput v1, v0, Lcom/google/android/gms/internal/ea$b;->Bk:I
if-nez p2, :cond_20
invoke-static {}, Lcom/google/android/gms/internal/ea$a;->dP()Lcom/google/android/gms/internal/ea$a;
move-result-object p2
:cond_20
iput-object p2, p0, Lcom/google/android/gms/internal/ea;->Bc:Landroid/graphics/drawable/Drawable;
invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
iget-object v0, p0, Lcom/google/android/gms/internal/ea;->Ba:Lcom/google/android/gms/internal/ea$b;
iget v1, v0, Lcom/google/android/gms/internal/ea$b;->Bk:I
invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I
move-result v2
or-int/2addr v1, v2
iput v1, v0, Lcom/google/android/gms/internal/ea$b;->Bk:I
return-void
.end method
.method constructor <init>(Lcom/google/android/gms/internal/ea$b;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V
iput v1, p0, Lcom/google/android/gms/internal/ea;->AS:I
const/16 v0, 0xff
iput v0, p0, Lcom/google/android/gms/internal/ea;->AW:I
iput v1, p0, Lcom/google/android/gms/internal/ea;->AY:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/internal/ea;->AO:Z
new-instance v0, Lcom/google/android/gms/internal/ea$b;
invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ea$b;-><init>(Lcom/google/android/gms/internal/ea$b;)V
iput-object v0, p0, Lcom/google/android/gms/internal/ea;->Ba:Lcom/google/android/gms/internal/ea$b;
return-void
.end method
.method public final canConstantState()Z
.registers 3
const/4 v1, 0x1
iget-boolean v0, p0, Lcom/google/android/gms/internal/ea;->Bd:Z
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/google/android/gms/internal/ea;->Bb:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
move-result-object v0
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/google/android/gms/internal/ea;->Bc:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
move-result-object v0
if-eqz v0, :cond_1d
move v0, v1
:goto_16
iput-boolean v0, p0, Lcom/google/android/gms/internal/ea;->Be:Z
iput-boolean v1, p0, Lcom/google/android/gms/internal/ea;->Bd:Z
:cond_1a
iget-boolean v0, p0, Lcom/google/android/gms/internal/ea;->Be:Z
return v0
:cond_1d
const/4 v0, 0x0
goto :goto_16
.end method
.method public final dO()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ea;->Bc:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method public final draw(Landroid/graphics/Canvas;)V
.registers 9
const/4 v1, 0x1
const/high16 v6, 0x3f80
const/4 v0, 0x0
iget v2, p0, Lcom/google/android/gms/internal/ea;->AS:I
packed-switch v2, :pswitch_data_86
:goto_9
:cond_9
move v0, v1
:goto_a
iget v1, p0, Lcom/google/android/gms/internal/ea;->AY:I
iget-boolean v2, p0, Lcom/google/android/gms/internal/ea;->AO:Z
iget-object v3, p0, Lcom/google/android/gms/internal/ea;->Bb:Landroid/graphics/drawable/Drawable;
iget-object v4, p0, Lcom/google/android/gms/internal/ea;->Bc:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_63
if-eqz v2, :cond_18
if-nez v1, :cond_1b
:cond_18
invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
:cond_1b
iget v0, p0, Lcom/google/android/gms/internal/ea;->AW:I
if-ne v1, v0, :cond_27
iget v0, p0, Lcom/google/android/gms/internal/ea;->AW:I
invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
:goto_27
:cond_27
return-void
:pswitch_28
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v1
iput-wide v1, p0, Lcom/google/android/gms/internal/ea;->AT:J
const/4 v1, 0x2
iput v1, p0, Lcom/google/android/gms/internal/ea;->AS:I
goto :goto_a
:pswitch_32
iget-wide v2, p0, Lcom/google/android/gms/internal/ea;->AT:J
const-wide/16 v4, 0x0
cmp-long v2, v2, v4
if-ltz v2, :cond_9
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v2
iget-wide v4, p0, Lcom/google/android/gms/internal/ea;->AT:J
sub-long/2addr v2, v4
long-to-float v2, v2
iget v3, p0, Lcom/google/android/gms/internal/ea;->AX:I
int-to-float v3, v3
div-float/2addr v2, v3
cmpl-float v3, v2, v6
if-ltz v3, :cond_61
:goto_4a
if-eqz v1, :cond_4e
iput v0, p0, Lcom/google/android/gms/internal/ea;->AS:I
:cond_4e
invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F
move-result v0
iget v2, p0, Lcom/google/android/gms/internal/ea;->AU:I
int-to-float v2, v2
iget v3, p0, Lcom/google/android/gms/internal/ea;->AV:I
iget v4, p0, Lcom/google/android/gms/internal/ea;->AU:I
sub-int/2addr v3, v4
int-to-float v3, v3
mul-float/2addr v0, v3
add-float/2addr v0, v2
float-to-int v0, v0
iput v0, p0, Lcom/google/android/gms/internal/ea;->AY:I
goto :goto_9
:cond_61
move v1, v0
goto :goto_4a
:cond_63
if-eqz v2, :cond_6b
iget v0, p0, Lcom/google/android/gms/internal/ea;->AW:I
sub-int/2addr v0, v1
invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
:cond_6b
invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
if-eqz v2, :cond_75
iget v0, p0, Lcom/google/android/gms/internal/ea;->AW:I
invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
:cond_75
if-lez v1, :cond_82
invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
iget v0, p0, Lcom/google/android/gms/internal/ea;->AW:I
invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
:cond_82
invoke-virtual {p0}, Lcom/google/android/gms/internal/ea;->invalidateSelf()V
goto :goto_27
:pswitch_data_86
.packed-switch 0x1
:pswitch_28
:pswitch_32
.end packed-switch
.end method
.method public final getChangingConfigurations()I
.registers 3
invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I
move-result v0
iget-object v1, p0, Lcom/google/android/gms/internal/ea;->Ba:Lcom/google/android/gms/internal/ea$b;
iget v1, v1, Lcom/google/android/gms/internal/ea$b;->Bj:I
or-int/2addr v0, v1
iget-object v1, p0, Lcom/google/android/gms/internal/ea;->Ba:Lcom/google/android/gms/internal/ea$b;
iget v1, v1, Lcom/google/android/gms/internal/ea$b;->Bk:I
or-int/2addr v0, v1
return v0
.end method
.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/internal/ea;->canConstantState()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/google/android/gms/internal/ea;->Ba:Lcom/google/android/gms/internal/ea$b;
invoke-virtual {p0}, Lcom/google/android/gms/internal/ea;->getChangingConfigurations()I
move-result v1
iput v1, v0, Lcom/google/android/gms/internal/ea$b;->Bj:I
iget-object v0, p0, Lcom/google/android/gms/internal/ea;->Ba:Lcom/google/android/gms/internal/ea$b;
:goto_10
return-object v0
:cond_11
const/4 v0, 0x0
goto :goto_10
.end method
.method public final getIntrinsicHeight()I
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ea;->Bb:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v0
iget-object v1, p0, Lcom/google/android/gms/internal/ea;->Bc:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v0
return v0
.end method
.method public final getIntrinsicWidth()I
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ea;->Bb:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v0
iget-object v1, p0, Lcom/google/android/gms/internal/ea;->Bc:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v0
return v0
.end method
.method public final getOpacity()I
.registers 3
iget-boolean v0, p0, Lcom/google/android/gms/internal/ea;->Bf:Z
if-nez v0, :cond_19
iget-object v0, p0, Lcom/google/android/gms/internal/ea;->Bb:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I
move-result v0
iget-object v1, p0, Lcom/google/android/gms/internal/ea;->Bc:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I
move-result v1
invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/ea;->Bg:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/internal/ea;->Bf:Z
:cond_19
iget v0, p0, Lcom/google/android/gms/internal/ea;->Bg:I
return v0
.end method
.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
invoke-static {}, Lcom/google/android/gms/internal/fr;->eJ()Z
move-result v0
if-eqz v0, :cond_f
invoke-virtual {p0}, Lcom/google/android/gms/internal/ea;->getCallback()Landroid/graphics/drawable/Drawable$Callback;
move-result-object v0
if-eqz v0, :cond_f
invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_f
return-void
.end method
.method public final mutate()Landroid/graphics/drawable/Drawable;
.registers 3
iget-boolean v0, p0, Lcom/google/android/gms/internal/ea;->AZ:Z
if-nez v0, :cond_25
invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-ne v0, p0, :cond_25
invoke-virtual {p0}, Lcom/google/android/gms/internal/ea;->canConstantState()Z
move-result v0
if-nez v0, :cond_18
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
iget-object v0, p0, Lcom/google/android/gms/internal/ea;->Bb:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
iget-object v0, p0, Lcom/google/android/gms/internal/ea;->Bc:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/internal/ea;->AZ:Z
:cond_25
return-object p0
.end method
.method protected final onBoundsChange(Landroid/graphics/Rect;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ea;->Bb:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
iget-object v0, p0, Lcom/google/android/gms/internal/ea;->Bc:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
return-void
.end method
.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
.registers 6
invoke-static {}, Lcom/google/android/gms/internal/fr;->eJ()Z
move-result v0
if-eqz v0, :cond_f
invoke-virtual {p0}, Lcom/google/android/gms/internal/ea;->getCallback()Landroid/graphics/drawable/Drawable$Callback;
move-result-object v0
if-eqz v0, :cond_f
invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
:cond_f
return-void
.end method
.method public final setAlpha(I)V
.registers 4
iget v0, p0, Lcom/google/android/gms/internal/ea;->AY:I
iget v1, p0, Lcom/google/android/gms/internal/ea;->AW:I
if-ne v0, v1, :cond_8
iput p1, p0, Lcom/google/android/gms/internal/ea;->AY:I
:cond_8
iput p1, p0, Lcom/google/android/gms/internal/ea;->AW:I
invoke-virtual {p0}, Lcom/google/android/gms/internal/ea;->invalidateSelf()V
return-void
.end method
.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ea;->Bb:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
iget-object v0, p0, Lcom/google/android/gms/internal/ea;->Bc:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
return-void
.end method
.method public final startTransition(I)V
.registers 4
const/4 v1, 0x0
iput v1, p0, Lcom/google/android/gms/internal/ea;->AU:I
iget v0, p0, Lcom/google/android/gms/internal/ea;->AW:I
iput v0, p0, Lcom/google/android/gms/internal/ea;->AV:I
iput v1, p0, Lcom/google/android/gms/internal/ea;->AY:I
iput p1, p0, Lcom/google/android/gms/internal/ea;->AX:I
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/ea;->AS:I
invoke-virtual {p0}, Lcom/google/android/gms/internal/ea;->invalidateSelf()V
return-void
.end method
.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
.registers 4
invoke-static {}, Lcom/google/android/gms/internal/fr;->eJ()Z
move-result v0
if-eqz v0, :cond_f
invoke-virtual {p0}, Lcom/google/android/gms/internal/ea;->getCallback()Landroid/graphics/drawable/Drawable$Callback;
move-result-object v0
if-eqz v0, :cond_f
invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
:cond_f
return-void
.end method