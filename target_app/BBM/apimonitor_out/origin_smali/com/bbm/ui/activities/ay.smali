.class public final Lcom/bbm/ui/activities/ay;
.super Lcom/bbm/ui/ef;
.source "BroadcastActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/ui/ef",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/bbm/ui/activities/BroadcastActivity;

.field private final c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/activities/BroadcastActivity;Lcom/bbm/j/r;Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bbm/ui/activities/ay;->b:Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-direct {p0, p2}, Lcom/bbm/ui/ef;-><init>(Lcom/bbm/j/r;)V

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ay;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    new-instance v1, Lcom/bbm/ui/activities/ba;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ba;-><init>(Lcom/bbm/ui/activities/ay;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ay;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f0300a9

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a040f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbm/ui/activities/ba;->a:Landroid/widget/TextView;

    const v0, 0x7f0a0410

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/bbm/ui/activities/ba;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v2
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 11

    const/4 v2, 0x0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/ba;

    iget-object v1, p0, Lcom/bbm/ui/activities/ay;->b:Lcom/bbm/ui/activities/BroadcastActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/BroadcastActivity;->b:Lcom/bbm/d/a;

    invoke-virtual {v1, p2}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v1

    iget-object v3, p0, Lcom/bbm/ui/activities/ay;->b:Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/BroadcastActivity;->c(Lcom/bbm/ui/activities/BroadcastActivity;)Lcom/bbm/util/cr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setActivated(Z)V

    iget-object v4, v0, Lcom/bbm/ui/activities/ba;->a:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/bbm/d/gp;->d:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/bbm/ui/activities/ba;->a:Landroid/widget/TextView;

    if-eqz v3, :cond_6a

    iget-object v1, p0, Lcom/bbm/ui/activities/ay;->b:Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/BroadcastActivity;->q(Lcom/bbm/ui/activities/BroadcastActivity;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v5, v0, Lcom/bbm/ui/activities/ba;->a:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/bbm/ui/activities/ay;->b:Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-virtual {v6}, Lcom/bbm/ui/activities/BroadcastActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0215

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-static {v1, v5, v6}, Lcom/bbm/util/fb;->a(Landroid/graphics/Paint;Landroid/widget/TextView;I)Z

    move-result v1

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/bbm/ui/activities/ay;->b:Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/BroadcastActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0b0212

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_55
    invoke-virtual {v4, v2, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, v0, Lcom/bbm/ui/activities/ba;->b:Landroid/widget/ImageView;

    if-eqz v3, :cond_6c

    :goto_5c
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/bbm/ui/activities/ba;->b:Landroid/widget/ImageView;

    new-instance v2, Lcom/bbm/ui/activities/az;

    invoke-direct {v2, p0, v0, p2}, Lcom/bbm/ui/activities/az;-><init>(Lcom/bbm/ui/activities/ay;Lcom/bbm/ui/activities/ba;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_6a
    move v1, v2

    goto :goto_55

    :cond_6c
    const/16 v2, 0x8

    goto :goto_5c
.end method
