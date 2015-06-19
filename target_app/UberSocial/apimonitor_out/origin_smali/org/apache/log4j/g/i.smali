.class public Lorg/apache/log4j/g/i;
.super Lorg/apache/log4j/b;
.source "SourceFile"


# static fields
.field static final a:I = 0x11d0

.field public static final i:Ljava/lang/String; = "_log4j_obj_tcpaccept_appender.local."


# instance fields
.field private j:I

.field private k:Ljava/util/Vector;

.field private l:Lorg/apache/log4j/g/j;

.field private m:Z

.field private n:Lorg/apache/log4j/c/e;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Lorg/apache/log4j/g/p;

.field private r:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/log4j/b;-><init>()V

    const/16 v0, 0x11d0

    iput v0, p0, Lorg/apache/log4j/g/i;->j:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/g/i;->k:Ljava/util/Vector;

    iput-object v1, p0, Lorg/apache/log4j/g/i;->l:Lorg/apache/log4j/g/j;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/g/i;->m:Z

    iput-object v1, p0, Lorg/apache/log4j/g/i;->n:Lorg/apache/log4j/c/e;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/log4j/b;-><init>()V

    const/16 v0, 0x11d0

    iput v0, p0, Lorg/apache/log4j/g/i;->j:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/g/i;->k:Ljava/util/Vector;

    iput-object v1, p0, Lorg/apache/log4j/g/i;->l:Lorg/apache/log4j/g/j;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/g/i;->m:Z

    iput-object v1, p0, Lorg/apache/log4j/g/i;->n:Lorg/apache/log4j/c/e;

    iput p1, p0, Lorg/apache/log4j/g/i;->j:I

    invoke-direct {p0}, Lorg/apache/log4j/g/i;->q()V

    return-void
.end method

.method static a(Lorg/apache/log4j/g/i;)Ljava/net/ServerSocket;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/g/i;->r:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static a(Lorg/apache/log4j/g/i;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/g/i;->r:Ljava/net/ServerSocket;

    return-object p1
.end method

.method static b(Lorg/apache/log4j/g/i;)Lorg/apache/log4j/c/e;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/g/i;->n:Lorg/apache/log4j/c/e;

    return-object v0
.end method

.method private q()V
    .registers 4

    new-instance v0, Lorg/apache/log4j/g/j;

    iget v1, p0, Lorg/apache/log4j/g/i;->j:I

    iget-object v2, p0, Lorg/apache/log4j/g/i;->k:Ljava/util/Vector;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/log4j/g/j;-><init>(Lorg/apache/log4j/g/i;ILjava/util/Vector;)V

    iput-object v0, p0, Lorg/apache/log4j/g/i;->l:Lorg/apache/log4j/g/j;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/log4j/g/i;->h:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_51

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "closing SocketHubAppender "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/log4j/g/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/g/i;->h:Z

    iget-boolean v0, p0, Lorg/apache/log4j/g/i;->p:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lorg/apache/log4j/g/i;->q:Lorg/apache/log4j/g/p;

    invoke-virtual {v0}, Lorg/apache/log4j/g/p;->b()V

    :cond_2d
    invoke-virtual {p0}, Lorg/apache/log4j/g/i;->c()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SocketHubAppender "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/log4j/g/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_7 .. :try_end_50} :catchall_51

    goto :goto_5

    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lorg/apache/log4j/g/i;->j:I

    return-void
.end method

.method public a(Lorg/apache/log4j/k/k;)V
    .registers 5

    if-eqz p1, :cond_2c

    iget-boolean v0, p0, Lorg/apache/log4j/g/i;->m:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->a()Lorg/apache/log4j/k/h;

    :cond_9
    iget-object v0, p0, Lorg/apache/log4j/g/i;->o:Ljava/lang/String;

    if-eqz v0, :cond_14

    const-string v0, "application"

    iget-object v1, p0, Lorg/apache/log4j/g/i;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/apache/log4j/k/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->f()Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->j()Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->g()V

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->h()Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->l()[Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/log4j/g/i;->n:Lorg/apache/log4j/c/e;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lorg/apache/log4j/g/i;->n:Lorg/apache/log4j/c/e;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/c/e;->a(Lorg/apache/log4j/k/k;)V

    :cond_2c
    if-eqz p1, :cond_36

    iget-object v0, p0, Lorg/apache/log4j/g/i;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_37

    :cond_36
    return-void

    :cond_37
    const/4 v0, 0x0

    move v1, v0

    :goto_39
    iget-object v0, p0, Lorg/apache/log4j/g/i;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_36

    const/4 v2, 0x0

    :try_start_42
    iget-object v0, p0, Lorg/apache/log4j/g/i;->k:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ObjectOutputStream;
    :try_end_4a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_42 .. :try_end_4a} :catch_59

    :goto_4a
    if-eqz v0, :cond_36

    :try_start_4c
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->reset()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_55} :catch_5c

    :goto_55
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_39

    :catch_59
    move-exception v0

    move-object v0, v2

    goto :goto_4a

    :catch_5c
    move-exception v0

    instance-of v0, v0, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_68

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_68
    iget-object v0, p0, Lorg/apache/log4j/g/i;->k:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    const-string v0, "dropped connection"

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_55
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/log4j/g/i;->m:Z

    return-void
.end method

.method public b(I)V
    .registers 3

    new-instance v0, Lorg/apache/log4j/c/e;

    invoke-direct {v0, p1}, Lorg/apache/log4j/c/e;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/g/i;->n:Lorg/apache/log4j/c/e;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/g/i;->o:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/log4j/g/i;->p:Z

    return-void
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected c(I)Ljava/net/ServerSocket;
    .registers 3

    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    return-object v0
.end method

.method public c()V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "stopping ServerSocket"

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/log4j/g/i;->l:Lorg/apache/log4j/g/j;

    invoke-virtual {v0}, Lorg/apache/log4j/g/j;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/g/i;->l:Lorg/apache/log4j/g/j;

    const-string v0, "closing client connections"

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    :cond_13
    :goto_13
    iget-object v0, p0, Lorg/apache/log4j/g/i;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lorg/apache/log4j/g/i;->k:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ObjectOutputStream;

    if-eqz v0, :cond_13

    :try_start_25
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_28
    .catch Ljava/io/InterruptedIOException; {:try_start_25 .. :try_end_28} :catch_2e
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_3c

    :goto_28
    iget-object v0, p0, Lorg/apache/log4j/g/i;->k:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_13

    :catch_2e
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const-string v1, "could not close oos."

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28

    :catch_3c
    move-exception v0

    const-string v1, "could not close oos."

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28

    :cond_43
    return-void
.end method

.method public i()V
    .registers 5

    iget-boolean v0, p0, Lorg/apache/log4j/g/i;->p:Z

    if-eqz v0, :cond_18

    new-instance v0, Lorg/apache/log4j/g/p;

    const-string v1, "_log4j_obj_tcpaccept_appender.local."

    iget v2, p0, Lorg/apache/log4j/g/i;->j:I

    invoke-virtual {p0}, Lorg/apache/log4j/g/i;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/g/p;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/g/i;->q:Lorg/apache/log4j/g/p;

    iget-object v0, p0, Lorg/apache/log4j/g/i;->q:Lorg/apache/log4j/g/p;

    invoke-virtual {v0}, Lorg/apache/log4j/g/p;->a()V

    :cond_18
    invoke-direct {p0}, Lorg/apache/log4j/g/i;->q()V

    return-void
.end method

.method public l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/g/i;->o:Ljava/lang/String;

    return-object v0
.end method

.method public m()I
    .registers 2

    iget v0, p0, Lorg/apache/log4j/g/i;->j:I

    return v0
.end method

.method public n()I
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/g/i;->n:Lorg/apache/log4j/c/e;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/log4j/g/i;->n:Lorg/apache/log4j/c/e;

    invoke-virtual {v0}, Lorg/apache/log4j/c/e;->a()I

    move-result v0

    goto :goto_5
.end method

.method public o()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/log4j/g/i;->m:Z

    return v0
.end method

.method public p()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/log4j/g/i;->p:Z

    return v0
.end method
