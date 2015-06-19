.class public Lcom/twidroid/fragments/a/c;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/viewpagerindicator/j;


# static fields
.field private static final a:Ljava/lang/String; = "MainScreenPager"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;

.field private d:Lcom/twidroid/model/twitter/c;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object p2, p0, Lcom/twidroid/fragments/a/c;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    iget-object v0, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/a/d;

    invoke-virtual {v0}, Lcom/twidroid/fragments/a/d;->c()Lcom/twidroid/ui/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->d()Ljava/lang/String;

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

.method public a(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/a/d;

    invoke-virtual {v0}, Lcom/twidroid/fragments/a/d;->c()Lcom/twidroid/ui/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(IIII)V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_9b

    iget-object v0, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/a/d;

    invoke-virtual {v0}, Lcom/twidroid/fragments/a/d;->c()Lcom/twidroid/ui/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TAB_TIMELINE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/a/d;

    invoke-virtual {v0, p1}, Lcom/twidroid/fragments/a/d;->a(I)V

    :cond_2d
    iget-object v0, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/a/d;

    invoke-virtual {v0}, Lcom/twidroid/fragments/a/d;->c()Lcom/twidroid/ui/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TAB_MENTIONS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/a/d;

    invoke-virtual {v0, p2}, Lcom/twidroid/fragments/a/d;->a(I)V

    :cond_50
    iget-object v0, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/a/d;

    invoke-virtual {v0}, Lcom/twidroid/fragments/a/d;->c()Lcom/twidroid/ui/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TAB_DIRECT_MESSAGES"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/a/d;

    invoke-virtual {v0, p3}, Lcom/twidroid/fragments/a/d;->a(I)V

    :cond_73
    iget-object v0, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/a/d;

    invoke-virtual {v0}, Lcom/twidroid/fragments/a/d;->c()Lcom/twidroid/ui/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TAB_INNER_CIRCLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/a/d;

    invoke-virtual {v0, p4}, Lcom/twidroid/fragments/a/d;->a(I)V

    :cond_96
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_9b
    return-void
.end method

.method public a(Lcom/twidroid/fragments/a/d;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/twidroid/fragments/a/c;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Lcom/twidroid/model/twitter/c;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/a/c;->d:Lcom/twidroid/model/twitter/c;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 6

    iget-object v0, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

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

    check-cast v0, Lcom/twidroid/fragments/a/d;

    iget-object v2, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    invoke-virtual {v0, v2}, Lcom/twidroid/fragments/a/d;->b(I)V

    goto :goto_12

    :cond_2b
    iget-object v0, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_d
.end method

.method public b(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/a/d;

    invoke-virtual {v0}, Lcom/twidroid/fragments/a/d;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/twidroid/fragments/a/c;->notifyDataSetChanged()V

    return-void
.end method

.method public c(I)I
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/a/d;

    invoke-virtual {v0}, Lcom/twidroid/fragments/a/d;->d()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/a/d;

    invoke-virtual {v0}, Lcom/twidroid/fragments/a/d;->c()Lcom/twidroid/ui/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/a/c;->d:Lcom/twidroid/model/twitter/c;

    invoke-static {v0, v1}, Lcom/twidroid/fragments/base/p;->a(Lcom/twidroid/ui/c/h;Lcom/twidroid/model/twitter/c;)Lcom/twidroid/fragments/base/o;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    iget-object v0, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/a/d;

    invoke-virtual {v0}, Lcom/twidroid/fragments/a/d;->c()Lcom/twidroid/ui/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->g()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 8

    instance-of v0, p1, Lcom/twidroid/fragments/base/o;

    if-eqz v0, :cond_84

    check-cast p1, Lcom/twidroid/fragments/base/o;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/twidroid/fragments/base/o;->V()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/a/d;

    invoke-virtual {v0}, Lcom/twidroid/fragments/a/d;->c()Lcom/twidroid/ui/c/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twidroid/ui/c/h;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object v1, v0

    :cond_2c
    if-nez v1, :cond_52

    const-string v0, "MainScreenPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item with tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twidroid/fragments/base/o;->V()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was removed from adapter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    :goto_51
    return v0

    :cond_52
    iget-object v0, p0, Lcom/twidroid/fragments/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1}, Lcom/twidroid/fragments/a/d;->e()I

    move-result v2

    if-eq v2, v0, :cond_84

    const-string v3, "MainScreenPager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Position changed from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/twidroid/fragments/a/d;->b(I)V

    goto :goto_51

    :cond_84
    const-string v0, "MainScreenPager"

    const-string v1, "Position unchanged"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_51
.end method
