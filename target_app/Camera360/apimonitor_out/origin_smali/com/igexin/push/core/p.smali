.class final Lcom/igexin/push/core/p;
.super Lcom/igexin/sdk/aidl/c;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/igexin/sdk/aidl/c;-><init>()V

    return-void
.end method


# virtual methods
.method public extFunction([B)[B
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public isStarted(Ljava/lang/String;)I
    .registers 5

    invoke-static {}, Lcom/igexin/push/core/b/e;->a()Lcom/igexin/push/core/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/b/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/core/b/c;->a()Lcom/igexin/push/core/b/c;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/b/i;->c:Lcom/igexin/push/core/b/i;

    invoke-virtual {v1, v0, v2}, Lcom/igexin/push/core/b/c;->a(Ljava/lang/String;Lcom/igexin/push/core/b/i;)I

    move-result v0

    if-nez v0, :cond_19

    sget-boolean v1, Lcom/igexin/push/core/g;->l:Z

    if-nez v1, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method public onASNLConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)I
    .registers 7

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/d/c;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/igexin/push/d/c;->a(Ljava/lang/String;)I

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public onASNLNetworkConnected()I
    .registers 2

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/d/j;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, -0x1

    :goto_f
    return v0

    :cond_10
    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/d/j;->b()V

    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onASNLNetworkDisconnected()I
    .registers 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/d/j;->a()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, -0x1

    :goto_10
    return v0

    :cond_11
    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/push/d/j;->b(Z)V

    goto :goto_10
.end method

.method public onPSNLConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)I
    .registers 7

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    if-eqz v0, :cond_25

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/d/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/igexin/push/d/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_24
    return v0

    :cond_25
    const/4 v0, -0x1

    goto :goto_24
.end method

.method public receiveToPSNL(Ljava/lang/String;Ljava/lang/String;[B)I
    .registers 6

    const/4 v0, -0x1

    if-eqz p2, :cond_5

    if-nez p3, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/d/j;->a()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/d/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/igexin/push/d/c;->b(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    goto :goto_5
.end method

.method public sendByASNL(Ljava/lang/String;Ljava/lang/String;[B)I
    .registers 6

    const/4 v0, -0x1

    if-eqz p2, :cond_5

    if-nez p3, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/d/j;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/d/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/igexin/push/d/c;->a(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    goto :goto_5
.end method

.method public setSilentTime(IILjava/lang/String;)I
    .registers 7

    invoke-static {}, Lcom/igexin/push/core/b/e;->a()Lcom/igexin/push/core/b/e;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/igexin/push/core/b/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/core/b/c;->a()Lcom/igexin/push/core/b/c;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/b/i;->d:Lcom/igexin/push/core/b/i;

    invoke-virtual {v1, v0, v2}, Lcom/igexin/push/core/b/c;->a(Ljava/lang/String;Lcom/igexin/push/core/b/i;)I

    move-result v1

    if-nez v1, :cond_1f

    sget-boolean v2, Lcom/igexin/push/a/j;->o:Z

    if-eqz v2, :cond_1f

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0}, Lcom/igexin/push/core/a/f;->a(IILjava/lang/String;)V

    :cond_1f
    return v1
.end method

.method public startService(Ljava/lang/String;)I
    .registers 6

    invoke-static {}, Lcom/igexin/push/core/b/e;->a()Lcom/igexin/push/core/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/b/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/core/b/c;->a()Lcom/igexin/push/core/b/c;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/b/i;->a:Lcom/igexin/push/core/b/i;

    invoke-virtual {v1, v0, v2}, Lcom/igexin/push/core/b/c;->a(Ljava/lang/String;Lcom/igexin/push/core/b/i;)I

    move-result v1

    if-nez v1, :cond_1e

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/igexin/push/core/f;->a(Z)Z

    sput-object v0, Lcom/igexin/push/core/g;->E:Ljava/lang/String;

    :cond_1e
    return v1
.end method

.method public stopService(Ljava/lang/String;)I
    .registers 5

    invoke-static {}, Lcom/igexin/push/core/b/e;->a()Lcom/igexin/push/core/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/b/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/core/b/c;->a()Lcom/igexin/push/core/b/c;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/b/i;->b:Lcom/igexin/push/core/b/i;

    invoke-virtual {v1, v0, v2}, Lcom/igexin/push/core/b/c;->a(Ljava/lang/String;Lcom/igexin/push/core/b/i;)I

    move-result v1

    if-nez v1, :cond_1b

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/igexin/push/core/f;->a(Ljava/lang/String;)Z

    :cond_1b
    return v1
.end method
