.class public final Lcom/lenovo/anyshare/sdk/internal/l;
.super Lcom/lenovo/anyshare/sdk/internal/o;
.source "ClientMessageChannel.java"

# interfaces
.implements Lcom/lenovo/channel/base/IUserListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/anyshare/sdk/internal/l$1;
    }
.end annotation


# instance fields
.field private final e:Lcom/lenovo/anyshare/sdk/internal/q;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:Lcom/lenovo/anyshare/sdk/internal/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/anyshare/sdk/internal/q;)V
    .registers 5

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/m$a;->b:Lcom/lenovo/anyshare/sdk/internal/m$a;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/anyshare/sdk/internal/o;-><init>(Lcom/lenovo/anyshare/sdk/internal/m$a;Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/l;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/lenovo/anyshare/sdk/internal/l;->e:Lcom/lenovo/anyshare/sdk/internal/q;

    return-void
.end method

.method private static a(Ljava/lang/String;I)Lcom/lenovo/anyshare/sdk/internal/v;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v3, "MessageChannel.Client"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "client connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    invoke-virtual {v2, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/v;

    invoke-direct {v0, v2}, Lcom/lenovo/anyshare/sdk/internal/v;-><init>(Ljava/net/Socket;)V

    new-instance v3, Lcom/lenovo/anyshare/sdk/internal/u$b;

    invoke-direct {v3}, Lcom/lenovo/anyshare/sdk/internal/u$b;-><init>()V

    invoke-virtual {v0, v3}, Lcom/lenovo/anyshare/sdk/internal/v;->a(Lcom/lenovo/anyshare/sdk/internal/t;)V

    return-object v0
.end method

.method private declared-synchronized a(Z)V
    .registers 5

    monitor-enter p0

    if-eqz p1, :cond_9

    :try_start_3
    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/l;->g:Lcom/lenovo/anyshare/sdk/internal/s;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_23

    if-nez v2, :cond_9

    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    if-eqz p1, :cond_26

    :try_start_b
    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/l;->g:Lcom/lenovo/anyshare/sdk/internal/s;

    invoke-interface {v2}, Lcom/lenovo/anyshare/sdk/internal/s;->c()Ljava/lang/String;

    move-result-object v0

    :goto_11
    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/i;->h(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/r$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/r$b;->a()Z

    move-result v2

    if-ne p1, v2, :cond_28

    const/4 v2, 0x1

    :goto_1c
    invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V

    invoke-virtual {p0, v1}, Lcom/lenovo/anyshare/sdk/internal/l;->a(Lcom/lenovo/anyshare/sdk/internal/n;)V
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_23

    goto :goto_7

    :catchall_23
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_26
    const/4 v0, 0x0

    goto :goto_11

    :cond_28
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method private declared-synchronized d()Lcom/lenovo/anyshare/sdk/internal/s;
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string/jumbo v1, "MessageChannel.Client"

    const-string/jumbo v2, "waiting for pipe connected..."

    invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/l;->g:Lcom/lenovo/anyshare/sdk/internal/s;

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/l;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_49

    move-result v1

    if-eqz v1, :cond_1d

    const-wide/16 v1, 0x7d0

    :try_start_18
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_49
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_a

    :catch_1c
    move-exception v0

    :cond_1d
    :try_start_1d
    const-string/jumbo v2, "MessageChannel.Client"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pipe connected: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/l;->g:Lcom/lenovo/anyshare/sdk/internal/s;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/l;->g:Lcom/lenovo/anyshare/sdk/internal/s;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/l;->g:Lcom/lenovo/anyshare/sdk/internal/s;
    :try_end_43
    .catchall {:try_start_1d .. :try_end_43} :catchall_49

    monitor-exit p0

    return-object v1

    :cond_45
    :try_start_45
    const-string/jumbo v1, ""
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_36

    :catchall_49
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/l;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_64

    move-result v2

    if-nez v2, :cond_d

    :goto_b
    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/i;->a(Lcom/lenovo/channel/base/IUserListener;)V

    :goto_10
    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/l;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_64

    move-result v2

    if-eqz v2, :cond_60

    :try_start_18
    const-string/jumbo v2, "MessageChannel.Client"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "connecting to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/l;->e:Lcom/lenovo/anyshare/sdk/internal/q;

    iget v4, v4, Lcom/lenovo/anyshare/sdk/internal/q;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/l;->e:Lcom/lenovo/anyshare/sdk/internal/q;

    iget-object v2, v2, Lcom/lenovo/anyshare/sdk/internal/q;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/l;->e:Lcom/lenovo/anyshare/sdk/internal/q;

    iget v3, v3, Lcom/lenovo/anyshare/sdk/internal/q;->b:I

    invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/l;->a(Ljava/lang/String;I)Lcom/lenovo/anyshare/sdk/internal/v;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/l;->g:Lcom/lenovo/anyshare/sdk/internal/s;

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/l;->g:Lcom/lenovo/anyshare/sdk/internal/s;

    invoke-interface {v2, p0}, Lcom/lenovo/anyshare/sdk/internal/s;->a(Lcom/lenovo/anyshare/sdk/internal/s$a;)V

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/l;->g:Lcom/lenovo/anyshare/sdk/internal/s;

    invoke-interface {v2}, Lcom/lenovo/anyshare/sdk/internal/s;->e()V

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/l;->g:Lcom/lenovo/anyshare/sdk/internal/s;

    invoke-interface {v2}, Lcom/lenovo/anyshare/sdk/internal/s;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->c(Ljava/lang/String;)V

    const-string/jumbo v2, "0.0.0.0"

    invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/i;->d(Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_18 .. :try_end_60} :catchall_64
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_60} :catch_67

    :cond_60
    :try_start_60
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    goto :goto_b

    :catchall_64
    move-exception v2

    monitor-exit p0

    throw v2

    :catch_67
    move-exception v0

    :try_start_68
    const-string/jumbo v2, "MessageChannel.Client"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "connection failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_68 .. :try_end_86} :catchall_64

    const-wide/16 v2, 0x7d0

    :try_start_88
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_64
    .catch Ljava/lang/InterruptedException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_10

    :catch_8c
    move-exception v2

    goto :goto_10
.end method

.method public a(Lcom/lenovo/anyshare/sdk/internal/n;)V
    .registers 4

    invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/l;->d()Lcom/lenovo/anyshare/sdk/internal/s;

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/l;->g:Lcom/lenovo/anyshare/sdk/internal/s;

    if-nez v0, :cond_b

    monitor-exit p0

    :goto_a
    return-void

    :cond_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    invoke-static {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/o;->b(Lcom/lenovo/anyshare/sdk/internal/s;Lcom/lenovo/anyshare/sdk/internal/n;)V

    goto :goto_a

    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method

.method protected a(Lcom/lenovo/anyshare/sdk/internal/s;)V
    .registers 2

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->d()V

    return-void
.end method

.method protected a(Lcom/lenovo/anyshare/sdk/internal/s;Lcom/lenovo/anyshare/sdk/internal/n;)Z
    .registers 12

    const/4 v6, 0x0

    const/4 v5, 0x1

    instance-of v7, p2, Lcom/lenovo/anyshare/sdk/internal/r$a;

    if-eqz v7, :cond_c

    check-cast p2, Lcom/lenovo/anyshare/sdk/internal/r$a;

    invoke-static {p2}, Lcom/lenovo/anyshare/sdk/internal/i;->a(Lcom/lenovo/anyshare/sdk/internal/r$a;)V

    :cond_b
    :goto_b
    return v5

    :cond_c
    instance-of v7, p2, Lcom/lenovo/anyshare/sdk/internal/r$b;

    if-eqz v7, :cond_34

    move-object v0, p2

    check-cast v0, Lcom/lenovo/anyshare/sdk/internal/r$b;

    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/r$b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/r$b;->a()Z

    move-result v7

    if-nez v7, :cond_2e

    iget-object v7, p0, Lcom/lenovo/anyshare/sdk/internal/l;->e:Lcom/lenovo/anyshare/sdk/internal/q;

    iget-object v7, v7, Lcom/lenovo/anyshare/sdk/internal/q;->a:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    move v4, v5

    :goto_28
    if-eqz v4, :cond_30

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->d()V

    goto :goto_b

    :cond_2e
    move v4, v6

    goto :goto_28

    :cond_30
    invoke-static {v0, v6}, Lcom/lenovo/anyshare/sdk/internal/i;->a(Lcom/lenovo/anyshare/sdk/internal/r$b;Z)V

    goto :goto_b

    :cond_34
    invoke-virtual {p2}, Lcom/lenovo/anyshare/sdk/internal/n;->h()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/lenovo/anyshare/sdk/internal/n;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v2, :cond_4c

    if-eqz v3, :cond_b

    :cond_4c
    move v5, v6

    goto :goto_b
.end method

.method public declared-synchronized b()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/l;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_3e

    move-result v1

    if-nez v1, :cond_d

    :goto_b
    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const-string/jumbo v1, "MessageChannel.Client"

    const-string/jumbo v2, "disconnecting..."

    invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->d()V

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/l;->g:Lcom/lenovo/anyshare/sdk/internal/s;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/l;->g:Lcom/lenovo/anyshare/sdk/internal/s;

    invoke-interface {v1, p0}, Lcom/lenovo/anyshare/sdk/internal/s;->b(Lcom/lenovo/anyshare/sdk/internal/s$a;)V

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/l;->g:Lcom/lenovo/anyshare/sdk/internal/s;

    invoke-interface {v1}, Lcom/lenovo/anyshare/sdk/internal/s;->a()Z
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_3e

    move-result v1

    if-nez v1, :cond_37

    const-wide/16 v1, 0x64

    :try_start_2f
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_41
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_32} :catch_48

    :try_start_32
    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/l;->g:Lcom/lenovo/anyshare/sdk/internal/s;

    invoke-interface {v1}, Lcom/lenovo/anyshare/sdk/internal/s;->b()V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_3e
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_37} :catch_5f

    :cond_37
    :goto_37
    const/4 v1, 0x0

    :try_start_38
    iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/l;->g:Lcom/lenovo/anyshare/sdk/internal/s;

    :cond_3a
    invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/i;->b(Lcom/lenovo/channel/base/IUserListener;)V
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_3e

    goto :goto_b

    :catchall_3e
    move-exception v1

    monitor-exit p0

    throw v1

    :catchall_41
    move-exception v1

    :try_start_42
    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/l;->g:Lcom/lenovo/anyshare/sdk/internal/s;

    invoke-interface {v2}, Lcom/lenovo/anyshare/sdk/internal/s;->b()V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_3e
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_47} :catch_57

    :goto_47
    :try_start_47
    throw v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_3e

    :catch_48
    move-exception v1

    :try_start_49
    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/l;->g:Lcom/lenovo/anyshare/sdk/internal/s;

    invoke-interface {v1}, Lcom/lenovo/anyshare/sdk/internal/s;->b()V
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_3e
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4e} :catch_4f

    goto :goto_37

    :catch_4f
    move-exception v0

    :try_start_50
    const-string/jumbo v1, "MessageChannel.Client"

    invoke-static {v1, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_37

    :catch_57
    move-exception v0

    const-string/jumbo v2, "MessageChannel.Client"

    invoke-static {v2, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_47

    :catch_5f
    move-exception v0

    const-string/jumbo v1, "MessageChannel.Client"

    invoke-static {v1, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_66
    .catchall {:try_start_50 .. :try_end_66} :catchall_3e

    goto :goto_37
.end method

.method public onLocalUserChanged(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
    .registers 5

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/l$1;->a:[I

    invoke-virtual {p1}, Lcom/lenovo/channel/base/IUserListener$UserEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    :goto_b
    return-void

    :pswitch_c
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/l;->a(Z)V

    goto :goto_b

    :pswitch_11
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/l;->a(Z)V

    goto :goto_b

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_c
        :pswitch_11
    .end packed-switch
.end method

.method public onRemoteUserChanged(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
    .registers 3

    return-void
.end method
