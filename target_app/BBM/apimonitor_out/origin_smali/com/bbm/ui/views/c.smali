.class public final Lcom/bbm/ui/views/c;
.super Lcom/bbm/ui/ef;
.source "ChannelFeaturedPostsView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/ui/ef",
        "<",
        "Lcom/bbm/d/ew;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/bbm/ui/views/a;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bbm/d/ew;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bbm/ui/views/a;Lcom/bbm/j/r;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/views/c;->b:Lcom/bbm/ui/views/a;

    invoke-direct {p0, p2}, Lcom/bbm/ui/ef;-><init>(Lcom/bbm/j/r;)V

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Lcom/bbm/ui/views/c;->b:Lcom/bbm/ui/views/a;

    new-instance v1, Lcom/bbm/ui/views/f;

    invoke-direct {v1}, Lcom/bbm/ui/views/f;-><init>()V

    invoke-static {v0, p3, v1}, Lcom/bbm/ui/views/a;->a(Lcom/bbm/ui/views/a;Landroid/view/ViewGroup;Lcom/bbm/ui/views/f;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/bbm/d/ew;

    invoke-virtual {p1}, Lcom/bbm/d/ew;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/d/ew;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bbm/ui/views/c;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_88

    invoke-super {p0}, Lcom/bbm/ui/ef;->a()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    move v1, v2

    :goto_13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2c

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ew;

    iget-object v0, v0, Lcom/bbm/d/ew;->a:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    :cond_2c
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bbm/ui/views/c;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/bbm/ui/views/c;->b:Lcom/bbm/ui/views/a;

    invoke-static {v0}, Lcom/bbm/ui/views/a;->c(Lcom/bbm/ui/views/a;)Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a;->K()Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_47
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_6f

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/d/ev;

    iget-object v1, v1, Lcom/bbm/d/ev;->a:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6c

    iget-object v5, p0, Lcom/bbm/ui/views/c;->c:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/d/ev;

    iget-object v1, v1, Lcom/bbm/d/ev;->a:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_6f
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_7e

    iget-object v0, p0, Lcom/bbm/ui/views/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7e
    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/bbm/ui/views/c;->c:Ljava/util/ArrayList;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v0, v3

    :goto_87
    return-object v0

    :cond_88
    invoke-super {p0}, Lcom/bbm/ui/ef;->a()Ljava/util/List;

    move-result-object v0

    goto :goto_87
.end method

.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 7

    check-cast p2, Lcom/bbm/d/ew;

    iget-object v0, p0, Lcom/bbm/ui/views/c;->b:Lcom/bbm/ui/views/a;

    invoke-static {v0}, Lcom/bbm/ui/views/a;->c(Lcom/bbm/ui/views/a;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p2, Lcom/bbm/d/ew;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/ui/views/c;->b:Lcom/bbm/ui/views/a;

    invoke-static {v0}, Lcom/bbm/ui/views/a;->c(Lcom/bbm/ui/views/a;)Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bbm/d/ew;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bbm/d/a;->v(Ljava/lang/String;)Lcom/bbm/d/fw;

    move-result-object v2

    iget-object v0, v2, Lcom/bbm/d/fw;->t:Lcom/bbm/util/bh;

    sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v0, v3, :cond_36

    iget-object v0, v1, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;

    sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v0, v3, :cond_36

    iget-object v3, p0, Lcom/bbm/ui/views/c;->b:Lcom/bbm/ui/views/a;

    const v0, 0x7f0a00a1

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/views/f;

    invoke-static {v3, v1, v2, v0}, Lcom/bbm/ui/views/a;->a(Lcom/bbm/ui/views/a;Lcom/bbm/d/ec;Lcom/bbm/d/fw;Lcom/bbm/ui/views/f;)V

    :cond_36
    return-void
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/views/c;->b:Lcom/bbm/ui/views/a;

    invoke-static {v0}, Lcom/bbm/ui/views/a;->f(Lcom/bbm/ui/views/a;)Landroid/widget/GridLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_11

    invoke-super {p0}, Lcom/bbm/ui/ef;->getCount()I

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
