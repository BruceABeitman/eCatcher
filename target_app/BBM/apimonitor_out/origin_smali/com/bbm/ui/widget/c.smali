.class final Lcom/bbm/ui/widget/c;
.super Lcom/bbm/d/b/f;
.source "ChatsRemoteViewsFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/d/b/f",
        "<",
        "Lcom/bbm/ui/activities/eu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/ui/widget/b;


# direct methods
.method constructor <init>(Lcom/bbm/ui/widget/b;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/widget/c;->a:Lcom/bbm/ui/widget/b;

    invoke-direct {p0}, Lcom/bbm/d/b/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/ui/activities/eu;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bbm/d/a;->p()Lcom/bbm/j/r;

    move-result-object v1

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/g/am;->d()Lcom/bbm/j/w;

    move-result-object v5

    invoke-interface {v5}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v1}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Lcom/bbm/j/w;->b()Z

    move-result v5

    if-nez v5, :cond_3b

    invoke-virtual {v3}, Lcom/bbm/d/a;->L()Lcom/bbm/j/w;

    move-result-object v3

    invoke-interface {v3}, Lcom/bbm/j/w;->b()Z

    move-result v3

    if-eqz v3, :cond_3d

    :cond_3b
    move-object v0, v2

    :goto_3c
    return-object v0

    :cond_3d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int v5, v2, v3

    if-nez v5, :cond_4e

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_3c

    :cond_4e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v5, [J

    iget-object v2, p0, Lcom/bbm/ui/widget/c;->a:Lcom/bbm/ui/widget/b;

    invoke-static {v2}, Lcom/bbm/ui/widget/b;->a(Lcom/bbm/ui/widget/b;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bbm/n/b;->a(Landroid/content/Context;)Lcom/bbm/n/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bbm/n/b;->d()Ljava/lang/String;

    move-result-object v8

    move v3, v4

    :goto_63
    if-ge v3, v7, :cond_a3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bbm/d/es;

    if-eqz v8, :cond_98

    iget-boolean v9, v2, Lcom/bbm/d/es;->i:Z

    if-nez v9, :cond_98

    iget-boolean v9, v2, Lcom/bbm/d/es;->k:Z

    if-nez v9, :cond_98

    iget-object v9, v2, Lcom/bbm/d/es;->r:Ljava/util/List;

    if-eqz v9, :cond_98

    iget-object v9, v2, Lcom/bbm/d/es;->r:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_98

    iget-object v2, v2, Lcom/bbm/d/es;->r:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    const-wide v9, 0x7fffffffffffffffL

    aput-wide v9, v6, v3

    :goto_94
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_63

    :cond_98
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bbm/d/es;

    iget-wide v9, v2, Lcom/bbm/d/es;->o:J

    aput-wide v9, v6, v3

    goto :goto_94

    :cond_a3
    move v3, v4

    :goto_a4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_ba

    add-int v8, v3, v7

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bbm/g/q;

    iget-wide v9, v2, Lcom/bbm/g/q;->h:J

    aput-wide v9, v6, v8

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_a4

    :cond_ba
    new-instance v8, Ljava/util/PriorityQueue;

    new-instance v2, Lcom/bbm/ui/widget/d;

    invoke-direct {v2, p0, v6}, Lcom/bbm/ui/widget/d;-><init>(Lcom/bbm/ui/widget/c;[J)V

    invoke-direct {v8, v5, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    move v2, v4

    :goto_c5
    if-ge v2, v7, :cond_d1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c5

    :cond_d1
    move v2, v7

    :goto_d2
    if-ge v2, v5, :cond_e6

    aget-wide v9, v6, v2

    const-wide/16 v11, 0x0

    cmp-long v3, v9, v11

    if-lez v3, :cond_e3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_e3
    add-int/lit8 v2, v2, 0x1

    goto :goto_d2

    :cond_e6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v4

    :goto_ec
    const/16 v2, 0xc

    if-ge v6, v2, :cond_168

    invoke-virtual {v8}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_168

    invoke-virtual {v8}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v7, :cond_158

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bbm/d/es;

    iget-object v3, v2, Lcom/bbm/d/es;->r:Ljava/util/List;

    if-eqz v3, :cond_152

    iget-object v3, v2, Lcom/bbm/d/es;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_152

    iget-object v3, v2, Lcom/bbm/d/es;->r:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_11c
    if-eqz v3, :cond_156

    iget-object v9, p0, Lcom/bbm/ui/widget/c;->a:Lcom/bbm/ui/widget/b;

    invoke-static {v9}, Lcom/bbm/ui/widget/b;->b(Lcom/bbm/ui/widget/b;)Lcom/bbm/d/a;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "|"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, v2, Lcom/bbm/d/es;->b:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/bbm/d/a;->n(Ljava/lang/String;)Lcom/bbm/util/bh;

    move-result-object v3

    sget-object v9, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v3, v9, :cond_154

    const/4 v3, 0x1

    :goto_146
    new-instance v9, Lcom/bbm/ui/activities/eu;

    invoke-direct {v9, v2, v3}, Lcom/bbm/ui/activities/eu;-><init>(Lcom/bbm/d/es;Z)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_14e
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_ec

    :cond_152
    const/4 v3, 0x0

    goto :goto_11c

    :cond_154
    move v3, v4

    goto :goto_146

    :cond_156
    move v3, v4

    goto :goto_146

    :cond_158
    new-instance v3, Lcom/bbm/ui/activities/eu;

    sub-int/2addr v2, v7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bbm/g/q;

    invoke-direct {v3, v2}, Lcom/bbm/ui/activities/eu;-><init>(Lcom/bbm/g/q;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14e

    :cond_168
    move-object v0, v5

    goto/16 :goto_3c
.end method
