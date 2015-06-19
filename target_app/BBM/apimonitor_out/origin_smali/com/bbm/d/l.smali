.class final Lcom/bbm/d/l;
.super Lcom/bbm/d/b/q;
.source "BbmdsModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/d/b/q",
        "<",
        "Lcom/bbm/d/gj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/d/gk;

.field final synthetic b:Lcom/bbm/d/a;


# direct methods
.method constructor <init>(Lcom/bbm/d/a;Lcom/bbm/d/gk;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/d/l;->b:Lcom/bbm/d/a;

    iput-object p2, p0, Lcom/bbm/d/l;->a:Lcom/bbm/d/gk;

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
            "Lcom/bbm/d/gj;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/d/l;->b:Lcom/bbm/d/a;

    iget-object v1, p0, Lcom/bbm/d/l;->a:Lcom/bbm/d/gk;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/gk;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->b()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/gj;

    sget-object v4, Lcom/bbm/d/m;->b:[I

    iget-object v5, v0, Lcom/bbm/d/gj;->g:Lcom/bbm/util/bh;

    invoke-virtual {v5}, Lcom/bbm/util/bh;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_52

    goto :goto_27

    :pswitch_41
    const/4 v0, 0x1

    move v1, v0

    goto :goto_27

    :pswitch_44
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_48
    if-eqz v1, :cond_4f

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_12

    :cond_4f
    move-object v0, v2

    goto :goto_12

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_41
        :pswitch_44
    .end packed-switch
.end method

.method public final b()Z
    .registers 5

    iget-object v0, p0, Lcom/bbm/d/l;->b:Lcom/bbm/d/a;

    iget-object v1, p0, Lcom/bbm/d/l;->a:Lcom/bbm/d/gk;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/gk;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->b()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/gj;

    iget-object v0, v0, Lcom/bbm/d/gj;->g:Lcom/bbm/util/bh;

    sget-object v3, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v0, v3, :cond_2e

    const/4 v0, 0x1

    :goto_2b
    move v1, v0

    goto :goto_18

    :cond_2d
    return v1

    :cond_2e
    move v0, v1

    goto :goto_2b
.end method
