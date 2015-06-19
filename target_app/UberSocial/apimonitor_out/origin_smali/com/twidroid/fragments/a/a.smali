.class public Lcom/twidroid/fragments/a/a;
.super Lcom/twidroid/fragments/a/f;
.source "SourceFile"

# interfaces
.implements Lcom/viewpagerindicator/j;


# static fields
.field private static final a:Ljava/lang/String; = "EditableFragmentPager"


# instance fields
.field private b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/twidroid/fragments/a/f;-><init>(Landroid/support/v4/app/FragmentManager;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/twidroid/fragments/a/a;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/twidroid/fragments/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    iget-object v0, p0, Lcom/twidroid/fragments/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/base/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    :goto_20
    return v1

    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_25
    const/4 v1, -0x1

    goto :goto_20
.end method

.method public a(I)Landroid/support/v4/app/Fragment;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/fragments/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_11

    const-string v0, "EditableFragmentPager"

    const-string v1, "Invalid index supplied; Returning null"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/twidroid/fragments/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    goto :goto_10
.end method

.method public a(II)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/fragments/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/base/o;

    invoke-virtual {v0}, Lcom/twidroid/fragments/base/o;->V()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twidroid/fragments/base/o;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 6

    iget-object v0, p0, Lcom/twidroid/fragments/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/twidroid/fragments/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_d
    return-void

    :cond_e
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/base/o;

    iget-object v2, p0, Lcom/twidroid/fragments/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    invoke-virtual {v0, v2}, Lcom/twidroid/fragments/base/o;->c(I)V

    goto :goto_12

    :cond_2b
    iget-object v0, p0, Lcom/twidroid/fragments/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/twidroid/fragments/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_d
.end method

.method public b(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/base/o;

    invoke-virtual {v0}, Lcom/twidroid/fragments/base/o;->S()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)I
    .registers 4

    iget-object v0, p0, Lcom/twidroid/fragments/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    instance-of v1, v0, Lcom/twidroid/fragments/base/b;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/twidroid/fragments/base/b;

    invoke-virtual {v0}, Lcom/twidroid/fragments/base/b;->l()I

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 6

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/twidroid/fragments/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v2, :cond_12

    const-string v0, "EditableFragmentPager"

    const-string v1, "Position invalid, needs to be removed!"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    :goto_11
    return v0

    :cond_12
    iget-object v0, p0, Lcom/twidroid/fragments/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/base/o;

    invoke-virtual {v0}, Lcom/twidroid/fragments/base/o;->W()I

    move-result v3

    if-eq v3, v1, :cond_25

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/base/o;->c(I)V

    move v0, v1

    goto :goto_11

    :cond_25
    const-string v0, "EditableFragmentPager"

    const-string v1, "Position unchanged"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_11
.end method
