.class public final Lcom/google/android/gms/internal/gw;
.super Landroid/widget/ImageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gw$a;
    }
.end annotation


# instance fields
.field private FL:Landroid/net/Uri;

.field private FM:I

.field private FN:I

.field private FO:Lcom/google/android/gms/internal/gw$a;


# virtual methods
.method public al(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/gw;->FM:I

    return-void
.end method

.method public f(Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/gw;->FL:Landroid/net/Uri;

    return-void
.end method

.method public fd()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/gw;->FM:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->FO:Lcom/google/android/gms/internal/gw$a;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->FO:Lcom/google/android/gms/internal/gw$a;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gw;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gw;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/gw$a;->d(II)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_15
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/google/android/gms/internal/gw;->FN:I

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/google/android/gms/internal/gw;->FN:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_21
    return-void
.end method
