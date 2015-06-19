.class public Lorg/apache/log4j/g/g;
.super Lorg/apache/log4j/b;
.source "SourceFile"


# static fields
.field public static final a:I = 0x11d0

.field static final i:I = 0x7530

.field public static final k:Ljava/lang/String; = "_log4j_obj_tcpconnect_appender.local."

.field private static final t:I = 0x1


# instance fields
.field j:Ljava/lang/String;

.field l:Ljava/net/InetAddress;

.field m:I

.field n:Ljava/io/ObjectOutputStream;

.field o:I

.field p:Z

.field q:I

.field private r:Ljava/lang/String;

.field private s:Lorg/apache/log4j/g/h;

.field private u:Z

.field private v:Lorg/apache/log4j/g/p;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/log4j/b;-><init>()V

    const/16 v0, 0x11d0

    iput v0, p0, Lorg/apache/log4j/g/g;->m:I

    const/16 v0, 0x7530

    iput v0, p0, Lorg/apache/log4j/g/g;->o:I

    iput-boolean v1, p0, Lorg/apache/log4j/g/g;->p:Z

    iput v1, p0, Lorg/apache/log4j/g/g;->q:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/log4j/b;-><init>()V

    const/16 v0, 0x11d0

    iput v0, p0, Lorg/apache/log4j/g/g;->m:I

    const/16 v0, 0x7530

    iput v0, p0, Lorg/apache/log4j/g/g;->o:I

    iput-boolean v1, p0, Lorg/apache/log4j/g/g;->p:Z

    iput v1, p0, Lorg/apache/log4j/g/g;->q:I

    iput p2, p0, Lorg/apache/log4j/g/g;->m:I

    invoke-static {p1}, Lorg/apache/log4j/g/g;->b(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/g/g;->l:Ljava/net/InetAddress;

    iput-object p1, p0, Lorg/apache/log4j/g/g;->j:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/log4j/g/g;->l:Ljava/net/InetAddress;

    invoke-virtual {p0, v0, p2}, Lorg/apache/log4j/g/g;->a(Ljava/net/InetAddress;I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/log4j/b;-><init>()V

    const/16 v0, 0x11d0

    iput v0, p0, Lorg/apache/log4j/g/g;->m:I

    const/16 v0, 0x7530

    iput v0, p0, Lorg/apache/log4j/g/g;->o:I

    iput-boolean v1, p0, Lorg/apache/log4j/g/g;->p:Z

    iput v1, p0, Lorg/apache/log4j/g/g;->q:I

    iput-object p1, p0, Lorg/apache/log4j/g/g;->l:Ljava/net/InetAddress;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/g/g;->j:Ljava/lang/String;

    iput p2, p0, Lorg/apache/log4j/g/g;->m:I

    invoke-virtual {p0, p1, p2}, Lorg/apache/log4j/g/g;->a(Ljava/net/InetAddress;I)V

    return-void
.end method

.method static a(Lorg/apache/log4j/g/g;Lorg/apache/log4j/g/h;)Lorg/apache/log4j/g/h;
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/g/g;->s:Lorg/apache/log4j/g/h;

    return-object p1
.end method

.method static b(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 4

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-nez v1, :cond_e

    instance-of v1, v0, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_15

    :cond_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_15
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not find address of ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_4
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/log4j/g/g;->h:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lorg/apache/log4j/g/g;->h:Z

    iget-boolean v0, p0, Lorg/apache/log4j/g/g;->u:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/log4j/g/g;->v:Lorg/apache/log4j/g/p;

    invoke-virtual {v0}, Lorg/apache/log4j/g/p;->b()V

    :cond_13
    invoke-virtual {p0}, Lorg/apache/log4j/g/g;->c()V
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_17

    goto :goto_5

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lorg/apache/log4j/g/g;->m:I

    return-void
.end method

.method a(Ljava/net/InetAddress;I)V
    .registers 7

    iget-object v0, p0, Lorg/apache/log4j/g/g;->l:Ljava/net/InetAddress;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lorg/apache/log4j/g/g;->c()V

    new-instance v0, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, p1, p2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/log4j/g/g;->n:Ljava/io/ObjectOutputStream;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_18} :catch_19

    goto :goto_4

    :catch_19
    move-exception v0

    move-object v1, v0

    instance-of v0, v1, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_26

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_26
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not connect to remote log4j server at ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "]."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lorg/apache/log4j/g/g;->o:I

    if-lez v2, :cond_61

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " We will try again later."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/log4j/g/g;->m()V

    :goto_5d
    invoke-static {v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;)V

    goto :goto_4

    :cond_61
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " We are not retrying."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/log4j/g/g;->e:Lorg/apache/log4j/k/e;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v1, v3}, Lorg/apache/log4j/k/e;->a(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_5d
.end method

.method public a(Lorg/apache/log4j/k/k;)V
    .registers 6

    const/4 v3, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    iget-object v0, p0, Lorg/apache/log4j/g/g;->l:Ljava/net/InetAddress;

    if-nez v0, :cond_29

    iget-object v0, p0, Lorg/apache/log4j/g/g;->e:Lorg/apache/log4j/k/e;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No remote host is set for SocketAppender named \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/g/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/log4j/k/e;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_29
    iget-object v0, p0, Lorg/apache/log4j/g/g;->n:Ljava/io/ObjectOutputStream;

    if-eqz v0, :cond_3

    :try_start_2d
    iget-boolean v0, p0, Lorg/apache/log4j/g/g;->p:Z

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->a()Lorg/apache/log4j/k/h;

    :cond_34
    iget-object v0, p0, Lorg/apache/log4j/g/g;->r:Ljava/lang/String;

    if-eqz v0, :cond_3f

    const-string v0, "application"

    iget-object v1, p0, Lorg/apache/log4j/g/g;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/apache/log4j/k/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->f()Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->j()Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->g()V

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->h()Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->l()[Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/log4j/g/g;->n:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/log4j/g/g;->n:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    iget v0, p0, Lorg/apache/log4j/g/g;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/g/g;->q:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/g/g;->q:I

    iget-object v0, p0, Lorg/apache/log4j/g/g;->n:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->reset()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_69} :catch_6a

    goto :goto_3

    :catch_6a
    move-exception v0

    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_76

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_76
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/log4j/g/g;->n:Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Detected problem with connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/log4j/g/g;->o:I

    if-lez v1, :cond_98

    invoke-virtual {p0}, Lorg/apache/log4j/g/g;->m()V

    goto/16 :goto_3

    :cond_98
    iget-object v1, p0, Lorg/apache/log4j/g/g;->e:Lorg/apache/log4j/k/e;

    const-string v2, "Detected problem with connection, not reconnecting."

    invoke-interface {v1, v2, v0, v3}, Lorg/apache/log4j/k/e;->a(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto/16 :goto_3
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/log4j/g/g;->u:Z

    return-void
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lorg/apache/log4j/g/g;->o:I

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/log4j/g/g;->p:Z

    return-void
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/log4j/g/g;->n:Ljava/io/ObjectOutputStream;

    if-eqz v0, :cond_c

    :try_start_5
    iget-object v0, p0, Lorg/apache/log4j/g/g;->n:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_18

    :goto_a
    iput-object v2, p0, Lorg/apache/log4j/g/g;->n:Ljava/io/ObjectOutputStream;

    :cond_c
    iget-object v0, p0, Lorg/apache/log4j/g/g;->s:Lorg/apache/log4j/g/h;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/apache/log4j/g/g;->s:Lorg/apache/log4j/g/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/apache/log4j/g/h;->a:Z

    iput-object v2, p0, Lorg/apache/log4j/g/g;->s:Lorg/apache/log4j/g/h;

    :cond_17
    return-void

    :catch_18
    move-exception v0

    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_24

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_24
    const-string v1, "Could not close oos."

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lorg/apache/log4j/g/g;->b(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/g/g;->l:Ljava/net/InetAddress;

    iput-object p1, p0, Lorg/apache/log4j/g/g;->j:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/g/g;->r:Ljava/lang/String;

    return-void
.end method

.method public i()V
    .registers 5

    iget-boolean v0, p0, Lorg/apache/log4j/g/g;->u:Z

    if-eqz v0, :cond_18

    new-instance v0, Lorg/apache/log4j/g/p;

    const-string v1, "_log4j_obj_tcpconnect_appender.local."

    iget v2, p0, Lorg/apache/log4j/g/g;->m:I

    invoke-virtual {p0}, Lorg/apache/log4j/g/g;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/g/p;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/g/g;->v:Lorg/apache/log4j/g/p;

    iget-object v0, p0, Lorg/apache/log4j/g/g;->v:Lorg/apache/log4j/g/p;

    invoke-virtual {v0}, Lorg/apache/log4j/g/p;->a()V

    :cond_18
    iget-object v0, p0, Lorg/apache/log4j/g/g;->l:Ljava/net/InetAddress;

    iget v1, p0, Lorg/apache/log4j/g/g;->m:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/log4j/g/g;->a(Ljava/net/InetAddress;I)V

    return-void
.end method

.method public l()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/log4j/g/g;->u:Z

    return v0
.end method

.method m()V
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/log4j/g/g;->s:Lorg/apache/log4j/g/h;

    if-nez v0, :cond_20

    const-string v0, "Starting a new connector thread."

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/log4j/g/h;

    invoke-direct {v0, p0}, Lorg/apache/log4j/g/h;-><init>(Lorg/apache/log4j/g/g;)V

    iput-object v0, p0, Lorg/apache/log4j/g/g;->s:Lorg/apache/log4j/g/h;

    iget-object v0, p0, Lorg/apache/log4j/g/g;->s:Lorg/apache/log4j/g/h;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/g/h;->setDaemon(Z)V

    iget-object v0, p0, Lorg/apache/log4j/g/g;->s:Lorg/apache/log4j/g/h;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/g/h;->setPriority(I)V

    iget-object v0, p0, Lorg/apache/log4j/g/g;->s:Lorg/apache/log4j/g/h;

    invoke-virtual {v0}, Lorg/apache/log4j/g/h;->start()V

    :cond_20
    return-void
.end method

.method public n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/g/g;->j:Ljava/lang/String;

    return-object v0
.end method

.method public o()I
    .registers 2

    iget v0, p0, Lorg/apache/log4j/g/g;->m:I

    return v0
.end method

.method public p()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/log4j/g/g;->p:Z

    return v0
.end method

.method public q()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/g/g;->r:Ljava/lang/String;

    return-object v0
.end method

.method public r()I
    .registers 2

    iget v0, p0, Lorg/apache/log4j/g/g;->o:I

    return v0
.end method
