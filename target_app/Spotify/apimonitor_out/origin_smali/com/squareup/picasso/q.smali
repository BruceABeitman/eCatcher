.class final Lcom/squareup/picasso/q;
.super Lcom/squareup/picasso/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/picasso/a",
        "<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field k:Lcom/squareup/picasso/f;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;Landroid/widget/ImageView;Lcom/squareup/picasso/ab;ZZILandroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/squareup/picasso/f;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Lcom/squareup/picasso/a;-><init>(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;Lcom/squareup/picasso/ab;ZZILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iput-object p9, p0, Lcom/squareup/picasso/q;->k:Lcom/squareup/picasso/f;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/squareup/picasso/q;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget v1, p0, Lcom/squareup/picasso/q;->f:I

    if-eqz v1, :cond_1e

    iget v1, p0, Lcom/squareup/picasso/q;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/squareup/picasso/q;->k:Lcom/squareup/picasso/f;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/squareup/picasso/q;->k:Lcom/squareup/picasso/f;

    invoke-interface {v0}, Lcom/squareup/picasso/f;->b()V

    goto :goto_a

    :cond_1e
    iget-object v1, p0, Lcom/squareup/picasso/q;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/squareup/picasso/q;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_14
.end method

.method public final a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .registers 9

    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Attempted to complete action with no result!\n%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_14
    iget-object v0, p0, Lcom/squareup/picasso/q;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_1f

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iget-object v1, p0, Lcom/squareup/picasso/q;->a:Lcom/squareup/picasso/Picasso;

    iget-object v1, v1, Lcom/squareup/picasso/Picasso;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/squareup/picasso/q;->a:Lcom/squareup/picasso/Picasso;

    iget-boolean v5, v2, Lcom/squareup/picasso/Picasso;->j:Z

    iget-boolean v4, p0, Lcom/squareup/picasso/q;->e:Z

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/squareup/picasso/z;->a(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;ZZ)V

    iget-object v0, p0, Lcom/squareup/picasso/q;->k:Lcom/squareup/picasso/f;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/squareup/picasso/q;->k:Lcom/squareup/picasso/f;

    invoke-interface {v0}, Lcom/squareup/picasso/f;->a()V

    goto :goto_1e
.end method

.method final b()V
    .registers 2

    invoke-super {p0}, Lcom/squareup/picasso/a;->b()V

    iget-object v0, p0, Lcom/squareup/picasso/q;->k:Lcom/squareup/picasso/f;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/picasso/q;->k:Lcom/squareup/picasso/f;

    :cond_a
    return-void
.end method
