.class final Lcom/bbm/ui/c/eb;
.super Lcom/bbm/ui/gk;
.source "MyChannelsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/ui/gk",
        "<",
        "Lcom/bbm/d/ec;",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/bbm/ui/c/du;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/du;Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;)V
    .registers 5

    iput-object p1, p0, Lcom/bbm/ui/c/eb;->f:Lcom/bbm/ui/c/du;

    invoke-direct {p0, p2, p3, p4}, Lcom/bbm/ui/gk;-><init>(Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;)V

    return-void
.end method


# virtual methods
.method protected final a()Landroid/view/View;
    .registers 5

    new-instance v0, Lcom/bbm/ui/ListHeaderView;

    iget-object v1, p0, Lcom/bbm/ui/c/eb;->f:Lcom/bbm/ui/c/du;

    invoke-static {v1}, Lcom/bbm/ui/c/du;->b(Lcom/bbm/ui/c/du;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/ui/ListHeaderView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ListHeaderView;->setRightLabelViewVisibility(I)V

    const v1, 0x7f0a05c0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ListHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/c/eb;->f:Lcom/bbm/ui/c/du;

    invoke-virtual {v2}, Lcom/bbm/ui/c/du;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09012e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v0
.end method

.method protected final a(Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 8

    const v3, 0x7f0a011b

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/bbm/ui/c/eb;->f:Lcom/bbm/ui/c/du;

    invoke-static {v0}, Lcom/bbm/ui/c/du;->b(Lcom/bbm/ui/c/du;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d1

    invoke-virtual {v0, v1, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/bbm/ui/c/eb;->f:Lcom/bbm/ui/c/du;

    invoke-static {v2}, Lcom/bbm/ui/c/du;->c(Lcom/bbm/ui/c/du;)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/bbm/ui/c/eb;->f:Lcom/bbm/ui/c/du;

    invoke-static {v2}, Lcom/bbm/ui/c/du;->d(Lcom/bbm/ui/c/du;)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    new-instance v2, Lcom/bbm/ui/c/ei;

    iget-object v0, p0, Lcom/bbm/ui/c/eb;->f:Lcom/bbm/ui/c/du;

    invoke-direct {v2, v0, v4}, Lcom/bbm/ui/c/ei;-><init>(Lcom/bbm/ui/c/du;B)V

    const v0, 0x7f0a0228

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/bbm/ui/c/ei;->a:Landroid/widget/TextView;

    const v0, 0x7f0a0362

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, v2, Lcom/bbm/ui/c/ei;->b:Lcom/bbm/ui/ObservingImageView;

    const v0, 0x7f0a0365

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/bbm/ui/c/ei;->c:Landroid/widget/ImageView;

    const v0, 0x7f0a048a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/bbm/ui/c/ei;->d:Landroid/widget/ImageView;

    const v0, 0x7f0a045a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/bbm/ui/c/ei;->e:Landroid/widget/ImageView;

    const v0, 0x7f0a0489

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/bbm/ui/c/ei;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/bbm/ui/c/ei;->g:Landroid/view/View;

    const v0, 0x7f0a00a1

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, v2, Lcom/bbm/ui/c/ei;->b:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/bbm/ui/c/eb;->f:Lcom/bbm/ui/c/du;

    invoke-static {v3}, Lcom/bbm/ui/c/du;->d(Lcom/bbm/ui/c/du;)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, v2, Lcom/bbm/ui/c/ei;->b:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/bbm/ui/c/eb;->f:Lcom/bbm/ui/c/du;

    invoke-static {v3}, Lcom/bbm/ui/c/du;->d(Lcom/bbm/ui/c/du;)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v0, v2, Lcom/bbm/ui/c/ei;->b:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0, v4}, Lcom/bbm/ui/ObservingImageView;->setLimitedLengthAnimation(Z)V

    return-object v1
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/bbm/d/ec;

    iget-object v0, p1, Lcom/bbm/d/ec;->O:Ljava/lang/String;

    return-object v0
.end method

.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 7

    check-cast p2, Ljava/lang/Long;

    check-cast p1, Lcom/bbm/ui/ListHeaderView;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    const v0, 0x7f0e0517

    :goto_11
    iget-object v1, p0, Lcom/bbm/ui/c/eb;->f:Lcom/bbm/ui/c/du;

    invoke-static {v1}, Lcom/bbm/ui/c/du;->b(Lcom/bbm/ui/c/du;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setLeftLabel(Ljava/lang/String;)V

    return-void

    :cond_23
    const v0, 0x7f0e06e9

    goto :goto_11
.end method

.method protected final synthetic b(Landroid/view/View;Ljava/lang/Object;)V
    .registers 12

    const/high16 v4, 0x3f80

    const v5, 0x3f333333

    const/16 v3, 0x8

    const/4 v2, 0x0

    check-cast p2, Lcom/bbm/d/ec;

    const v0, 0x7f0a00a1

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/c/ei;

    iget-object v6, p2, Lcom/bbm/d/ec;->M:Lcom/bbm/d/ee;

    iget-object v1, p2, Lcom/bbm/d/ec;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8b

    iget-object v1, p2, Lcom/bbm/d/ec;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/util/fb;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8b

    iget-object v1, v0, Lcom/bbm/ui/c/ei;->a:Landroid/widget/TextView;

    const/16 v7, 0x15

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    :goto_2c
    iget-object v1, v0, Lcom/bbm/ui/c/ei;->a:Landroid/widget/TextView;

    iget-object v7, p2, Lcom/bbm/d/ec;->k:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lcom/bbm/d/ec;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_93

    iget-object v1, p0, Lcom/bbm/ui/c/eb;->f:Lcom/bbm/ui/c/du;

    invoke-static {v1}, Lcom/bbm/ui/c/du;->e(Lcom/bbm/ui/c/du;)Lcom/bbm/util/b/g;

    move-result-object v1

    iget-object v7, p2, Lcom/bbm/d/ec;->o:Ljava/lang/String;

    iget-object v8, v0, Lcom/bbm/ui/c/ei;->b:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1, v7, v8}, Lcom/bbm/util/b/g;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V

    :goto_48
    iget-object v7, v0, Lcom/bbm/ui/c/ei;->c:Landroid/widget/ImageView;

    iget-boolean v1, p2, Lcom/bbm/d/ec;->b:Z

    if-eqz v1, :cond_ab

    sget-object v1, Lcom/bbm/d/ee;->c:Lcom/bbm/d/ee;

    if-ne v6, v1, :cond_ab

    move v1, v2

    :goto_53
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, v0, Lcom/bbm/ui/c/ei;->d:Landroid/widget/ImageView;

    iget-boolean v1, p2, Lcom/bbm/d/ec;->r:Z

    if-eqz v1, :cond_ad

    move v1, v2

    :goto_5d
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, v0, Lcom/bbm/ui/c/ei;->e:Landroid/widget/ImageView;

    iget-boolean v1, p2, Lcom/bbm/d/ec;->w:Z

    if-eqz v1, :cond_af

    iget-boolean v1, p2, Lcom/bbm/d/ec;->m:Z

    if-eqz v1, :cond_af

    move v1, v2

    :goto_6b
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, v0, Lcom/bbm/ui/c/ei;->b:Lcom/bbm/ui/ObservingImageView;

    sget-object v1, Lcom/bbm/d/ee;->c:Lcom/bbm/d/ee;

    if-ne v6, v1, :cond_b1

    move v1, v4

    :goto_75
    invoke-virtual {v7, v1}, Lcom/bbm/ui/ObservingImageView;->setAlpha(F)V

    iget-object v1, v0, Lcom/bbm/ui/c/ei;->g:Landroid/view/View;

    sget-object v7, Lcom/bbm/d/ee;->c:Lcom/bbm/d/ee;

    if-ne v6, v7, :cond_b3

    :goto_7e
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    sget-object v1, Lcom/bbm/d/ee;->d:Lcom/bbm/d/ee;

    if-ne v6, v1, :cond_b5

    iget-object v0, v0, Lcom/bbm/ui/c/ei;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_8a
    return-void

    :cond_8b
    iget-object v1, v0, Lcom/bbm/ui/c/ei;->a:Landroid/widget/TextView;

    const/16 v7, 0x13

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2c

    :cond_93
    iget-object v1, p0, Lcom/bbm/ui/c/eb;->f:Lcom/bbm/ui/c/du;

    invoke-static {v1}, Lcom/bbm/ui/c/du;->e(Lcom/bbm/ui/c/du;)Lcom/bbm/util/b/g;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;

    const-string v7, "com.bbm.ui.fragments.ChannelsDefaultAvatarBitmap"

    invoke-virtual {v1, v7}, Lcom/bbm/util/b/d;->a(Ljava/lang/String;)Lcom/bbm/d/fd;

    move-result-object v1

    iget-object v7, v0, Lcom/bbm/ui/c/ei;->b:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1}, Lcom/bbm/d/fd;->b()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/bbm/ui/ObservingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_48

    :cond_ab
    move v1, v3

    goto :goto_53

    :cond_ad
    move v1, v3

    goto :goto_5d

    :cond_af
    move v1, v3

    goto :goto_6b

    :cond_b1
    move v1, v5

    goto :goto_75

    :cond_b3
    move v4, v5

    goto :goto_7e

    :cond_b5
    iget-object v0, v0, Lcom/bbm/ui/c/ei;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8a
.end method
