.class public abstract Lorg/apache/log4j/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/log4j/a;
.implements Lorg/apache/log4j/k/o;


# instance fields
.field protected b:Lorg/apache/log4j/u;

.field protected c:Ljava/lang/String;

.field protected d:Lorg/apache/log4j/ag;

.field protected e:Lorg/apache/log4j/k/e;

.field protected f:Lorg/apache/log4j/k/f;

.field protected g:Lorg/apache/log4j/k/f;

.field protected h:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/log4j/c/o;

    invoke-direct {v0}, Lorg/apache/log4j/c/o;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/b;->e:Lorg/apache/log4j/k/e;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/b;->h:Z

    return-void
.end method

.method protected constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/log4j/c/o;

    invoke-direct {v0}, Lorg/apache/log4j/c/o;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/b;->e:Lorg/apache/log4j/k/e;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/b;->h:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/b;->c:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized a(Lorg/apache/log4j/k/e;)V
    .registers 3

    monitor-enter p0

    if-nez p1, :cond_a

    :try_start_3
    const-string v0, "You have tried to set a null error-handler."

    invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    :goto_8
    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    iput-object p1, p0, Lorg/apache/log4j/b;->e:Lorg/apache/log4j/k/e;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_d

    goto :goto_8

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lorg/apache/log4j/k/f;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/b;->f:Lorg/apache/log4j/k/f;

    if-nez v0, :cond_9

    iput-object p1, p0, Lorg/apache/log4j/b;->g:Lorg/apache/log4j/k/f;

    iput-object p1, p0, Lorg/apache/log4j/b;->f:Lorg/apache/log4j/k/f;

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lorg/apache/log4j/b;->g:Lorg/apache/log4j/k/f;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/k/f;->a(Lorg/apache/log4j/k/f;)V

    iput-object p1, p0, Lorg/apache/log4j/b;->g:Lorg/apache/log4j/k/f;

    goto :goto_8
.end method

.method protected abstract a(Lorg/apache/log4j/k/k;)V
.end method

.method public a(Lorg/apache/log4j/ag;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/b;->d:Lorg/apache/log4j/ag;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/apache/log4j/b;->d:Lorg/apache/log4j/ag;

    invoke-virtual {p1, v0}, Lorg/apache/log4j/ag;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public b(Lorg/apache/log4j/ag;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/b;->d:Lorg/apache/log4j/ag;

    return-void
.end method

.method public declared-synchronized b(Lorg/apache/log4j/k/k;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/log4j/b;->h:Z

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Attempted to append to closed appender named ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_44

    :cond_23
    :goto_23
    :pswitch_23
    monitor-exit p0

    return-void

    :cond_25
    :try_start_25
    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->b()Lorg/apache/log4j/v;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/b;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lorg/apache/log4j/b;->f:Lorg/apache/log4j/k/f;

    :goto_31
    if-eqz v0, :cond_40

    invoke-virtual {v0, p1}, Lorg/apache/log4j/k/f;->a(Lorg/apache/log4j/k/k;)I

    move-result v1

    packed-switch v1, :pswitch_data_48

    goto :goto_31

    :pswitch_3b
    invoke-virtual {v0}, Lorg/apache/log4j/k/f;->a()Lorg/apache/log4j/k/f;

    move-result-object v0

    goto :goto_31

    :cond_40
    :pswitch_40
    invoke-virtual {p0, p1}, Lorg/apache/log4j/b;->a(Lorg/apache/log4j/k/k;)V
    :try_end_43
    .catchall {:try_start_25 .. :try_end_43} :catchall_44

    goto :goto_23

    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_48
    .packed-switch -0x1
        :pswitch_23
        :pswitch_3b
        :pswitch_40
    .end packed-switch
.end method

.method public b(Lorg/apache/log4j/u;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/b;->b:Lorg/apache/log4j/u;

    return-void
.end method

.method public d()Lorg/apache/log4j/k/f;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/b;->f:Lorg/apache/log4j/k/f;

    return-object v0
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/b;->g:Lorg/apache/log4j/k/f;

    iput-object v0, p0, Lorg/apache/log4j/b;->f:Lorg/apache/log4j/k/f;

    return-void
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public finalize()V
    .registers 3

    iget-boolean v0, p0, Lorg/apache/log4j/b;->h:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Finalizing appender named ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/log4j/b;->a()V

    goto :goto_4
.end method

.method public g()Lorg/apache/log4j/k/e;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/b;->e:Lorg/apache/log4j/k/e;

    return-object v0
.end method

.method public h()Lorg/apache/log4j/u;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/b;->b:Lorg/apache/log4j/u;

    return-object v0
.end method

.method public i()V
    .registers 1

    return-void
.end method

.method public final j()Lorg/apache/log4j/k/f;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/b;->f:Lorg/apache/log4j/k/f;

    return-object v0
.end method

.method public k()Lorg/apache/log4j/ag;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/b;->d:Lorg/apache/log4j/ag;

    return-object v0
.end method
