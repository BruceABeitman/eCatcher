.class public final Lcom/bbm/i/a;
.super Lcom/bbm/d/b/f;
.source "AddToBbmList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/d/b/f",
        "<",
        "Lcom/bbm/iceberg/j;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/bbm/j/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/iceberg/j;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lcom/bbm/d/a;


# direct methods
.method public constructor <init>(Lcom/bbm/j/r;Lcom/bbm/d/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/iceberg/j;",
            ">;>;",
            "Lcom/bbm/d/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bbm/d/b/f;-><init>()V

    iput-object p1, p0, Lcom/bbm/i/a;->a:Lcom/bbm/j/r;

    iput-object p2, p0, Lcom/bbm/i/a;->b:Lcom/bbm/d/a;

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/iceberg/j;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/iceberg/j;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/bbm/i/a;->b:Lcom/bbm/d/a;

    invoke-virtual {v0}, Lcom/bbm/d/a;->s()Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/bbm/i/a;->b:Lcom/bbm/d/a;

    invoke-virtual {v1}, Lcom/bbm/d/a;->i()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/bbm/i/a;->b:Lcom/bbm/d/a;

    invoke-virtual {v1}, Lcom/bbm/d/a;->s()Lcom/bbm/j/w;

    move-result-object v1

    invoke-interface {v1}, Lcom/bbm/j/w;->b()Z

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fn;

    iget-object v5, p0, Lcom/bbm/i/a;->b:Lcom/bbm/d/a;

    iget-object v0, v0, Lcom/bbm/d/fn;->j:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v0

    iget-object v5, v0, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;

    sget-object v9, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v5, v9, :cond_47

    move v1, v2

    :cond_47
    iget-object v0, v0, Lcom/bbm/d/gp;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    :cond_5d
    if-nez v1, :cond_e6

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/bbm/i/a;->b:Lcom/bbm/d/a;

    iget-object v0, v0, Lcom/bbm/d/a;->e:Lcom/bbm/d/b/r;

    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_72
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/gp;

    iget-object v0, v0, Lcom/bbm/d/gp;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_84
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_84

    :cond_94
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_98
    :goto_98
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bbm/iceberg/j;

    invoke-virtual {v1}, Lcom/bbm/iceberg/j;->a()Z

    move-result v0

    if-eqz v0, :cond_98

    iget-object v0, v1, Lcom/bbm/iceberg/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d0

    move v0, v3

    move v4, v2

    move v5, v3

    :goto_c6
    if-nez v4, :cond_98

    if-nez v0, :cond_98

    if-nez v5, :cond_98

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_98

    :cond_d0
    invoke-virtual {v8, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_da

    move v0, v2

    move v4, v3

    move v5, v3

    goto :goto_c6

    :cond_da
    if-eqz v6, :cond_b1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1

    move v0, v3

    move v4, v3

    move v5, v2

    goto :goto_c6

    :cond_e6
    return-object v7

    :cond_e7
    move v0, v3

    move v4, v3

    move v5, v3

    goto :goto_c6
.end method

.method public static a(Lcom/bbm/d/a;)Z
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/bbm/d/a;->s()Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fn;

    iget-object v0, v0, Lcom/bbm/d/fn;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;

    sget-object v5, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v0, v5, :cond_39

    move v0, v3

    :goto_2d
    move v1, v0

    goto :goto_14

    :cond_2f
    invoke-virtual {p0}, Lcom/bbm/d/a;->n()Z

    move-result v0

    if-nez v0, :cond_37

    if-eqz v1, :cond_4

    :cond_37
    move v2, v3

    goto :goto_4

    :cond_39
    move v0, v1

    goto :goto_2d
.end method


# virtual methods
.method protected final a()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/iceberg/j;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/bbm/i/a;->a:Lcom/bbm/j/r;

    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/iceberg/j;

    iget-object v3, v0, Lcom/bbm/iceberg/j;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2f

    iget-object v3, v0, Lcom/bbm/iceberg/j;->b:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_2f
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_33
    invoke-direct {p0, v1}, Lcom/bbm/i/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
