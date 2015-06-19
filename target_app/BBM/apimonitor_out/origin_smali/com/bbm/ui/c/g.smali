.class public abstract Lcom/bbm/ui/c/g;
.super Lcom/bbm/ui/ef;
.source "BlockedContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bbm/ui/ef",
        "<TT;TV;>;"
    }
.end annotation


# instance fields
.field protected final c:Landroid/content/Context;

.field final synthetic d:Lcom/bbm/ui/c/a;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/c/a;Landroid/content/Context;Lcom/bbm/j/r;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<TT;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bbm/ui/c/g;->d:Lcom/bbm/ui/c/a;

    invoke-direct {p0, p3}, Lcom/bbm/ui/ef;-><init>(Lcom/bbm/j/r;)V

    iput-object p2, p0, Lcom/bbm/ui/c/g;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ac

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/bbm/ui/c/h;

    invoke-direct {v2, p0}, Lcom/bbm/ui/c/h;-><init>(Lcom/bbm/ui/c/g;)V

    const v0, 0x7f0a0416

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/bbm/ui/c/h;->a:Landroid/widget/TextView;

    const v0, 0x7f0a0417

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/bbm/ui/c/h;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0415

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/SquaredObservingImageView;

    iput-object v0, v2, Lcom/bbm/ui/c/h;->c:Lcom/bbm/ui/SquaredObservingImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method

.method protected final a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/ui/c/g;->d:Lcom/bbm/ui/c/a;

    invoke-virtual {v0}, Lcom/bbm/ui/c/a;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/bbm/ui/c/g;->d:Lcom/bbm/ui/c/a;

    invoke-virtual {v0}, Lcom/bbm/ui/c/a;->isHidden()Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/bbm/ui/c/g;->d:Lcom/bbm/ui/c/a;

    invoke-virtual {v0}, Lcom/bbm/ui/c/a;->isDetached()Z

    move-result v0

    if-nez v0, :cond_60

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/c/h;

    iget-object v1, p0, Lcom/bbm/ui/c/g;->d:Lcom/bbm/ui/c/a;

    invoke-virtual {v1, p2}, Lcom/bbm/ui/c/a;->c(Ljava/lang/Object;)Lcom/bbm/d/a/a;

    move-result-object v2

    instance-of v1, v2, Lcom/bbm/d/gs;

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/bbm/ui/c/g;->d:Lcom/bbm/ui/c/a;

    iget-object v3, v1, Lcom/bbm/ui/c/a;->a:Lcom/bbm/d/a;

    move-object v1, v2

    check-cast v1, Lcom/bbm/d/gs;

    iget-object v1, v1, Lcom/bbm/d/gs;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v1

    iget-object v3, v0, Lcom/bbm/ui/c/h;->a:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/bbm/ui/c/h;->c:Lcom/bbm/ui/SquaredObservingImageView;

    iget-object v4, p0, Lcom/bbm/ui/c/g;->d:Lcom/bbm/ui/c/a;

    iget-object v4, v4, Lcom/bbm/ui/c/a;->a:Lcom/bbm/d/a;

    iget-object v5, v1, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    iget-object v6, v1, Lcom/bbm/d/gp;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bbm/ui/SquaredObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    check-cast v2, Lcom/bbm/d/gs;

    iget-object v2, v2, Lcom/bbm/d/gs;->a:Lcom/bbm/d/gt;

    sget-object v3, Lcom/bbm/d/gt;->b:Lcom/bbm/d/gt;

    if-ne v2, v3, :cond_61

    iget-object v0, v0, Lcom/bbm/ui/c/h;->b:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/bbm/d/b/a;->a(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_60
    :goto_60
    return-void

    :cond_61
    iget-object v0, v0, Lcom/bbm/ui/c/h;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bbm/ui/c/g;->d:Lcom/bbm/ui/c/a;

    invoke-virtual {v1}, Lcom/bbm/ui/c/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/bbm/util/dy;->a(Landroid/content/Context;Lcom/bbm/d/gt;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_60

    :cond_71
    instance-of v1, v2, Lcom/bbm/g/a;

    if-eqz v1, :cond_60

    check-cast v2, Lcom/bbm/g/a;

    iget-object v1, v0, Lcom/bbm/ui/c/h;->a:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/bbm/g/a;->r:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/bbm/ui/c/h;->b:Landroid/widget/TextView;

    const v3, 0x7f0e0139

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v2, Lcom/bbm/g/a;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_96

    iget-object v0, v0, Lcom/bbm/ui/c/h;->c:Lcom/bbm/ui/SquaredObservingImageView;

    iget-object v1, v2, Lcom/bbm/g/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/SquaredObservingImageView;->setObservableImage(Ljava/lang/String;)V

    goto :goto_60

    :cond_96
    iget-object v1, p0, Lcom/bbm/ui/c/g;->d:Lcom/bbm/ui/c/a;

    invoke-virtual {v1}, Lcom/bbm/ui/c/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070007

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    iget-wide v2, v2, Lcom/bbm/g/a;->h:J

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, v0, Lcom/bbm/ui/c/h;->c:Lcom/bbm/ui/SquaredObservingImageView;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/SquaredObservingImageView;->setObservableImage(I)V

    goto :goto_60
.end method
