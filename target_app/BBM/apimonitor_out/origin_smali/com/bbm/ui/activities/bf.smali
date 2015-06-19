.class final Lcom/bbm/ui/activities/bf;
.super Lcom/bbm/j/k;
.source "CaptureBarcodeActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->d(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->l(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    iget-object v1, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->k(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->m(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/ui/ObservingImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->l(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/d;

    move-result-object v2

    iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    invoke-virtual {v2, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/gp;)Lcom/bbm/j/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->n(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->l(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/d;

    move-result-object v2

    iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    invoke-virtual {v2}, Lcom/bbm/d/a;->j()Lcom/bbm/d/gp;

    move-result-object v2

    iget-object v2, v2, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a

    iget-object v0, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->o(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    iget-object v2, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->l(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/d;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bbm/d/b/a;->a(Landroid/content/Context;Lcom/bbm/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_69
    :goto_69
    return-void

    :cond_6a
    iget-object v1, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->o(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v2, v0}, Lcom/bbm/d/b/a;->a(Landroid/content/Context;Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_69

    :cond_7a
    iget-object v0, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->f(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Z

    move-result v0

    if-eqz v0, :cond_fb

    iget-object v0, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->b(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;

    move-result-object v0

    iget-object v1, v0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v1, v2, :cond_69

    iget-object v1, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->m(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/ui/ObservingImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->b(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/d/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/ec;)Lcom/bbm/j/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->n(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, v0, Lcom/bbm/d/ec;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->b(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->p(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->Q(Ljava/lang/String;)Lcom/bbm/d/em;

    move-result-object v0

    iget-object v1, v0, Lcom/bbm/d/em;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f8

    const-string v0, "0"

    :goto_d0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->o(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-virtual {v2}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0001

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_69

    :cond_f8
    iget-object v0, v0, Lcom/bbm/d/em;->h:Ljava/lang/String;

    goto :goto_d0

    :cond_fb
    iget-object v0, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->q(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->r(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/g/am;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->g(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v0, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->r(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/g/am;

    move-result-object v0

    iget-object v2, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    iget-object v2, v2, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;

    move-result-object v2

    iget-object v0, v2, Lcom/bbm/g/a;->w:Lcom/bbm/util/bh;

    sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v0, v3, :cond_69

    const/4 v0, 0x0

    iget-object v3, v2, Lcom/bbm/g/a;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13e

    iget-object v0, v2, Lcom/bbm/g/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_13e
    if-nez v0, :cond_157

    iget-object v0, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070007

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    iget-wide v4, v2, Lcom/bbm/g/a;->h:J

    long-to-int v0, v4

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_157
    iget-object v3, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->m(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/ui/ObservingImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bbm/ui/ObservingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->n(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v2, Lcom/bbm/g/a;->r:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->o(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/bbm/ui/activities/bf;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-virtual {v2}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0002

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_69
.end method
