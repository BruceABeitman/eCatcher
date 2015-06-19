.class public final Lcom/google/android/gms/internal/gu;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gu$1;,
        Lcom/google/android/gms/internal/gu$a;,
        Lcom/google/android/gms/internal/gu$b;
    }
.end annotation


# instance fields
.field private FA:Lcom/google/android/gms/internal/gu$b;

.field private FB:Landroid/graphics/drawable/Drawable;

.field private FC:Landroid/graphics/drawable/Drawable;

.field private FD:Z

.field private FE:Z

.field private FF:Z

.field private FG:I

.field private Fm:Z

.field private Fs:I

.field private Ft:J

.field private Fu:I

.field private Fv:I

.field private Fw:I

.field private Fx:I

.field private Fy:I

.field private Fz:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gu;-><init>(Lcom/google/android/gms/internal/gu$b;)V

    if-nez p1, :cond_a

    invoke-static {}, Lcom/google/android/gms/internal/gu$a;->fc()Lcom/google/android/gms/internal/gu$a;

    move-result-object p1

    :cond_a
    iput-object p1, p0, Lcom/google/android/gms/internal/gu;->FB:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gu;->FA:Lcom/google/android/gms/internal/gu$b;

    iget v1, v0, Lcom/google/android/gms/internal/gu$b;->FK:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/gu$b;->FK:I

    if-nez p2, :cond_20

    invoke-static {}, Lcom/google/android/gms/internal/gu$a;->fc()Lcom/google/android/gms/internal/gu$a;

    move-result-object p2

    :cond_20
    iput-object p2, p0, Lcom/google/android/gms/internal/gu;->FC:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gu;->FA:Lcom/google/android/gms/internal/gu$b;

    iget v1, v0, Lcom/google/android/gms/internal/gu$b;->FK:I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/gu$b;->FK:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/gu$b;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput v1, p0, Lcom/google/android/gms/internal/gu;->Fs:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/gms/internal/gu;->Fw:I

    iput v1, p0, Lcom/google/android/gms/internal/gu;->Fy:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gu;->Fm:Z

    new-instance v0, Lcom/google/android/gms/internal/gu$b;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gu$b;-><init>(Lcom/google/android/gms/internal/gu$b;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gu;->FA:Lcom/google/android/gms/internal/gu$b;

    return-void
.end method


# virtual methods
.method public canConstantState()Z
    .registers 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gu;->FD:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/gu;->FB:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/gu;->FC:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1d

    move v0, v1

    :goto_16
    iput-boolean v0, p0, Lcom/google/android/gms/internal/gu;->FE:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/gu;->FD:Z

    :cond_1a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gu;->FE:Z

    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    const/4 v1, 0x1

    const/high16 v6, 0x3f80

    const/4 v0, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/gu;->Fs:I

    packed-switch v2, :pswitch_data_86

    :cond_9
    :goto_9
    move v0, v1

    :goto_a
    iget v1, p0, Lcom/google/android/gms/internal/gu;->Fy:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/gu;->Fm:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/gu;->FB:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/google/android/gms/internal/gu;->FC:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_63

    if-eqz v2, :cond_18

    if-nez v1, :cond_1b

    :cond_18
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1b
    iget v0, p0, Lcom/google/android/gms/internal/gu;->Fw:I

    if-ne v1, v0, :cond_27

    iget v0, p0, Lcom/google/android/gms/internal/gu;->Fw:I

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_27
    :goto_27
    return-void

    :pswitch_28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/gu;->Ft:J

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/gms/internal/gu;->Fs:I

    goto :goto_a

    :pswitch_32
    iget-wide v2, p0, Lcom/google/android/gms/internal/gu;->Ft:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/gu;->Ft:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/google/android/gms/internal/gu;->Fx:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v3, v2, v6

    if-ltz v3, :cond_61

    :goto_4a
    if-eqz v1, :cond_4e

    iput v0, p0, Lcom/google/android/gms/internal/gu;->Fs:I

    :cond_4e
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/gu;->Fu:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/gms/internal/gu;->Fv:I

    iget v4, p0, Lcom/google/android/gms/internal/gu;->Fu:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/gu;->Fy:I

    goto :goto_9

    :cond_61
    move v1, v0

    goto :goto_4a

    :cond_63
    if-eqz v2, :cond_6b

    iget v0, p0, Lcom/google/android/gms/internal/gu;->Fw:I

    sub-int/2addr v0, v1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_6b
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v2, :cond_75

    iget v0, p0, Lcom/google/android/gms/internal/gu;->Fw:I

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_75
    if-lez v1, :cond_82

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/google/android/gms/internal/gu;->Fw:I

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_82
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gu;->invalidateSelf()V

    goto :goto_27

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_28
        :pswitch_32
    .end packed-switch
.end method

.method public fb()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gu;->FC:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gu;->FA:Lcom/google/android/gms/internal/gu$b;

    iget v1, v1, Lcom/google/android/gms/internal/gu$b;->FJ:I

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/gu;->FA:Lcom/google/android/gms/internal/gu$b;

    iget v1, v1, Lcom/google/android/gms/internal/gu$b;->FK:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gu;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/gu;->FA:Lcom/google/android/gms/internal/gu$b;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gu;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/gu$b;->FJ:I

    iget-object v0, p0, Lcom/google/android/gms/internal/gu;->FA:Lcom/google/android/gms/internal/gu$b;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getIntrinsicHeight()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gu;->FB:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gu;->FC:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gu;->FB:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gu;->FC:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gu;->FF:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/gu;->FB:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gu;->FC:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/gu;->FG:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gu;->FF:Z

    :cond_19
    iget v0, p0, Lcom/google/android/gms/internal/gu;->FG:I

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/iq;->fX()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gu;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gu;->Fz:Z

    if-nez v0, :cond_25

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_25

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gu;->canConstantState()Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/gu;->FB:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/gms/internal/gu;->FC:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gu;->Fz:Z

    :cond_25
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gu;->FB:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gu;->FC:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/internal/iq;->fX()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gu;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_f
    return-void
.end method

.method public setAlpha(I)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/gu;->Fy:I

    iget v1, p0, Lcom/google/android/gms/internal/gu;->Fw:I

    if-ne v0, v1, :cond_8

    iput p1, p0, Lcom/google/android/gms/internal/gu;->Fy:I

    :cond_8
    iput p1, p0, Lcom/google/android/gms/internal/gu;->Fw:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gu;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gu;->FB:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gu;->FC:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public startTransition(I)V
    .registers 4

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/gu;->Fu:I

    iget v0, p0, Lcom/google/android/gms/internal/gu;->Fw:I

    iput v0, p0, Lcom/google/android/gms/internal/gu;->Fv:I

    iput v1, p0, Lcom/google/android/gms/internal/gu;->Fy:I

    iput p1, p0, Lcom/google/android/gms/internal/gu;->Fx:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/gu;->Fs:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gu;->invalidateSelf()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/iq;->fX()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gu;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_f
    return-void
.end method
