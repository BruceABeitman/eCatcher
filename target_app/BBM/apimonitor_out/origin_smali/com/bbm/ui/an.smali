.class final Lcom/bbm/ui/an;
.super Lcom/bbm/j/k;
.source "ConferenceHeaderView.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/am;


# direct methods
.method constructor <init>(Lcom/bbm/ui/am;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 12

    const v10, 0x7f0b003c

    const v9, 0x7f0b0010

    iget-object v0, p0, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    invoke-static {v0}, Lcom/bbm/ui/am;->b(Lcom/bbm/ui/am;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    invoke-static {v1}, Lcom/bbm/ui/am;->a(Lcom/bbm/ui/am;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->K(Ljava/lang/String;)Lcom/bbm/d/es;

    move-result-object v0

    iget-object v2, v0, Lcom/bbm/d/es;->r:Ljava/util/List;

    if-eqz v2, :cond_189

    iget-object v0, p0, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    invoke-static {v0}, Lcom/bbm/ui/am;->c(Lcom/bbm/ui/am;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_189

    iget-object v0, p0, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    invoke-static {v0}, Lcom/bbm/ui/am;->d(Lcom/bbm/ui/am;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_189

    iget-object v0, p0, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    invoke-static {v0}, Lcom/bbm/ui/am;->c(Lcom/bbm/ui/am;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    invoke-static {v0}, Lcom/bbm/ui/am;->d(Lcom/bbm/ui/am;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    move v1, v0

    :goto_5a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_189

    iget-object v0, p0, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    invoke-static {v0}, Lcom/bbm/ui/am;->b(Lcom/bbm/ui/am;)Lcom/bbm/d/a;

    move-result-object v3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v3

    new-instance v4, Lcom/bbm/ui/ObservingImageView;

    iget-object v0, p0, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    invoke-static {v0}, Lcom/bbm/ui/am;->e(Lcom/bbm/ui/am;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/bbm/ui/ObservingImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    invoke-static {v5}, Lcom/bbm/ui/am;->e(Lcom/bbm/ui/am;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    invoke-static {v6}, Lcom/bbm/ui/am;->e(Lcom/bbm/ui/am;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0}, Lcom/bbm/ui/ObservingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/bbm/ui/ObservingImageView;->setAdjustViewBounds(Z)V

    iget-object v0, p0, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    invoke-static {v0}, Lcom/bbm/ui/am;->e(Lcom/bbm/ui/am;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v0, p0, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    invoke-static {v0}, Lcom/bbm/ui/am;->b(Lcom/bbm/ui/am;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v6, v3, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    iget-object v7, v3, Lcom/bbm/d/gp;->a:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;

    move-result-object v6

    if-eqz v6, :cond_185

    invoke-interface {v6}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fd;

    iget-boolean v0, v0, Lcom/bbm/d/fd;->a:Z

    if-eqz v0, :cond_185

    invoke-virtual {v4}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    invoke-static {v7}, Lcom/bbm/ui/am;->e(Lcom/bbm/ui/am;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v4}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    invoke-static {v7}, Lcom/bbm/ui/am;->e(Lcom/bbm/ui/am;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v4}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    invoke-static {v7}, Lcom/bbm/ui/am;->e(Lcom/bbm/ui/am;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v4}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    invoke-static {v7}, Lcom/bbm/ui/am;->e(Lcom/bbm/ui/am;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    mul-int/lit8 v8, v5, 0x2

    sub-int/2addr v7, v8

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v4}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    invoke-static {v7}, Lcom/bbm/ui/am;->e(Lcom/bbm/ui/am;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v7, v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :goto_140
    invoke-virtual {v4, v6}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    iget-object v0, p0, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    invoke-static {v0}, Lcom/bbm/ui/am;->d(Lcom/bbm/ui/am;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/bbm/ui/ao;

    invoke-direct {v0, p0, v3}, Lcom/bbm/ui/ao;-><init>(Lcom/bbm/ui/an;Lcom/bbm/d/gp;)V

    invoke-virtual {v4, v0}, Lcom/bbm/ui/ObservingImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    iget-object v0, v0, Lcom/bbm/ui/am;->c:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v3, Lcom/bbm/ui/ap;

    invoke-direct {v3, p0}, Lcom/bbm/ui/ap;-><init>(Lcom/bbm/ui/an;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    invoke-static {v0}, Lcom/bbm/ui/am;->f(Lcom/bbm/ui/am;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v3, Lcom/bbm/ui/aq;

    invoke-direct {v3, p0}, Lcom/bbm/ui/aq;-><init>(Lcom/bbm/ui/an;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_5a

    :cond_185
    invoke-virtual {v4, v5, v5, v5, v5}, Lcom/bbm/ui/ObservingImageView;->setPadding(IIII)V

    goto :goto_140

    :cond_189
    return-void
.end method
