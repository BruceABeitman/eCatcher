.class public final Lcom/lenovo/httpserver/HttpServer;
.super Ljava/lang/Object;
.source "HttpServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/httpserver/HttpServer$SocketHandler;
    }
.end annotation


# static fields
.field public static final KEEP_ALIVE_TIME:I = 0x4e20


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private d:Ljava/net/ServerSocket;

.field private e:I

.field private f:Lcom/lenovo/anyshare/sdk/internal/an;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/anyshare/sdk/internal/an",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/httpserver/HttpServlet;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/lenovo/httpserver/HttpServlet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/lenovo/httpserver/HttpServer;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v1, p0, Lcom/lenovo/httpserver/HttpServer;->e:I

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/an;

    invoke-direct {v0}, Lcom/lenovo/anyshare/sdk/internal/an;-><init>()V

    iput-object v0, p0, Lcom/lenovo/httpserver/HttpServer;->f:Lcom/lenovo/anyshare/sdk/internal/an;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/httpserver/HttpServer;->g:Lcom/lenovo/httpserver/HttpServlet;

    iput-object p1, p0, Lcom/lenovo/httpserver/HttpServer;->a:Landroid/content/Context;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/httpserver/HttpServer;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/httpserver/HttpServer;)I
    .registers 2

    iget v0, p0, Lcom/lenovo/httpserver/HttpServer;->e:I

    return v0
.end method

.method private c()I
    .registers 2

    iget-object v0, p0, Lcom/lenovo/httpserver/HttpServer;->d:Ljava/net/ServerSocket;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lenovo/httpserver/HttpServer;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    goto :goto_5
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/lenovo/httpserver/HttpServlet;
    .registers 8

    const/16 v5, 0x2f

    invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_e

    iget-object v1, p0, Lcom/lenovo/httpserver/HttpServer;->g:Lcom/lenovo/httpserver/HttpServlet;

    :cond_d
    :goto_d
    return-object v1

    :cond_e
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_19

    add-int/lit8 v3, v3, 0x1

    :cond_19
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lez v0, :cond_30

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_23
    iget-object v4, p0, Lcom/lenovo/httpserver/HttpServer;->f:Lcom/lenovo/anyshare/sdk/internal/an;

    invoke-virtual {v4, v2}, Lcom/lenovo/anyshare/sdk/internal/an;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/httpserver/HttpServlet;

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/lenovo/httpserver/HttpServer;->g:Lcom/lenovo/httpserver/HttpServlet;

    goto :goto_d

    :cond_30
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_23
.end method

.method protected a(I)Ljava/net/ServerSocket;
    .registers 10

    const/4 v4, 0x0

    move v1, p1

    :goto_2
    const v5, 0x7fffffff

    if-ge v1, v5, :cond_45

    iget-object v5, p0, Lcom/lenovo/httpserver/HttpServer;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_11

    move-object v3, v4

    :goto_10
    return-object v3

    :cond_11
    const/4 v2, 0x0

    :try_start_12
    new-instance v3, Ljava/net/ServerSocket;

    invoke-direct {v3, v1}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_49

    const/16 v5, 0x3a98

    :try_start_19
    invoke-virtual {v3, v5}, Ljava/net/ServerSocket;->setSoTimeout(I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_10

    :catch_1d
    move-exception v0

    move-object v2, v3

    :goto_1f
    const-string/jumbo v5, "HttpServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "create server socket error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_42

    :try_start_3f
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_47

    :cond_42
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_45
    move-object v3, v4

    goto :goto_10

    :catch_47
    move-exception v5

    goto :goto_42

    :catch_49
    move-exception v0

    goto :goto_1f
.end method

.method protected a()V
    .registers 3

    iget-object v0, p0, Lcom/lenovo/httpserver/HttpServer;->d:Ljava/net/ServerSocket;

    if-eqz v0, :cond_7

    :try_start_4
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    :cond_7
    :goto_7
    return-void

    :catch_8
    move-exception v1

    goto :goto_7
.end method

.method public addServlet(Lcom/lenovo/httpserver/HttpServlet;)V
    .registers 5

    invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/lenovo/httpserver/HttpServlet;->getServletPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iput-object p1, p0, Lcom/lenovo/httpserver/HttpServer;->g:Lcom/lenovo/httpserver/HttpServlet;

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/lenovo/httpserver/HttpServer;->f:Lcom/lenovo/anyshare/sdk/internal/an;

    invoke-virtual {p1}, Lcom/lenovo/httpserver/HttpServlet;->getServletPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/an;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/lenovo/httpserver/HttpServer;->f:Lcom/lenovo/anyshare/sdk/internal/an;

    invoke-virtual {p1}, Lcom/lenovo/httpserver/HttpServlet;->getServletPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/anyshare/sdk/internal/an;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_26
    const-string/jumbo v0, "HttpServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add servlet failed! servlet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lenovo/httpserver/HttpServlet;->getServletPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is exist in http server!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method protected b()V
    .registers 10

    const-wide/16 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/lenovo/httpserver/HttpServer;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_7a

    iget-object v5, p0, Lcom/lenovo/httpserver/HttpServer;->d:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v5

    if-nez v5, :cond_7a

    :try_start_10
    iget-object v5, p0, Lcom/lenovo/httpserver/HttpServer;->d:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v4

    const-string/jumbo v5, "HttpServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "client accepted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v7, 0x1

    add-long/2addr v0, v7

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/Socket;->getPort()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/lenovo/httpserver/HttpServer$SocketHandler;

    invoke-direct {v3, p0, v4}, Lcom/lenovo/httpserver/HttpServer$SocketHandler;-><init>(Lcom/lenovo/httpserver/HttpServer;Ljava/net/Socket;)V

    iget-object v5, p0, Lcom/lenovo/httpserver/HttpServer;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_5f
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_5f} :catch_60
    .catch Ljava/net/SocketException; {:try_start_10 .. :try_end_5f} :catch_62
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_5f} :catch_6e

    goto :goto_2

    :catch_60
    move-exception v2

    goto :goto_2

    :catch_62
    move-exception v2

    const-string/jumbo v5, "HttpServer"

    invoke-virtual {v2}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_6e
    move-exception v2

    const-string/jumbo v5, "HttpServer"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7a
    return-void
.end method

.method public clearServlets()V
    .registers 2

    iget-object v0, p0, Lcom/lenovo/httpserver/HttpServer;->f:Lcom/lenovo/anyshare/sdk/internal/an;

    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/an;->clear()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/httpserver/HttpServer;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    iget v0, p0, Lcom/lenovo/httpserver/HttpServer;->e:I

    return v0
.end method

.method public getServlet(Ljava/lang/String;)Lcom/lenovo/httpserver/HttpServlet;
    .registers 3

    iget-object v0, p0, Lcom/lenovo/httpserver/HttpServer;->f:Lcom/lenovo/anyshare/sdk/internal/an;

    invoke-virtual {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/an;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/httpserver/HttpServlet;

    return-object v0
.end method

.method public isRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/lenovo/httpserver/HttpServer;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public start(I)I
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lenovo/httpserver/HttpServer;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-direct {p0}, Lcom/lenovo/httpserver/HttpServer;->c()I

    move-result v0

    :cond_e
    :goto_e
    return v0

    :cond_f
    const-string/jumbo v1, "HttpServer"

    const-string/jumbo v2, "starting Http Server ..."

    invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/lenovo/httpserver/HttpServer;->a(I)Ljava/net/ServerSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/httpserver/HttpServer;->d:Ljava/net/ServerSocket;

    iget-object v1, p0, Lcom/lenovo/httpserver/HttpServer;->d:Ljava/net/ServerSocket;

    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/lenovo/httpserver/HttpServer;->c()I

    move-result v0

    iput v0, p0, Lcom/lenovo/httpserver/HttpServer;->e:I

    iget-object v0, p0, Lcom/lenovo/httpserver/HttpServer;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/lenovo/httpserver/HttpServer$1;

    invoke-direct {v1, p0}, Lcom/lenovo/httpserver/HttpServer$1;-><init>(Lcom/lenovo/httpserver/HttpServer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/lenovo/httpserver/HttpServer;->e:I

    goto :goto_e
.end method

.method public stop()V
    .registers 4

    iget-object v0, p0, Lcom/lenovo/httpserver/HttpServer;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/lenovo/httpserver/HttpServer;->a()V

    goto :goto_a
.end method
