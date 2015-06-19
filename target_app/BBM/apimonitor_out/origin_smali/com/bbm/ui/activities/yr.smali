.class public final Lcom/bbm/ui/activities/yr;
.super Lcom/bbm/ui/ef;
.source "NewChannelCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/ui/ef",
        "<",
        "Lcom/bbm/d/en;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/bbm/ui/activities/NewChannelCategoryActivity;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/activities/NewChannelCategoryActivity;Lcom/bbm/j/r;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bbm/ui/activities/yr;->b:Lcom/bbm/ui/activities/NewChannelCategoryActivity;

    invoke-direct {p0, p2}, Lcom/bbm/ui/ef;-><init>(Lcom/bbm/j/r;)V

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/yr;->b:Lcom/bbm/ui/activities/NewChannelCategoryActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b7

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/bbm/ui/activities/yt;

    invoke-direct {v2, p0, v3}, Lcom/bbm/ui/activities/yt;-><init>(Lcom/bbm/ui/activities/yr;B)V

    const v0, 0x7f0a043d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/bbm/ui/activities/yt;->a:Landroid/widget/TextView;

    const v0, 0x7f0a043e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v2, Lcom/bbm/ui/activities/yt;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/bbm/d/en;

    iget-object v0, p1, Lcom/bbm/d/en;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 7

    const v3, 0x7f0a0025

    check-cast p2, Lcom/bbm/d/en;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/yt;

    iget-object v1, v0, Lcom/bbm/ui/activities/yt;->a:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/bbm/d/en;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/j/k;

    new-instance v2, Lcom/bbm/ui/activities/ys;

    invoke-direct {v2, p0, v0, p2}, Lcom/bbm/ui/activities/ys;-><init>(Lcom/bbm/ui/activities/yr;Lcom/bbm/ui/activities/yt;Lcom/bbm/d/en;)V

    invoke-virtual {v2}, Lcom/bbm/j/k;->c()V

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Lcom/bbm/j/k;->e()V

    :cond_25
    invoke-virtual {p1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/yr;->b:Lcom/bbm/ui/activities/NewChannelCategoryActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->n(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Lcom/bbm/ui/HeaderButtonActionBar;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/ui/activities/yr;->b:Lcom/bbm/ui/activities/NewChannelCategoryActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->m(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)I

    move-result v0

    if-ltz v0, :cond_3e

    const/4 v0, 0x1

    :goto_37
    invoke-virtual {v1, v0}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/yr;->notifyDataSetChanged()V

    return-void

    :cond_3e
    const/4 v0, 0x0

    goto :goto_37
.end method
