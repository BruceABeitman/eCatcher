.class Lcom/twidroid/ui/a/ap$1;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ui/a/ap;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/twidroid/ui/a/ap;


# direct methods
.method constructor <init>(Lcom/twidroid/ui/a/ap;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/ui/a/ap$1;->b:Lcom/twidroid/ui/a/ap;

    iput-object p2, p0, Lcom/twidroid/ui/a/ap$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/ap$1;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/ui/a/ap$1;->b:Lcom/twidroid/ui/a/ap;

    invoke-static {v0}, Lcom/twidroid/ui/a/ap;->a(Lcom/twidroid/ui/a/ap;)Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/ui/a/ap$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->q(Ljava/lang/String;)Ljava/util/List;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    sget-object v1, Lcom/twidroid/ui/a/ap;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_10
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/ap$1;->a(Ljava/util/List;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .registers 5

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/twidroid/ui/a/ap$1;->b:Lcom/twidroid/ui/a/ap;

    invoke-static {v0}, Lcom/twidroid/ui/a/ap;->b(Lcom/twidroid/ui/a/ap;)Lcom/twidroid/model/twitter/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/e;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/d;

    iget-object v2, p0, Lcom/twidroid/ui/a/ap$1;->b:Lcom/twidroid/ui/a/ap;

    invoke-static {v2}, Lcom/twidroid/ui/a/ap;->b(Lcom/twidroid/ui/a/ap;)Lcom/twidroid/model/twitter/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/twidroid/model/twitter/e;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_26
    iget-object v0, p0, Lcom/twidroid/ui/a/ap$1;->b:Lcom/twidroid/ui/a/ap;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/ap;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/twidroid/ui/a/ap$1;->b:Lcom/twidroid/ui/a/ap;

    invoke-static {v0}, Lcom/twidroid/ui/a/ap;->c(Lcom/twidroid/ui/a/ap;)Lcom/twidroid/ui/a/aq;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twidroid/ui/a/ap$1;->b:Lcom/twidroid/ui/a/ap;

    invoke-static {v0}, Lcom/twidroid/ui/a/ap;->c(Lcom/twidroid/ui/a/ap;)Lcom/twidroid/ui/a/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/ui/a/ap$1;->b:Lcom/twidroid/ui/a/ap;

    invoke-static {v1}, Lcom/twidroid/ui/a/ap;->b(Lcom/twidroid/ui/a/ap;)Lcom/twidroid/model/twitter/e;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twidroid/ui/a/aq;->a(Lcom/twidroid/model/twitter/e;)V

    goto :goto_2
.end method
