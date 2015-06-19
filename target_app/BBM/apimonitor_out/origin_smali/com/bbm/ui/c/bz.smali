.class final Lcom/bbm/ui/c/bz;
.super Lcom/bbm/ui/gk;
.source "ContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/ui/gk",
        "<",
        "Lcom/bbm/d/gp;",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/bbm/ui/c/bm;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/bm;Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;)V
    .registers 5

    iput-object p1, p0, Lcom/bbm/ui/c/bz;->f:Lcom/bbm/ui/c/bm;

    invoke-direct {p0, p2, p3, p4}, Lcom/bbm/ui/gk;-><init>(Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;)V

    return-void
.end method


# virtual methods
.method protected final a()Landroid/view/View;
    .registers 3

    new-instance v0, Lcom/bbm/ui/ListHeaderView;

    iget-object v1, p0, Lcom/bbm/ui/c/bz;->f:Lcom/bbm/ui/c/bm;

    invoke-static {v1}, Lcom/bbm/ui/c/bm;->b(Lcom/bbm/ui/c/bm;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/ui/ListHeaderView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected final a(Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ba

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ContactsGridItem;

    invoke-virtual {v0}, Lcom/bbm/ui/ContactsGridItem;->getContactAvatar()Lcom/bbm/ui/ObservingImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/bbm/ui/ObservingImageView;->setLimitedLengthAnimation(Z)V

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/bbm/d/gp;

    iget-object v0, p1, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    return-object v0
.end method

.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 8

    check-cast p2, Ljava/lang/Long;

    check-cast p1, Lcom/bbm/ui/ListHeaderView;

    iget-object v0, p0, Lcom/bbm/ui/c/bz;->f:Lcom/bbm/ui/c/bm;

    invoke-static {v0}, Lcom/bbm/ui/c/bm;->e(Lcom/bbm/ui/c/bm;)Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->W(Ljava/lang/String;)Lcom/bbm/d/ea;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/bz;->f:Lcom/bbm/ui/c/bm;

    invoke-static {v1}, Lcom/bbm/ui/c/bm;->e(Lcom/bbm/ui/c/bm;)Lcom/bbm/d/a;

    move-result-object v1

    const-string v2, "defaultCategory"

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;

    const-string v2, "value"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/bbm/d/ea;->b:J

    cmp-long v1, v3, v1

    if-nez v1, :cond_58

    iget-object v1, v0, Lcom/bbm/d/ea;->c:Ljava/lang/String;

    const-string v2, "Contacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    iget-object v0, p0, Lcom/bbm/ui/c/bz;->f:Lcom/bbm/ui/c/bm;

    invoke-static {v0}, Lcom/bbm/ui/c/bm;->b(Lcom/bbm/ui/c/bm;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e026c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_49
    invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setLeftLabel(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/bbm/ui/c/bz;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setRightLabel(Ljava/lang/String;)V

    return-void

    :cond_58
    iget-object v0, v0, Lcom/bbm/d/ea;->c:Ljava/lang/String;

    goto :goto_49
.end method

.method protected final synthetic b(Landroid/view/View;Ljava/lang/Object;)V
    .registers 11

    const/16 v7, 0x15

    const/16 v6, 0x13

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    check-cast p2, Lcom/bbm/d/gp;

    check-cast p1, Lcom/bbm/ui/ContactsGridItem;

    invoke-virtual {p1}, Lcom/bbm/ui/ContactsGridItem;->getContactName()Landroid/widget/TextView;

    move-result-object v4

    invoke-static {p2}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_28

    invoke-static {v0}, Lcom/bbm/util/fb;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a3

    invoke-static {v0}, Lcom/bbm/util/fb;->d(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9f

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    :cond_28
    :goto_28
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/bbm/ui/ContactsGridItem;->getContactAvatar()Lcom/bbm/ui/ObservingImageView;

    move-result-object v0

    iget-object v5, p0, Lcom/bbm/ui/c/bz;->f:Lcom/bbm/ui/c/bm;

    invoke-static {v5}, Lcom/bbm/ui/c/bm;->e(Lcom/bbm/ui/c/bm;)Lcom/bbm/d/a;

    move-result-object v5

    iget-object v6, p2, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    iget-object v7, p2, Lcom/bbm/d/gp;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    invoke-virtual {p1}, Lcom/bbm/ui/ContactsGridItem;->getContactAvatar()Lcom/bbm/ui/ObservingImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bbm/ui/ObservingImageView;->setLimitedLengthAnimation(Z)V

    iget-boolean v0, p2, Lcom/bbm/d/gp;->w:Z

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/bbm/ui/c/bz;->f:Lcom/bbm/ui/c/bm;

    invoke-static {v0}, Lcom/bbm/ui/c/bm;->f(Lcom/bbm/ui/c/bm;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_51
    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v5, v5, v2

    if-eq v0, v5, :cond_5c

    invoke-virtual {v4, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_5c
    iget-object v0, p0, Lcom/bbm/ui/c/bz;->f:Lcom/bbm/ui/c/bm;

    invoke-static {v0}, Lcom/bbm/ui/c/bm;->e(Lcom/bbm/ui/c/bm;)Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a;->u()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p2, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_bd

    iget-object v1, p0, Lcom/bbm/ui/c/bz;->f:Lcom/bbm/ui/c/bm;

    invoke-static {v1}, Lcom/bbm/ui/c/bm;->e(Lcom/bbm/ui/c/bm;)Lcom/bbm/d/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->K(Ljava/lang/String;)Lcom/bbm/d/es;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/bz;->f:Lcom/bbm/ui/c/bm;

    invoke-static {v1}, Lcom/bbm/ui/c/bm;->e(Lcom/bbm/ui/c/bm;)Lcom/bbm/d/a;

    move-result-object v1

    iget-object v4, v0, Lcom/bbm/d/es;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/bbm/d/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v0, Lcom/bbm/d/es;->n:J

    invoke-virtual {v1, v4, v5, v6}, Lcom/bbm/d/a;->a(Ljava/lang/String;J)Lcom/bbm/d/fg;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bbm/ui/ContactsGridItem;->getContactSplat()Landroid/view/View;

    move-result-object v1

    iget-boolean v4, v0, Lcom/bbm/d/fg;->j:Z

    if-eqz v4, :cond_bb

    iget-object v0, v0, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;

    sget-object v4, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;

    if-eq v0, v4, :cond_bb

    move v0, v2

    :goto_9b
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_9e
    return-void

    :cond_9f
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_28

    :cond_a3
    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b4

    invoke-static {v0}, Lcom/bbm/util/fb;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_28

    :cond_b4
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_28

    :cond_b9
    move-object v0, v1

    goto :goto_51

    :cond_bb
    move v0, v3

    goto :goto_9b

    :cond_bd
    invoke-virtual {p1}, Lcom/bbm/ui/ContactsGridItem;->getContactSplat()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9e
.end method
