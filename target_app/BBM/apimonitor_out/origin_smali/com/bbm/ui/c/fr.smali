.class final Lcom/bbm/ui/c/fr;
.super Lcom/bbm/ui/ef;
.source "SlideMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/ui/ef",
        "<",
        "Lcom/bbm/ui/slidingmenu/a;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/bbm/ui/c/fm;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/c/fm;Lcom/bbm/j/r;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/ui/slidingmenu/a;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bbm/ui/c/fr;->b:Lcom/bbm/ui/c/fm;

    invoke-direct {p0, p2}, Lcom/bbm/ui/ef;-><init>(Lcom/bbm/j/r;)V

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    new-instance v1, Lcom/bbm/ui/c/fs;

    invoke-direct {v1, p0}, Lcom/bbm/ui/c/fs;-><init>(Lcom/bbm/ui/c/fr;)V

    new-instance v2, Lcom/bbm/ui/slidingmenu/SlidingMenuItemView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/bbm/ui/slidingmenu/SlidingMenuItemView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0a04da

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/bbm/ui/c/fs;->a:Landroid/widget/ImageView;

    const v0, 0x7f0a04db

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/bbm/ui/c/fs;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a04dc

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbm/ui/c/fs;->c:Landroid/widget/TextView;

    const v0, 0x7f0a04dd

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbm/ui/c/fs;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v2
.end method

.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/bbm/ui/slidingmenu/a;

    iget v0, p1, Lcom/bbm/ui/slidingmenu/a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 9

    const/4 v5, -0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    check-cast p2, Lcom/bbm/ui/slidingmenu/a;

    iget-object v0, p0, Lcom/bbm/ui/c/fr;->b:Lcom/bbm/ui/c/fm;

    invoke-virtual {v0}, Lcom/bbm/ui/c/fm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_16

    const-string v0, "SlideMenuFragment: trying to updateView while not attached to an activity"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_15
    return-void

    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/c/fs;

    invoke-virtual {p2}, Lcom/bbm/ui/slidingmenu/a;->a()Lcom/google/b/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/b/a/l;->a()Z

    move-result v1

    if-eqz v1, :cond_bd

    iget-object v4, v0, Lcom/bbm/ui/c/fs;->a:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/bbm/ui/slidingmenu/a;->a()Lcom/google/b/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v0, Lcom/bbm/ui/c/fs;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3e
    iget-object v1, v0, Lcom/bbm/ui/c/fs;->a:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/bbm/ui/slidingmenu/a;->g()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v4, v0, Lcom/bbm/ui/c/fs;->a:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V

    iget-boolean v1, p2, Lcom/bbm/ui/slidingmenu/a;->b:Z

    if-eqz v1, :cond_c4

    const v1, 0x3f333333

    :goto_53
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget v1, p2, Lcom/bbm/ui/slidingmenu/a;->a:I

    if-eq v1, v5, :cond_61

    iget-object v1, v0, Lcom/bbm/ui/c/fs;->a:Landroid/widget/ImageView;

    iget v4, p2, Lcom/bbm/ui/slidingmenu/a;->a:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setId(I)V

    :cond_61
    iget-object v4, v0, Lcom/bbm/ui/c/fs;->b:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/bbm/ui/slidingmenu/a;->e()Z

    move-result v1

    if-eqz v1, :cond_c7

    move v1, v2

    :goto_6a
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/bbm/ui/c/fs;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/bbm/ui/slidingmenu/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/bbm/ui/c/fs;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/bbm/ui/slidingmenu/a;->g()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, v0, Lcom/bbm/ui/c/fs;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/bbm/ui/slidingmenu/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbm/ui/c/fr;->b:Lcom/bbm/ui/c/fm;

    invoke-static {v1}, Lcom/bbm/ui/c/fm;->f(Lcom/bbm/ui/c/fm;)Z

    move-result v1

    if-eqz v1, :cond_c9

    iget-object v1, p0, Lcom/bbm/ui/c/fr;->b:Lcom/bbm/ui/c/fm;

    invoke-virtual {v1}, Lcom/bbm/ui/c/fm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f02030e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_a0
    invoke-virtual {p2}, Lcom/bbm/ui/slidingmenu/a;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_108

    iget-object v1, v0, Lcom/bbm/ui/c/fs;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0355

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, v0, Lcom/bbm/ui/c/fs;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_15

    :cond_bd
    iget-object v1, v0, Lcom/bbm/ui/c/fs;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3e

    :cond_c4
    const/high16 v1, 0x3f80

    goto :goto_53

    :cond_c7
    move v1, v3

    goto :goto_6a

    :cond_c9
    invoke-virtual {p2}, Lcom/bbm/ui/slidingmenu/a;->f()Z

    move-result v1

    if-eqz v1, :cond_e5

    iget-object v1, p0, Lcom/bbm/ui/c/fr;->b:Lcom/bbm/ui/c/fm;

    invoke-virtual {v1}, Lcom/bbm/ui/c/fm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f09015f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v0, Lcom/bbm/ui/c/fs;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_a0

    :cond_e5
    iget-object v1, p0, Lcom/bbm/ui/c/fr;->b:Lcom/bbm/ui/c/fm;

    invoke-virtual {v1}, Lcom/bbm/ui/c/fm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f02030f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/bbm/ui/c/fs;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/bbm/ui/c/fr;->b:Lcom/bbm/ui/c/fm;

    invoke-virtual {v4}, Lcom/bbm/ui/c/fm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09017d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_a0

    :cond_108
    iget-object v1, v0, Lcom/bbm/ui/c/fs;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0352

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, v0, Lcom/bbm/ui/c/fs;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_15
.end method
