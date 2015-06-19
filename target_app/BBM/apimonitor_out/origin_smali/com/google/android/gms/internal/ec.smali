.class public final Lcom/google/android/gms/internal/ec;
.super Landroid/widget/ImageView;


# instance fields
.field private Bl:Landroid/net/Uri;

.field private Bm:I

.field private Bn:I


# virtual methods
.method public final N(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ec;->Bm:I

    return-void
.end method

.method public final d(Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ec;->Bl:Landroid/net/Uri;

    return-void
.end method

.method public final dQ()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ec;->Bm:I

    return v0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/google/android/gms/internal/ec;->Bn:I

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/android/gms/internal/ec;->Bn:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_c
    return-void
.end method
