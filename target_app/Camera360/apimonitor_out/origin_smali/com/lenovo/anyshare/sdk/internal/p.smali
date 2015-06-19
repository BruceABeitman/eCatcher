.class public final Lcom/lenovo/anyshare/sdk/internal/p;
.super Lcom/lenovo/anyshare/sdk/internal/o;
.source "ServerMessageChannel.java"

# interfaces
.implements Lcom/lenovo/anyshare/sdk/internal/w$a;
.implements Lcom/lenovo/channel/base/IUserListener;


# instance fields
.field e:Lcom/lenovo/anyshare/sdk/internal/w;

.field private final f:Lcom/lenovo/anyshare/sdk/internal/q;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/anyshare/sdk/internal/s;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/anyshare/sdk/internal/q;)V
    .registers 5

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/m$a;->a:Lcom/lenovo/anyshare/sdk/internal/m$a;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/anyshare/sdk/internal/o;-><init>(Lcom/lenovo/anyshare/sdk/internal/m$a;Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/p;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/lenovo/anyshare/sdk/internal/p;->f:Lcom/lenovo/anyshare/sdk/internal/q;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/p;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/i;->a(Lcom/lenovo/channel/base/IUserListener;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/p;->g:Ljava/util/Map;

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/w;

    invoke-direct {v0}, Lcom/lenovo/anyshare/sdk/internal/w;-><init>()V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/p;->e:Lcom/lenovo/anyshare/sdk/internal/w;

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/p;->e:Lcom/lenovo/anyshare/sdk/internal/w;

    invoke-virtual {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/w;->a(Lcom/lenovo/anyshare/sdk/internal/w$a;)V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/p;->e:Lcom/lenovo/anyshare/sdk/internal/w;

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/p;->f:Lcom/lenovo/anyshare/sdk/internal/q;

    iget v1, v1, Lcom/lenovo/anyshare/sdk/internal/q;->b:I

    invoke-virtual {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/w;->a(I)V

    goto :goto_a
.end method

.method public a(Lcom/lenovo/anyshare/sdk/internal/n;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/lenovo/anyshare/sdk/internal/p;->c(Lcom/lenovo/anyshare/sdk/internal/s;Lcom/lenovo/anyshare/sdk/internal/n;)V

    return-void
.end method

.method protected a(Lcom/lenovo/anyshare/sdk/internal/s;)V
    .registers 4

    invoke-interface {p1, p0}, Lcom/lenovo/anyshare/sdk/internal/s;->b(Lcom/lenovo/anyshare/sdk/internal/s$a;)V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/p;->g:Ljava/util/Map;

    invoke-interface {p1}, Lcom/lenovo/anyshare/sdk/internal/s;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/lenovo/anyshare/sdk/internal/s;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/i;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 13

    if-eqz p2, :cond_52

    invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/i;->b(Ljava/lang/String;)Lcom/lenovo/channel/base/UserInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/p;->g:Ljava/util/Map;

    iget-object v9, v3, Lcom/lenovo/channel/base/UserInfo;->ip:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/anyshare/sdk/internal/s;

    if-nez v4, :cond_16

    :goto_15
    return-void

    :cond_16
    invoke-interface {v4}, Lcom/lenovo/anyshare/sdk/internal/s;->c()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/lenovo/anyshare/sdk/internal/i;->h(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/r$b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/anyshare/sdk/internal/r$b;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V

    invoke-static {v4, v7}, Lcom/lenovo/anyshare/sdk/internal/o;->b(Lcom/lenovo/anyshare/sdk/internal/s;Lcom/lenovo/anyshare/sdk/internal/n;)V

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/cg;->a()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/i;->f(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/anyshare/sdk/internal/r$b;

    invoke-static {v4, v2}, Lcom/lenovo/anyshare/sdk/internal/o;->b(Lcom/lenovo/anyshare/sdk/internal/s;Lcom/lenovo/anyshare/sdk/internal/n;)V

    goto :goto_36

    :cond_46
    iget-object v8, v3, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;

    invoke-static {v8}, Lcom/lenovo/anyshare/sdk/internal/i;->g(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/r$b;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    invoke-virtual {p0, v4, v5}, Lcom/lenovo/anyshare/sdk/internal/p;->c(Lcom/lenovo/anyshare/sdk/internal/s;Lcom/lenovo/anyshare/sdk/internal/n;)V

    :cond_52
    invoke-static {p1, p2}, Lcom/lenovo/anyshare/sdk/internal/i;->a(Ljava/lang/String;Z)V

    goto :goto_15
.end method

.method protected a(Lcom/lenovo/anyshare/sdk/internal/s;Lcom/lenovo/anyshare/sdk/internal/n;)Z
    .registers 9

    const/4 v3, 0x1

    instance-of v4, p2, Lcom/lenovo/anyshare/sdk/internal/r$b;

    if-eqz v4, :cond_c

    move-object v0, p2

    check-cast v0, Lcom/lenovo/anyshare/sdk/internal/r$b;

    invoke-static {v0, v3}, Lcom/lenovo/anyshare/sdk/internal/i;->a(Lcom/lenovo/anyshare/sdk/internal/r$b;Z)V

    :cond_b
    :goto_b
    return v3

    :cond_c
    instance-of v4, p2, Lcom/lenovo/anyshare/sdk/internal/r$a;

    if-eqz v4, :cond_16

    check-cast p2, Lcom/lenovo/anyshare/sdk/internal/r$a;

    invoke-static {p2}, Lcom/lenovo/anyshare/sdk/internal/i;->a(Lcom/lenovo/anyshare/sdk/internal/r$a;)V

    goto :goto_b

    :cond_16
    invoke-virtual {p2}, Lcom/lenovo/anyshare/sdk/internal/n;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/lenovo/anyshare/sdk/internal/n;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v1, :cond_2e

    if-nez v2, :cond_31

    :cond_2e
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/p;->c(Lcom/lenovo/anyshare/sdk/internal/s;Lcom/lenovo/anyshare/sdk/internal/n;)V

    :cond_31
    if-nez v1, :cond_35

    if-eqz v2, :cond_b

    :cond_35
    const/4 v3, 0x0

    goto :goto_b
.end method

.method public b()V
    .registers 7

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/p;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-nez v3, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->d()V

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/p;->e:Lcom/lenovo/anyshare/sdk/internal/w;

    invoke-virtual {v3, p0}, Lcom/lenovo/anyshare/sdk/internal/w;->b(Lcom/lenovo/anyshare/sdk/internal/w$a;)V

    :try_start_13
    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/p;->g:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_95

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/anyshare/sdk/internal/s;

    invoke-interface {v2}, Lcom/lenovo/anyshare/sdk/internal/s;->a()Z
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_2c} :catch_76

    move-result v3

    if-nez v3, :cond_1d

    :try_start_2f
    const-string/jumbo v3, "MessageChannel.Server"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "close client:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/lenovo/anyshare/sdk/internal/s;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    invoke-interface {v2}, Lcom/lenovo/anyshare/sdk/internal/s;->b()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_55} :catch_56
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_55} :catch_a2
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_55} :catch_76

    goto :goto_1d

    :catch_56
    move-exception v0

    :try_start_57
    const-string/jumbo v3, "MessageChannel.Server"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "close client error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/RuntimeException; {:try_start_57 .. :try_end_75} :catch_76

    goto :goto_1d

    :catch_76
    move-exception v0

    const-string/jumbo v3, "MessageChannel.Server"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "close all clients error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_95
    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/p;->e:Lcom/lenovo/anyshare/sdk/internal/w;

    invoke-virtual {v3}, Lcom/lenovo/anyshare/sdk/internal/w;->b()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/p;->e:Lcom/lenovo/anyshare/sdk/internal/w;

    invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/i;->b(Lcom/lenovo/channel/base/IUserListener;)V

    goto/16 :goto_a

    :catch_a2
    move-exception v0

    :try_start_a3
    const-string/jumbo v3, "MessageChannel.Server"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "close client error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c1
    .catch Ljava/lang/RuntimeException; {:try_start_a3 .. :try_end_c1} :catch_76

    goto/16 :goto_1d
.end method

.method public c(Lcom/lenovo/anyshare/sdk/internal/s;)V
    .registers 6

    const-string/jumbo v1, "MessageChannel.Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recieve new client pipe:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/lenovo/anyshare/sdk/internal/s;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->c(Ljava/lang/String;)V

    const-string/jumbo v1, "0.0.0.0"

    invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/i;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/p;->g:Ljava/util/Map;

    invoke-interface {p1}, Lcom/lenovo/anyshare/sdk/internal/s;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, p0}, Lcom/lenovo/anyshare/sdk/internal/s;->a(Lcom/lenovo/anyshare/sdk/internal/s$a;)V

    invoke-interface {p1}, Lcom/lenovo/anyshare/sdk/internal/s;->e()V

    return-void
.end method

.method protected c(Lcom/lenovo/anyshare/sdk/internal/s;Lcom/lenovo/anyshare/sdk/internal/n;)V
    .registers 15

    const/4 v5, 0x0

    :try_start_1
    new-instance v6, Lcom/lenovo/anyshare/sdk/internal/u$a;

    invoke-virtual {p2}, Lcom/lenovo/anyshare/sdk/internal/n;->d()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/lenovo/anyshare/sdk/internal/u$a;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_e} :catch_12

    move-object v5, v6

    :goto_f
    if-nez v5, :cond_1e

    :cond_11
    :goto_11
    return-void

    :catch_12
    move-exception v0

    const-string/jumbo v9, "MessageChannel.Server"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_1e
    invoke-virtual {p2}, Lcom/lenovo/anyshare/sdk/internal/n;->h()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8c

    if-nez p1, :cond_56

    invoke-virtual {p2}, Lcom/lenovo/anyshare/sdk/internal/n;->g()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_56

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Lcom/lenovo/anyshare/sdk/internal/n;->g()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_56

    invoke-virtual {p2}, Lcom/lenovo/anyshare/sdk/internal/n;->g()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lenovo/anyshare/sdk/internal/i;->b(Ljava/lang/String;)Lcom/lenovo/channel/base/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_56

    iget-object v9, p0, Lcom/lenovo/anyshare/sdk/internal/p;->g:Ljava/util/Map;

    iget-object v10, v2, Lcom/lenovo/channel/base/UserInfo;->ip:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lenovo/anyshare/sdk/internal/s;

    :cond_56
    iget-object v9, p0, Lcom/lenovo/anyshare/sdk/internal/p;->g:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_60
    :goto_60
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/lenovo/anyshare/sdk/internal/i;->c(Ljava/lang/String;)Lcom/lenovo/channel/base/UserInfo;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-eq v9, p1, :cond_60

    if-eqz v8, :cond_60

    iget-boolean v9, v8, Lcom/lenovo/channel/base/UserInfo;->online:Z

    if-eqz v9, :cond_60

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/anyshare/sdk/internal/s;

    invoke-static {v9, v5}, Lcom/lenovo/anyshare/sdk/internal/o;->a(Lcom/lenovo/anyshare/sdk/internal/s;Lcom/lenovo/anyshare/sdk/internal/t;)V

    goto :goto_60

    :cond_8c
    invoke-virtual {p2}, Lcom/lenovo/anyshare/sdk/internal/n;->h()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lenovo/anyshare/sdk/internal/i;->b(Ljava/lang/String;)Lcom/lenovo/channel/base/UserInfo;

    move-result-object v8

    if-nez v8, :cond_c5

    const-string/jumbo v9, "MessageChannel.Server"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "drop message due to target user not found: user = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lcom/lenovo/anyshare/sdk/internal/n;->h()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_c5
    iget-object v9, v8, Lcom/lenovo/channel/base/UserInfo;->ip:Ljava/lang/String;

    invoke-static {v9}, Lcom/lenovo/anyshare/sdk/internal/ah;->c(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/lenovo/anyshare/sdk/internal/p;->g:Ljava/util/Map;

    iget-object v10, v8, Lcom/lenovo/channel/base/UserInfo;->ip:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/anyshare/sdk/internal/s;

    if-nez v7, :cond_103

    const-string/jumbo v9, "MessageChannel.Server"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "drop message due to target pipe not found: ip = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/lenovo/channel/base/UserInfo;->ip:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_103
    invoke-static {v7, v5}, Lcom/lenovo/anyshare/sdk/internal/o;->a(Lcom/lenovo/anyshare/sdk/internal/s;Lcom/lenovo/anyshare/sdk/internal/t;)V

    goto/16 :goto_11
.end method

.method public onLocalUserChanged(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
    .registers 5

    sget-object v1, Lcom/lenovo/channel/base/IUserListener$UserEventType;->OFFLINE:Lcom/lenovo/channel/base/IUserListener$UserEventType;

    if-ne p1, v1, :cond_13

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/i;->h(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/r$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/r$b;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Z)V

    invoke-virtual {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/p;->a(Lcom/lenovo/anyshare/sdk/internal/n;)V

    :cond_13
    return-void
.end method

.method public onRemoteUserChanged(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
    .registers 7

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->a()Lcom/lenovo/channel/base/UserInfo;

    move-result-object v3

    iget-boolean v2, v3, Lcom/lenovo/channel/base/UserInfo;->online:Z

    if-nez v2, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    sget-object v3, Lcom/lenovo/channel/base/IUserListener$UserEventType;->OFFLINE:Lcom/lenovo/channel/base/IUserListener$UserEventType;

    if-ne p1, v3, :cond_8

    iget-boolean v3, p2, Lcom/lenovo/channel/base/UserInfo;->kicked:Z

    if-eqz v3, :cond_23

    new-instance v1, Lcom/lenovo/anyshare/sdk/internal/r$a;

    invoke-direct {v1}, Lcom/lenovo/anyshare/sdk/internal/r$a;-><init>()V

    iget-object v3, p2, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/lenovo/anyshare/sdk/internal/r$a;->b(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/lenovo/anyshare/sdk/internal/r$a;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/lenovo/anyshare/sdk/internal/p;->a(Lcom/lenovo/anyshare/sdk/internal/n;)V

    :cond_23
    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/cg;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v3, p2, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;

    invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/i;->g(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/r$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/r$b;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Z)V

    invoke-virtual {p0, v1}, Lcom/lenovo/anyshare/sdk/internal/p;->a(Lcom/lenovo/anyshare/sdk/internal/n;)V

    goto :goto_8
.end method
