.class public final Lcom/google/android/gms/internal/gi;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Landroid/net/Uri;

.field private b:I

.field private c:I


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/gi;->b:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/gi;->b:I

    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/gi;->a:Landroid/net/Uri;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/google/android/gms/internal/gi;->c:I

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/android/gms/internal/gi;->c:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_c
    return-void
.end method
