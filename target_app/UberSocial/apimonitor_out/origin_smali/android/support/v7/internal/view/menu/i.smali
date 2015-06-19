.class public abstract Landroid/support/v7/internal/view/menu/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/ab;


# instance fields
.field private a:Landroid/support/v7/internal/view/menu/ac;

.field private b:I

.field protected c:Landroid/content/Context;

.field protected d:Landroid/content/Context;

.field protected e:Landroid/support/v7/internal/view/menu/n;

.field protected f:Landroid/view/LayoutInflater;

.field protected g:Landroid/view/LayoutInflater;

.field protected h:Landroid/support/v7/internal/view/menu/ad;

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/i;->c:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/i;->f:Landroid/view/LayoutInflater;

    iput p2, p0, Landroid/support/v7/internal/view/menu/i;->b:I

    iput p3, p0, Landroid/support/v7/internal/view/menu/i;->i:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/ad;
    .registers 5

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/i;->h:Landroid/support/v7/internal/view/menu/ad;

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/i;->f:Landroid/view/LayoutInflater;

    iget v1, p0, Landroid/support/v7/internal/view/menu/i;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/ad;

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/i;->h:Landroid/support/v7/internal/view/menu/ad;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/i;->h:Landroid/support/v7/internal/view/menu/ad;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/i;->e:Landroid/support/v7/internal/view/menu/n;

    invoke-interface {v0, v1}, Landroid/support/v7/internal/view/menu/ad;->a(Landroid/support/v7/internal/view/menu/n;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/i;->c(Z)V

    :cond_1c
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/i;->h:Landroid/support/v7/internal/view/menu/ad;

    return-object v0
.end method

.method public a(Landroid/support/v7/internal/view/menu/r;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    instance-of v0, p2, Landroid/support/v7/internal/view/menu/ae;

    if-eqz v0, :cond_d

    check-cast p2, Landroid/support/v7/internal/view/menu/ae;

    move-object v0, p2

    :goto_7
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/r;Landroid/support/v7/internal/view/menu/ae;)V

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_d
    invoke-virtual {p0, p3}, Landroid/support/v7/internal/view/menu/i;->b(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/ae;

    move-result-object v0

    goto :goto_7
.end method

.method public a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;)V
    .registers 4

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/i;->d:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/i;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/i;->g:Landroid/view/LayoutInflater;

    iput-object p2, p0, Landroid/support/v7/internal/view/menu/i;->e:Landroid/support/v7/internal/view/menu/n;

    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/ac;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/i;->a:Landroid/support/v7/internal/view/menu/ac;

    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/n;Z)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/i;->a:Landroid/support/v7/internal/view/menu/ac;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/i;->a:Landroid/support/v7/internal/view/menu/ac;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/ac;->a(Landroid/support/v7/internal/view/menu/n;Z)V

    :cond_9
    return-void
.end method

.method public abstract a(Landroid/support/v7/internal/view/menu/r;Landroid/support/v7/internal/view/menu/ae;)V
.end method

.method protected a(Landroid/view/View;I)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_b
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/i;->h:Landroid/support/v7/internal/view/menu/ad;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public a(ILandroid/support/v7/internal/view/menu/r;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/support/v7/internal/view/menu/ah;)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/i;->a:Landroid/support/v7/internal/view/menu/ac;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/i;->a:Landroid/support/v7/internal/view/menu/ac;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/ac;->b(Landroid/support/v7/internal/view/menu/n;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(Landroid/support/v7/internal/view/menu/n;Landroid/support/v7/internal/view/menu/r;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method protected a(Landroid/view/ViewGroup;I)Z
    .registers 4

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/ae;
    .registers 5

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/i;->f:Landroid/view/LayoutInflater;

    iget v1, p0, Landroid/support/v7/internal/view/menu/i;->i:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/ae;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Landroid/support/v7/internal/view/menu/i;->j:I

    return-void
.end method

.method public b(Landroid/support/v7/internal/view/menu/n;Landroid/support/v7/internal/view/menu/r;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public c(Z)V
    .registers 12

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/i;->h:Landroid/support/v7/internal/view/menu/ad;

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_8

    :cond_7
    return-void

    :cond_8
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/i;->e:Landroid/support/v7/internal/view/menu/n;

    if-eqz v1, :cond_62

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/i;->e:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/n;->k()V

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/i;->e:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/n;->j()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v6, v5

    move v4, v5

    :goto_1d
    if-ge v6, v8, :cond_51

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/r;

    invoke-virtual {p0, v4, v1}, Landroid/support/v7/internal/view/menu/i;->a(ILandroid/support/v7/internal/view/menu/r;)Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v2, v3, Landroid/support/v7/internal/view/menu/ae;

    if-eqz v2, :cond_4f

    move-object v2, v3

    check-cast v2, Landroid/support/v7/internal/view/menu/ae;

    invoke-interface {v2}, Landroid/support/v7/internal/view/menu/ae;->getItemData()Landroid/support/v7/internal/view/menu/r;

    move-result-object v2

    :goto_3a
    invoke-virtual {p0, v1, v3, v0}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/r;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    if-eq v1, v2, :cond_43

    invoke-virtual {v9, v5}, Landroid/view/View;->setPressed(Z)V

    :cond_43
    if-eq v9, v3, :cond_48

    invoke-virtual {p0, v9, v4}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/view/View;I)V

    :cond_48
    add-int/lit8 v1, v4, 0x1

    :goto_4a
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v4, v1

    goto :goto_1d

    :cond_4f
    const/4 v2, 0x0

    goto :goto_3a

    :cond_51
    :goto_51
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v4, v1, :cond_7

    invoke-virtual {p0, v0, v4}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/view/ViewGroup;I)Z

    move-result v1

    if-nez v1, :cond_51

    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    :cond_60
    move v1, v4

    goto :goto_4a

    :cond_62
    move v4, v5

    goto :goto_51
.end method

.method public g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/i;->j:I

    return v0
.end method
