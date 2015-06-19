.class public abstract Ld/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/a/d;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ld/a/e/c;

.field private f:Ld/a/e/g;

.field private g:Ld/a/d/a;

.field private h:Ld/a/d/a;

.field private i:Z

.field private final j:Ljava/util/Random;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Ld/a/a;->j:Ljava/util/Random;

    iput-object p1, p0, Ld/a/a;->b:Ljava/lang/String;

    iput-object p2, p0, Ld/a/a;->c:Ljava/lang/String;

    new-instance v0, Ld/a/e/b;

    invoke-direct {v0}, Ld/a/e/b;-><init>()V

    invoke-virtual {p0, v0}, Ld/a/a;->a(Ld/a/e/c;)V

    new-instance v0, Ld/a/e/a;

    invoke-direct {v0}, Ld/a/e/a;-><init>()V

    invoke-virtual {p0, v0}, Ld/a/a;->a(Ld/a/e/g;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ld/a/d/b;)Ld/a/d/b;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ld/a/a;->b:Ljava/lang/String;

    if-nez v0, :cond_10

    new-instance v0, Ld/a/c/c;

    const-string v1, "consumer key not set"

    invoke-direct {v0, v1}, Ld/a/c/c;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Ld/a/a;->c:Ljava/lang/String;

    if-nez v0, :cond_1c

    new-instance v0, Ld/a/c/c;

    const-string v1, "consumer secret not set"

    invoke-direct {v0, v1}, Ld/a/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Ld/a/d/a;

    invoke-direct {v0}, Ld/a/d/a;-><init>()V

    iput-object v0, p0, Ld/a/a;->h:Ld/a/d/a;
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_d

    :try_start_23
    iget-object v0, p0, Ld/a/a;->g:Ld/a/d/a;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Ld/a/a;->h:Ld/a/d/a;

    iget-object v1, p0, Ld/a/a;->g:Ld/a/d/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ld/a/d/a;->a(Ljava/util/Map;Z)V

    :cond_2f
    iget-object v0, p0, Ld/a/a;->h:Ld/a/d/a;

    invoke-virtual {p0, p1, v0}, Ld/a/a;->a(Ld/a/d/b;Ld/a/d/a;)V

    iget-object v0, p0, Ld/a/a;->h:Ld/a/d/a;

    invoke-virtual {p0, p1, v0}, Ld/a/a;->c(Ld/a/d/b;Ld/a/d/a;)V

    iget-object v0, p0, Ld/a/a;->h:Ld/a/d/a;

    invoke-virtual {p0, p1, v0}, Ld/a/a;->b(Ld/a/d/b;Ld/a/d/a;)V

    iget-object v0, p0, Ld/a/a;->h:Ld/a/d/a;

    invoke-virtual {p0, v0}, Ld/a/a;->b(Ld/a/d/a;)V

    iget-object v0, p0, Ld/a/a;->h:Ld/a/d/a;

    const-string v1, "oauth_signature"

    invoke-virtual {v0, v1}, Ld/a/d/a;->d(Ljava/lang/Object;)Ljava/util/SortedSet;
    :try_end_4a
    .catchall {:try_start_23 .. :try_end_4a} :catchall_d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_4a} :catch_69

    :try_start_4a
    iget-object v0, p0, Ld/a/a;->e:Ld/a/e/c;

    iget-object v1, p0, Ld/a/a;->h:Ld/a/d/a;

    invoke-virtual {v0, p1, v1}, Ld/a/e/c;->a(Ld/a/d/b;Ld/a/d/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "signature"

    invoke-static {v1, v0}, Ld/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ld/a/a;->f:Ld/a/e/g;

    iget-object v2, p0, Ld/a/a;->h:Ld/a/d/a;

    invoke-interface {v1, v0, p1, v2}, Ld/a/e/g;->a(Ljava/lang/String;Ld/a/d/b;Ld/a/d/a;)Ljava/lang/String;

    const-string v0, "Request URL"

    invoke-interface {p1}, Ld/a/d/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ld/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_4a .. :try_end_67} :catchall_d

    monitor-exit p0

    return-object p1

    :catch_69
    move-exception v0

    :try_start_6a
    new-instance v1, Ld/a/c/a;

    invoke-direct {v1, v0}, Ld/a/c/a;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_d
.end method

.method public declared-synchronized a(Ljava/lang/Object;)Ld/a/d/b;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ld/a/a;->b(Ljava/lang/Object;)Ld/a/d/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld/a/a;->a(Ld/a/d/b;)Ld/a/d/b;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a()Ljava/lang/String;
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Ld/a/a/e;

    invoke-direct {v0, p1}, Ld/a/a/e;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ld/a/a;->f:Ld/a/e/g;

    new-instance v2, Ld/a/e/e;

    invoke-direct {v2}, Ld/a/e/e;-><init>()V

    iput-object v2, p0, Ld/a/a;->f:Ld/a/e/g;

    invoke-virtual {p0, v0}, Ld/a/a;->a(Ld/a/d/b;)Ld/a/d/b;

    iput-object v1, p0, Ld/a/a;->f:Ld/a/e/g;

    invoke-interface {v0}, Ld/a/d/b;->b()Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1a

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ld/a/d/a;)V
    .registers 2

    iput-object p1, p0, Ld/a/a;->g:Ld/a/d/a;

    return-void
.end method

.method protected a(Ld/a/d/b;Ld/a/d/a;)V
    .registers 5

    const-string v0, "Authorization"

    invoke-interface {p1, v0}, Ld/a/d/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/a/c;->e(Ljava/lang/String;)Ld/a/d/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Ld/a/d/a;->a(Ljava/util/Map;Z)V

    return-void
.end method

.method public a(Ld/a/e/c;)V
    .registers 3

    iput-object p1, p0, Ld/a/a;->e:Ld/a/e/c;

    iget-object v0, p0, Ld/a/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ld/a/e/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ld/a/e/g;)V
    .registers 2

    iput-object p1, p0, Ld/a/a;->f:Ld/a/e/g;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Ld/a/a;->d:Ljava/lang/String;

    iget-object v0, p0, Ld/a/a;->e:Ld/a/e/c;

    invoke-virtual {v0, p2}, Ld/a/e/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Ld/a/a;->i:Z

    return-void
.end method

.method protected abstract b(Ljava/lang/Object;)Ld/a/d/b;
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected b(Ld/a/d/a;)V
    .registers 5

    const/4 v2, 0x1

    const-string v0, "oauth_consumer_key"

    invoke-virtual {p1, v0}, Ld/a/d/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "oauth_consumer_key"

    iget-object v1, p0, Ld/a/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Ld/a/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    :cond_10
    const-string v0, "oauth_signature_method"

    invoke-virtual {p1, v0}, Ld/a/d/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "oauth_signature_method"

    iget-object v1, p0, Ld/a/a;->e:Ld/a/e/c;

    invoke-virtual {v1}, Ld/a/e/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Ld/a/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    :cond_23
    const-string v0, "oauth_timestamp"

    invoke-virtual {p1, v0}, Ld/a/d/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "oauth_timestamp"

    invoke-virtual {p0}, Ld/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Ld/a/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    :cond_34
    const-string v0, "oauth_nonce"

    invoke-virtual {p1, v0}, Ld/a/d/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    const-string v0, "oauth_nonce"

    invoke-virtual {p0}, Ld/a/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Ld/a/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    :cond_45
    const-string v0, "oauth_version"

    invoke-virtual {p1, v0}, Ld/a/d/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    const-string v0, "oauth_version"

    const-string v1, "1.0"

    invoke-virtual {p1, v0, v1, v2}, Ld/a/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    :cond_54
    const-string v0, "oauth_token"

    invoke-virtual {p1, v0}, Ld/a/d/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    iget-object v0, p0, Ld/a/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Ld/a/a;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    :cond_6a
    iget-boolean v0, p0, Ld/a/a;->i:Z

    if-eqz v0, :cond_75

    :cond_6e
    const-string v0, "oauth_token"

    iget-object v1, p0, Ld/a/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Ld/a/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    :cond_75
    return-void
.end method

.method protected b(Ld/a/d/b;Ld/a/d/a;)V
    .registers 5

    invoke-interface {p1}, Ld/a/d/b;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ld/a/d/b;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ld/a/c;->a(Ljava/io/InputStream;)Ld/a/d/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Ld/a/d/a;->a(Ljava/util/Map;Z)V

    :cond_1a
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld/a/a;->e:Ld/a/e/c;

    invoke-virtual {v0}, Ld/a/e/c;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ld/a/d/b;Ld/a/d/a;)V
    .registers 5

    invoke-interface {p1}, Ld/a/d/b;->b()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1a

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/a/c;->c(Ljava/lang/String;)Ld/a/d/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Ld/a/d/a;->a(Ljava/util/Map;Z)V

    :cond_1a
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ld/a/d/a;
    .registers 2

    iget-object v0, p0, Ld/a/a;->h:Ld/a/d/a;

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ld/a/a;->j:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
