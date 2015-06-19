.class public Lcom/lenovo/anyshare/sdk/internal/v;
.super Ljava/lang/Object;
.source "Pipe.java"

# interfaces
.implements Lcom/lenovo/anyshare/sdk/internal/s;


# instance fields
.field protected final a:Ljava/net/Socket;

.field protected final b:Ljava/lang/String;

.field protected final c:I

.field protected final d:Ljava/lang/String;

.field protected final e:I

.field protected final f:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/lenovo/anyshare/sdk/internal/t;",
            ">;"
        }
    .end annotation
.end field

.field protected final g:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/lenovo/anyshare/sdk/internal/t;",
            ">;"
        }
    .end annotation
.end field

.field protected h:J

.field protected i:J

.field protected j:Ljava/util/concurrent/atomic/AtomicLong;

.field protected k:Ljava/util/concurrent/atomic/AtomicLong;

.field protected l:Ljava/lang/Runnable;

.field protected m:Ljava/lang/Runnable;

.field protected n:Ljava/lang/Runnable;

.field private final o:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/lenovo/anyshare/sdk/internal/s$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .registers 6

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/v;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/v;->j:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/v;->k:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Lcom/lenovo/anyshare/sdk/internal/v$1;

    invoke-direct {v1, p0}, Lcom/lenovo/anyshare/sdk/internal/v$1;-><init>(Lcom/lenovo/anyshare/sdk/internal/v;)V

    iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/v;->l:Ljava/lang/Runnable;

    new-instance v1, Lcom/lenovo/anyshare/sdk/internal/v$2;

    invoke-direct {v1, p0}, Lcom/lenovo/anyshare/sdk/internal/v$2;-><init>(Lcom/lenovo/anyshare/sdk/internal/v;)V

    iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/v;->m:Ljava/lang/Runnable;

    new-instance v1, Lcom/lenovo/anyshare/sdk/internal/v$3;

    invoke-direct {v1, p0}, Lcom/lenovo/anyshare/sdk/internal/v$3;-><init>(Lcom/lenovo/anyshare/sdk/internal/v;)V

    iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/v;->n:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/v;->a:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_47
    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/v;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalPort()I

    move-result v1

    iput v1, p0, Lcom/lenovo/anyshare/sdk/internal/v;->c:I

    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/v;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    move-result v1

    iput v1, p0, Lcom/lenovo/anyshare/sdk/internal/v;->e:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lenovo/anyshare/sdk/internal/v;->i:J

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/v;->f:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/v;->g:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public a(Lcom/lenovo/anyshare/sdk/internal/s$a;)V
    .registers 3

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/v;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/lenovo/anyshare/sdk/internal/t;)V
    .registers 3

    invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/v;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/v;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 4

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/v;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_10

    :try_start_8
    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/v;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_11

    :goto_d
    invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/v;->g()V

    :cond_10
    return-void

    :catch_11
    move-exception v0

    const-string/jumbo v1, "Pipe"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public b(Lcom/lenovo/anyshare/sdk/internal/s$a;)V
    .registers 3

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/v;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Lcom/lenovo/anyshare/sdk/internal/t;)V
    .registers 7

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/v;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/anyshare/sdk/internal/s$a;

    :try_start_12
    invoke-interface {v2, p0, p1}, Lcom/lenovo/anyshare/sdk/internal/s$a;->c(Lcom/lenovo/anyshare/sdk/internal/s;Lcom/lenovo/anyshare/sdk/internal/t;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    :catch_16
    move-exception v0

    const-string/jumbo v3, "Pipe"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_22
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/v;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/v;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/v;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/be;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/v;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/be;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/v;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/be;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/v;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/v;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected g()V
    .registers 6

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/v;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/anyshare/sdk/internal/s$a;

    :try_start_12
    invoke-interface {v2, p0}, Lcom/lenovo/anyshare/sdk/internal/s$a;->b(Lcom/lenovo/anyshare/sdk/internal/s;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    :catch_16
    move-exception v0

    const-string/jumbo v3, "Pipe"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_22
    return-void
.end method

.method protected h()V
    .registers 22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v8, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/anyshare/sdk/internal/v;->a:Ljava/net/Socket;

    invoke-virtual {v14}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    const/4 v14, 0x6

    new-array v7, v14, [B

    :goto_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/anyshare/sdk/internal/v;->a:Ljava/net/Socket;

    invoke-virtual {v14}, Ljava/net/Socket;->isClosed()Z

    move-result v14

    if-nez v14, :cond_21

    invoke-static {v8, v7}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/InputStream;[B)I

    move-result v2

    array-length v14, v7
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_188
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_1f} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1f} :catch_111

    if-ge v2, v14, :cond_4f

    :cond_21
    invoke-static {v8}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/InputStream;)V

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/v;->b()V

    const-string/jumbo v14, "Pipe"

    const-string/jumbo v15, "%d ms. [%s] receive method closed."

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/v;->f()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    :goto_4b
    invoke-static/range {v14 .. v16}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4f
    :try_start_4f
    invoke-static {v7}, Lcom/lenovo/anyshare/sdk/internal/u;->a([B)Lcom/lenovo/anyshare/sdk/internal/t;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/lenovo/anyshare/sdk/internal/v;->i:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/anyshare/sdk/internal/v;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    iget-byte v14, v10, Lcom/lenovo/anyshare/sdk/internal/t;->b:B

    const/4 v15, 0x1

    if-ne v14, v15, :cond_ea

    move-object v0, v10

    check-cast v0, Lcom/lenovo/anyshare/sdk/internal/u$a;

    move-object v6, v0

    iget v9, v6, Lcom/lenovo/anyshare/sdk/internal/u$a;->c:I

    const/high16 v14, 0x40

    if-le v9, v14, :cond_d7

    new-instance v14, Ljava/io/IOException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "data lenth["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "] > bufer length["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/high16 v16, 0x40

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_a0
    .catchall {:try_start_4f .. :try_end_a0} :catchall_188
    .catch Ljava/net/SocketException; {:try_start_4f .. :try_end_a0} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_a0} :catch_111

    :catch_a0
    move-exception v11

    :try_start_a1
    const-string/jumbo v14, "Pipe"

    invoke-virtual {v11}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ab
    .catchall {:try_start_a1 .. :try_end_ab} :catchall_188

    invoke-static {v8}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/InputStream;)V

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/v;->b()V

    const-string/jumbo v14, "Pipe"

    const-string/jumbo v15, "%d ms. [%s] receive method closed."

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/v;->f()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    goto/16 :goto_4b

    :cond_d7
    :try_start_d7
    new-array v1, v9, [B

    const/4 v14, 0x0

    invoke-static {v8, v1, v14, v9}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/InputStream;[BII)I

    move-result v2

    if-lt v2, v9, :cond_21

    invoke-virtual {v6, v1}, Lcom/lenovo/anyshare/sdk/internal/u$a;->a([B)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/anyshare/sdk/internal/v;->g:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v14, v10}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_ea
    iget-object v14, v10, Lcom/lenovo/anyshare/sdk/internal/t;->d:[B

    if-nez v14, :cond_148

    const-string/jumbo v14, "Pipe"

    const-string/jumbo v15, "[%d] RECV an empty packet from %s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/v;->f()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_10f
    .catchall {:try_start_d7 .. :try_end_10f} :catchall_188
    .catch Ljava/net/SocketException; {:try_start_d7 .. :try_end_10f} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_10f} :catch_111

    goto/16 :goto_10

    :catch_111
    move-exception v5

    :try_start_112
    const-string/jumbo v14, "Pipe"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11c
    .catchall {:try_start_112 .. :try_end_11c} :catchall_188

    invoke-static {v8}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/InputStream;)V

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/v;->b()V

    const-string/jumbo v14, "Pipe"

    const-string/jumbo v15, "%d ms. [%s] receive method closed."

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/v;->f()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    goto/16 :goto_4b

    :cond_148
    :try_start_148
    new-instance v1, Ljava/lang/String;

    iget-object v14, v10, Lcom/lenovo/anyshare/sdk/internal/t;->d:[B

    const-string/jumbo v15, "UTF-8"

    invoke-direct {v1, v14, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x40

    if-le v14, v15, :cond_161

    const/4 v14, 0x0

    const/16 v15, 0x40

    invoke-virtual {v1, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_161
    const-string/jumbo v14, "Pipe"

    const-string/jumbo v15, "[%d] RECV a packet[%s] from %s"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object v1, v16, v17

    const/16 v17, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/v;->f()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_186
    .catchall {:try_start_148 .. :try_end_186} :catchall_188
    .catch Ljava/net/SocketException; {:try_start_148 .. :try_end_186} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_186} :catch_111

    goto/16 :goto_10

    :catchall_188
    move-exception v14

    invoke-static {v8}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/InputStream;)V

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/v;->b()V

    const-string/jumbo v15, "Pipe"

    const-string/jumbo v16, "%d ms. [%s] receive method closed."

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v19, v19, v12

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/v;->f()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v14
.end method

.method protected i()V
    .registers 19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v7, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/anyshare/sdk/internal/v;->a:Ljava/net/Socket;

    invoke-virtual {v11}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    :cond_d
    :goto_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/anyshare/sdk/internal/v;->a:Ljava/net/Socket;

    invoke-virtual {v11}, Ljava/net/Socket;->isClosed()Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_128
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_cb
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_f9

    move-result v11

    if-nez v11, :cond_6d

    :try_start_17
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/anyshare/sdk/internal/v;->f:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v12, 0x2

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v11, v12, v13, v14}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/anyshare/sdk/internal/t;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    if-nez v8, :cond_3c

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/lenovo/anyshare/sdk/internal/v;->h:J

    sub-long v11, v5, v11

    const-wide/16 v13, 0x2710

    cmp-long v11, v11, v13

    if-lez v11, :cond_3c

    new-instance v8, Lcom/lenovo/anyshare/sdk/internal/u$b;

    invoke-direct {v8}, Lcom/lenovo/anyshare/sdk/internal/u$b;-><init>()V

    :cond_3c
    if-eqz v8, :cond_d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/anyshare/sdk/internal/v;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-virtual {v8, v7}, Lcom/lenovo/anyshare/sdk/internal/t;->a(Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/lenovo/anyshare/sdk/internal/v;->h:J

    iget-object v11, v8, Lcom/lenovo/anyshare/sdk/internal/t;->d:[B

    if-nez v11, :cond_93

    const-string/jumbo v11, "Pipe"

    const-string/jumbo v12, "(%d) SEND an empty packet to %s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/v;->f()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6b
    .catchall {:try_start_17 .. :try_end_6b} :catchall_128
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_6b} :catch_6c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_6b} :catch_cb
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_6b} :catch_f9

    goto :goto_d

    :catch_6c
    move-exception v4

    :cond_6d
    invoke-static {v7}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/OutputStream;)V

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/v;->b()V

    const-string/jumbo v11, "Pipe"

    const-string/jumbo v12, "%d ms. [%s] send method closed."

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v9

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/v;->f()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    :goto_8f
    invoke-static {v11, v12, v13}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_93
    :try_start_93
    new-instance v1, Ljava/lang/String;

    iget-object v11, v8, Lcom/lenovo/anyshare/sdk/internal/t;->d:[B

    const-string/jumbo v12, "UTF-8"

    invoke-direct {v1, v11, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x40

    if-le v11, v12, :cond_ac

    const/4 v11, 0x0

    const/16 v12, 0x40

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_ac
    const-string/jumbo v11, "Pipe"

    const-string/jumbo v12, "(%d) SEND a packet(%s) to %s"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v1, v13, v14

    const/4 v14, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/v;->f()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c9
    .catchall {:try_start_93 .. :try_end_c9} :catchall_128
    .catch Ljava/lang/InterruptedException; {:try_start_93 .. :try_end_c9} :catch_6c
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_c9} :catch_cb
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_c9} :catch_f9

    goto/16 :goto_d

    :catch_cb
    move-exception v4

    :try_start_cc
    const-string/jumbo v11, "Pipe"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d6
    .catchall {:try_start_cc .. :try_end_d6} :catchall_128

    invoke-static {v7}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/OutputStream;)V

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/v;->b()V

    const-string/jumbo v11, "Pipe"

    const-string/jumbo v12, "%d ms. [%s] send method closed."

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v9

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/v;->f()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    goto :goto_8f

    :catch_f9
    move-exception v4

    :try_start_fa
    const-string/jumbo v11, "Pipe"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_104
    .catchall {:try_start_fa .. :try_end_104} :catchall_128

    invoke-static {v7}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/OutputStream;)V

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/v;->b()V

    const-string/jumbo v11, "Pipe"

    const-string/jumbo v12, "%d ms. [%s] send method closed."

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v9

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/v;->f()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    goto/16 :goto_8f

    :catchall_128
    move-exception v11

    invoke-static {v7}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/OutputStream;)V

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/v;->b()V

    const-string/jumbo v12, "Pipe"

    const-string/jumbo v13, "%d ms. [%s] send method closed."

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v9

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/v;->f()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v11
.end method

.method protected j()V
    .registers 8

    const/4 v1, 0x1

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/v;->a:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3f

    if-eqz v1, :cond_13

    :try_start_b
    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/v;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_40

    :cond_13
    const/4 v3, 0x1

    :goto_14
    invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/v;->g:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v4, 0x2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/anyshare/sdk/internal/t;

    if-nez v2, :cond_42

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/lenovo/anyshare/sdk/internal/v;->i:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x7530

    cmp-long v3, v3, v5

    if-lez v3, :cond_42

    const-string/jumbo v3, "Pipe"

    const-string/jumbo v4, "Time out! will closed!"

    invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/v;->b()V

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    const/4 v3, 0x0

    goto :goto_14

    :cond_42
    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/lenovo/anyshare/sdk/internal/v;->b(Lcom/lenovo/anyshare/sdk/internal/t;)V
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_47} :catch_48

    goto :goto_1

    :catch_48
    move-exception v0

    goto :goto_3f
.end method
