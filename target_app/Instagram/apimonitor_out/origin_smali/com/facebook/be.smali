.class final Lcom/facebook/be;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/facebook/bl;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/facebook/bl;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/be;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/facebook/be;->b:Lcom/facebook/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/be;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/facebook/bg;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/bn;

    invoke-interface {v1, v0}, Lcom/facebook/bg;->a(Lcom/facebook/bn;)V

    goto :goto_6

    :cond_1e
    iget-object v0, p0, Lcom/facebook/be;->b:Lcom/facebook/bl;

    invoke-virtual {v0}, Lcom/facebook/bl;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/bm;

    iget-object v2, p0, Lcom/facebook/be;->b:Lcom/facebook/bl;

    invoke-interface {v0}, Lcom/facebook/bm;->a()V

    goto :goto_28

    :cond_3a
    return-void
.end method
