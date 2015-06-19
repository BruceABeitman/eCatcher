.class final Lcom/bbm/d/k;
.super Lcom/bbm/d/b/q;
.source "BbmdsModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/d/b/q",
        "<",
        "Lcom/bbm/d/gs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/d/a;


# direct methods
.method constructor <init>(Lcom/bbm/d/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/d/k;->a:Lcom/bbm/d/a;

    invoke-direct {p0}, Lcom/bbm/d/b/q;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/d/gs;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/bbm/d/k;->a:Lcom/bbm/d/a;

    invoke-virtual {v0}, Lcom/bbm/d/a;->x()Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->b()Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v0, 0x1

    :goto_13
    if-eqz v0, :cond_3b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1a
    return-object v0

    :cond_1b
    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_25
    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/gs;

    iget-object v4, v0, Lcom/bbm/d/gs;->a:Lcom/bbm/d/gt;

    sget-object v5, Lcom/bbm/d/gt;->b:Lcom/bbm/d/gt;

    if-ne v4, v5, :cond_25

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_3b
    move-object v0, v1

    goto :goto_1a

    :cond_3d
    move v0, v2

    goto :goto_13
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lcom/bbm/d/k;->a:Lcom/bbm/d/a;

    invoke-virtual {v0}, Lcom/bbm/d/a;->x()Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->b()Z

    move-result v0

    return v0
.end method
