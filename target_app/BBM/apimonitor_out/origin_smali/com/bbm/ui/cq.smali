.class public abstract Lcom/bbm/ui/cq;
.super Lcom/bbm/ui/dy;
.source "GroupedObservableListAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Lcom/bbm/j/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bbm/ui/dy",
        "<TT;>;",
        "Landroid/widget/ListAdapter;",
        "Lcom/bbm/j/h;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final b:Lcom/bbm/j/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bbm/j/r;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bbm/ui/dy;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/cq;->c:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/cq;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/bbm/ui/cq;->b:Lcom/bbm/j/r;

    iget-object v0, p0, Lcom/bbm/ui/cq;->b:Lcom/bbm/j/r;

    invoke-interface {v0, p0}, Lcom/bbm/j/r;->a(Lcom/bbm/j/h;)V

    invoke-direct {p0}, Lcom/bbm/ui/cq;->d()V

    return-void
.end method

.method private d()V
    .registers 6

    iget-object v0, p0, Lcom/bbm/ui/cq;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    iget-object v0, p0, Lcom/bbm/ui/cq;->b:Lcom/bbm/j/r;

    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bbm/ui/cq;->a(Ljava/lang/Object;)I

    move-result v3

    iget-object v0, p0, Lcom/bbm/ui/cq;->c:Ljava/util/TreeMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3b

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v4, p0, Lcom/bbm/ui/cq;->c:Ljava/util/TreeMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_3f
    iget-object v0, p0, Lcom/bbm/ui/cq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/bbm/ui/cq;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/bbm/ui/cq;->d:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/bbm/ui/cq;->c:Ljava/util/TreeMap;

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/ui/cq;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    :cond_7c
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract a(Lcom/bbm/ui/ListHeaderView;)Lcom/bbm/ui/ListHeaderView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/ui/ListHeaderView;",
            ")",
            "Lcom/bbm/ui/ListHeaderView;"
        }
    .end annotation
.end method

.method public final a()V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/cq;->d()V

    invoke-virtual {p0}, Lcom/bbm/ui/cq;->notifyDataSetChanged()V

    return-void
.end method

.method public abstract a(Lcom/bbm/ui/ListHeaderView;ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/ui/ListHeaderView;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public areAllItemsEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/cq;->b:Lcom/bbm/j/r;

    invoke-static {v0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V

    iget-object v0, p0, Lcom/bbm/ui/cq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/ui/cq;->b:Lcom/bbm/j/r;

    invoke-static {v0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V

    iget-object v0, p0, Lcom/bbm/ui/cq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    if-ltz p1, :cond_1e

    iget-object v0, p0, Lcom/bbm/ui/cq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1e

    iget-object v0, p0, Lcom/bbm/ui/cq;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_1d
    return-object v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bbm/ui/cq;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const v4, 0x7f0a0025

    invoke-virtual {p0, p1}, Lcom/bbm/ui/cq;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/dy;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/bbm/ui/cq;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bbm/ui/cq;->a(Ljava/lang/Object;)I

    move-result v3

    iget-object v0, p0, Lcom/bbm/ui/cq;->b:Lcom/bbm/j/r;

    invoke-static {v0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V

    iget-object v0, p0, Lcom/bbm/ui/cq;->c:Ljava/util/TreeMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast p2, Lcom/bbm/ui/ListHeaderView;

    invoke-virtual {p0, p2}, Lcom/bbm/ui/cq;->a(Lcom/bbm/ui/ListHeaderView;)Lcom/bbm/ui/ListHeaderView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/bbm/ui/ListHeaderView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/j/k;

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Lcom/bbm/j/k;->e()V

    :cond_3a
    new-instance v1, Lcom/bbm/ui/cr;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/bbm/ui/cr;-><init>(Lcom/bbm/ui/cq;Lcom/bbm/ui/ListHeaderView;ILjava/util/List;)V

    invoke-virtual {v1}, Lcom/bbm/j/k;->c()V

    invoke-virtual {v2, v4, v1}, Lcom/bbm/ui/ListHeaderView;->setTag(ILjava/lang/Object;)V

    move-object v0, v2

    goto :goto_d
.end method

.method public final getViewTypeCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bbm/ui/cq;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
