.class final Lcom/squareup/picasso/k;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private final a:Lcom/squareup/picasso/j;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/squareup/picasso/j;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/squareup/picasso/k;->a:Lcom/squareup/picasso/j;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 12

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_140

    :pswitch_7
    sget-object v0, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;

    new-instance v1, Lcom/squareup/picasso/k$1;

    invoke-direct {v1, p0, p1}, Lcom/squareup/picasso/k$1;-><init>(Lcom/squareup/picasso/k;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_11
    :goto_11
    return-void

    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/squareup/picasso/a;

    iget-object v1, p0, Lcom/squareup/picasso/k;->a:Lcom/squareup/picasso/j;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/j;->a(Lcom/squareup/picasso/a;)V

    goto :goto_11

    :pswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/squareup/picasso/a;

    iget-object v4, p0, Lcom/squareup/picasso/k;->a:Lcom/squareup/picasso/j;

    iget-object v5, v0, Lcom/squareup/picasso/a;->h:Ljava/lang/String;

    iget-object v1, v4, Lcom/squareup/picasso/j;->e:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/picasso/d;

    if-eqz v1, :cond_84

    iget-object v6, v1, Lcom/squareup/picasso/d;->h:Lcom/squareup/picasso/a;

    if-ne v6, v0, :cond_ab

    const/4 v6, 0x0

    iput-object v6, v1, Lcom/squareup/picasso/d;->h:Lcom/squareup/picasso/a;

    :cond_35
    :goto_35
    iget-object v6, v1, Lcom/squareup/picasso/d;->a:Lcom/squareup/picasso/Picasso;

    iget-boolean v6, v6, Lcom/squareup/picasso/Picasso;->k:Z

    if-eqz v6, :cond_4e

    const-string v6, "Hunter"

    const-string v7, "removed"

    iget-object v8, v0, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/ab;

    invoke-virtual {v8}, Lcom/squareup/picasso/ab;->a()Ljava/lang/String;

    move-result-object v8

    const-string v9, "from "

    invoke-static {v1, v9}, Lcom/squareup/picasso/am;->a(Lcom/squareup/picasso/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/squareup/picasso/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    iget-object v6, v1, Lcom/squareup/picasso/d;->h:Lcom/squareup/picasso/a;

    if-nez v6, :cond_b5

    iget-object v6, v1, Lcom/squareup/picasso/d;->i:Ljava/util/List;

    if-eqz v6, :cond_5e

    iget-object v6, v1, Lcom/squareup/picasso/d;->i:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b5

    :cond_5e
    iget-object v6, v1, Lcom/squareup/picasso/d;->k:Ljava/util/concurrent/Future;

    if-eqz v6, :cond_b5

    iget-object v1, v1, Lcom/squareup/picasso/d;->k:Ljava/util/concurrent/Future;

    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_b5

    :goto_6a
    if-eqz v2, :cond_84

    iget-object v1, v4, Lcom/squareup/picasso/j;->e:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/squareup/picasso/a;->a:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->k:Z

    if-eqz v1, :cond_84

    const-string v1, "Dispatcher"

    const-string v2, "canceled"

    iget-object v3, v0, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/ab;

    invoke-virtual {v3}, Lcom/squareup/picasso/ab;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/squareup/picasso/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_84
    iget-object v1, v4, Lcom/squareup/picasso/j;->f:Ljava/util/Map;

    iget-object v0, v0, Lcom/squareup/picasso/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/a;

    if-eqz v0, :cond_11

    iget-object v1, v0, Lcom/squareup/picasso/a;->a:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->k:Z

    if-eqz v1, :cond_11

    const-string v1, "Dispatcher"

    const-string v2, "canceled"

    iget-object v0, v0, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/ab;

    invoke-virtual {v0}, Lcom/squareup/picasso/ab;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "from replaying"

    invoke-static {v1, v2, v0, v3}, Lcom/squareup/picasso/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_ab
    iget-object v6, v1, Lcom/squareup/picasso/d;->i:Ljava/util/List;

    if-eqz v6, :cond_35

    iget-object v6, v1, Lcom/squareup/picasso/d;->i:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_b5
    move v2, v3

    goto :goto_6a

    :pswitch_b7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/squareup/picasso/d;

    iget-object v1, p0, Lcom/squareup/picasso/k;->a:Lcom/squareup/picasso/j;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/j;->c(Lcom/squareup/picasso/d;)V

    goto/16 :goto_11

    :pswitch_c2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/squareup/picasso/d;

    iget-object v1, p0, Lcom/squareup/picasso/k;->a:Lcom/squareup/picasso/j;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/j;->b(Lcom/squareup/picasso/d;)V

    goto/16 :goto_11

    :pswitch_cd
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/squareup/picasso/d;

    iget-object v1, p0, Lcom/squareup/picasso/k;->a:Lcom/squareup/picasso/j;

    invoke-virtual {v1, v0, v3}, Lcom/squareup/picasso/j;->a(Lcom/squareup/picasso/d;Z)V

    goto/16 :goto_11

    :pswitch_d8
    iget-object v0, p0, Lcom/squareup/picasso/k;->a:Lcom/squareup/picasso/j;

    invoke-virtual {v0}, Lcom/squareup/picasso/j;->a()V

    goto/16 :goto_11

    :pswitch_df
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkInfo;

    iget-object v2, p0, Lcom/squareup/picasso/k;->a:Lcom/squareup/picasso/j;

    iget-object v1, v2, Lcom/squareup/picasso/j;->c:Ljava/util/concurrent/ExecutorService;

    instance-of v1, v1, Lcom/squareup/picasso/aa;

    if-eqz v1, :cond_f2

    iget-object v1, v2, Lcom/squareup/picasso/j;->c:Ljava/util/concurrent/ExecutorService;

    check-cast v1, Lcom/squareup/picasso/aa;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/aa;->a(Landroid/net/NetworkInfo;)V

    :cond_f2
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v2, Lcom/squareup/picasso/j;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, v2, Lcom/squareup/picasso/j;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/a;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v3, v0, Lcom/squareup/picasso/a;->a:Lcom/squareup/picasso/Picasso;

    iget-boolean v3, v3, Lcom/squareup/picasso/Picasso;->k:Z

    if-eqz v3, :cond_12e

    const-string v3, "Dispatcher"

    const-string v4, "replaying"

    iget-object v5, v0, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/ab;

    invoke-virtual {v5}, Lcom/squareup/picasso/ab;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/squareup/picasso/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12e
    invoke-virtual {v2, v0}, Lcom/squareup/picasso/j;->a(Lcom/squareup/picasso/a;)V

    goto :goto_10c

    :pswitch_132
    iget-object v1, p0, Lcom/squareup/picasso/k;->a:Lcom/squareup/picasso/j;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_13d

    move v0, v2

    :goto_139
    iput-boolean v0, v1, Lcom/squareup/picasso/j;->n:Z

    goto/16 :goto_11

    :cond_13d
    move v0, v3

    goto :goto_139

    nop

    :pswitch_data_140
    .packed-switch 0x1
        :pswitch_12
        :pswitch_1c
        :pswitch_7
        :pswitch_b7
        :pswitch_c2
        :pswitch_cd
        :pswitch_d8
        :pswitch_7
        :pswitch_df
        :pswitch_132
    .end packed-switch
.end method
