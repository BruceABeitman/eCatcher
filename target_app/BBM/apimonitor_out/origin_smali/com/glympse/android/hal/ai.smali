.class Lcom/glympse/android/hal/ai;
.super Ljava/lang/Object;
.source "GlympseSocket.java"

# interfaces
.implements Lcom/glympse/android/hal/GSocket;


# static fields
.field public static final bF:I = 0xffff

.field private static bG:Ljavax/net/SocketFactory;

.field private static bH:Ljavax/net/SocketFactory;


# instance fields
.field private bA:Ljava/net/Socket;

.field private bB:Lcom/glympse/android/hal/GlympseThreadPool;

.field private bC:Z

.field private bD:Z

.field private volatile bE:Z

.field private bw:Ljava/lang/String;

.field private bx:I

.field private by:Z

.field private bz:Lcom/glympse/android/hal/GSocketListener;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/ai;->bG:Ljavax/net/SocketFactory;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_1b

    :goto_12
    :try_start_12
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/ai;->bH:Ljavax/net/SocketFactory;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_18} :catch_19

    :goto_18
    return-void

    :catch_19
    move-exception v0

    goto :goto_18

    :catch_1b
    move-exception v0

    goto :goto_12
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/glympse/android/hal/ai;->bC:Z

    iput-boolean v0, p0, Lcom/glympse/android/hal/ai;->bD:Z

    return-void
.end method

.method static synthetic a(Lcom/glympse/android/hal/ai;)Ljava/net/Socket;
    .registers 2

    invoke-direct {p0}, Lcom/glympse/android/hal/ai;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/glympse/android/hal/ai;Ljava/net/Socket;)Ljava/net/Socket;
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/hal/ai;->bA:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic a(Lcom/glympse/android/hal/ai;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/glympse/android/hal/ai;->bD:Z

    return p1
.end method

.method static synthetic b(Lcom/glympse/android/hal/ai;)Ljava/net/Socket;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/hal/ai;->bA:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic c(Lcom/glympse/android/hal/ai;)V
    .registers 1

    invoke-direct {p0}, Lcom/glympse/android/hal/ai;->v()V

    return-void
.end method

.method private createSocket()Ljava/net/Socket;
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/glympse/android/hal/ai;->by:Z

    if-eqz v1, :cond_a

    sget-object v1, Lcom/glympse/android/hal/ai;->bG:Ljavax/net/SocketFactory;

    :goto_7
    if-nez v1, :cond_d

    :goto_9
    return-object v0

    :cond_a
    sget-object v1, Lcom/glympse/android/hal/ai;->bH:Ljavax/net/SocketFactory;

    goto :goto_7

    :cond_d
    :try_start_d
    iget-object v2, p0, Lcom/glympse/android/hal/ai;->bw:Ljava/lang/String;

    iget v3, p0, Lcom/glympse/android/hal/ai;->bx:I

    invoke-virtual {v1, v2, v3}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_14} :catch_16

    move-result-object v0

    goto :goto_9

    :catch_16
    move-exception v1

    goto :goto_9
.end method

.method static synthetic d(Lcom/glympse/android/hal/ai;)Lcom/glympse/android/hal/GSocketListener;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/hal/ai;->bz:Lcom/glympse/android/hal/GSocketListener;

    return-object v0
.end method

.method static synthetic e(Lcom/glympse/android/hal/ai;)Lcom/glympse/android/hal/GlympseThreadPool;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/hal/ai;->bB:Lcom/glympse/android/hal/GlympseThreadPool;

    return-object v0
.end method

.method static synthetic f(Lcom/glympse/android/hal/ai;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/hal/ai;->bD:Z

    return v0
.end method

.method static synthetic g(Lcom/glympse/android/hal/ai;)V
    .registers 1

    invoke-direct {p0}, Lcom/glympse/android/hal/ai;->w()V

    return-void
.end method

.method static synthetic h(Lcom/glympse/android/hal/ai;)V
    .registers 1

    invoke-direct {p0}, Lcom/glympse/android/hal/ai;->stop()V

    return-void
.end method

.method private start()V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/glympse/android/hal/GlympseThreadPool;->instance()Lcom/glympse/android/hal/GlympseThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/hal/ai;->bB:Lcom/glympse/android/hal/GlympseThreadPool;

    iget-object v0, p0, Lcom/glympse/android/hal/ai;->bB:Lcom/glympse/android/hal/GlympseThreadPool;

    new-instance v1, Lcom/glympse/android/hal/aj;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/glympse/android/hal/aj;-><init>(Lcom/glympse/android/hal/ai;Lcom/glympse/android/hal/ai$1;)V

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GlympseThreadPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    invoke-direct {p0}, Lcom/glympse/android/hal/ai;->v()V

    goto :goto_11
.end method

.method private stop()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/hal/ai;->bD:Z

    :try_start_3
    iget-object v0, p0, Lcom/glympse/android/hal/ai;->bA:Ljava/net/Socket;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/glympse/android/hal/ai;->bA:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_10

    :cond_c
    :goto_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/hal/ai;->bA:Ljava/net/Socket;

    return-void

    :catch_10
    move-exception v0

    goto :goto_c
.end method

.method private u()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/glympse/android/hal/ai;->bB:Lcom/glympse/android/hal/GlympseThreadPool;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/glympse/android/hal/ai;->bB:Lcom/glympse/android/hal/GlympseThreadPool;

    new-instance v1, Lcom/glympse/android/hal/ak;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/glympse/android/hal/ak;-><init>(Lcom/glympse/android/hal/ai;Lcom/glympse/android/hal/ai$1;)V

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GlympseThreadPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method private v()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/glympse/android/hal/ai;->bz:Lcom/glympse/android/hal/GSocketListener;

    invoke-interface {v0, p0}, Lcom/glympse/android/hal/GSocketListener;->failed(Lcom/glympse/android/hal/GSocket;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_9

    :goto_5
    invoke-direct {p0}, Lcom/glympse/android/hal/ai;->u()V

    return-void

    :catch_9
    move-exception v0

    goto :goto_5
.end method

.method private w()V
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/hal/ai;->bE:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glympse/android/hal/ai;->bE:Z

    :try_start_8
    iget-object v0, p0, Lcom/glympse/android/hal/ai;->bz:Lcom/glympse/android/hal/GSocketListener;

    invoke-interface {v0, p0}, Lcom/glympse/android/hal/GSocketListener;->disconnected(Lcom/glympse/android/hal/GSocket;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_11

    :goto_d
    invoke-virtual {p0}, Lcom/glympse/android/hal/ai;->close()V

    goto :goto_4

    :catch_11
    move-exception v0

    goto :goto_d
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/hal/ai;->bD:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/glympse/android/hal/ai;->u()V

    :cond_7
    return-void
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;ZLcom/glympse/android/hal/GSocketListener;)V
    .registers 7

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/glympse/android/hal/ai;->bC:Z

    if-eqz v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iput-boolean v1, p0, Lcom/glympse/android/hal/ai;->bC:Z

    if-eqz p4, :cond_5

    iput-object p4, p0, Lcom/glympse/android/hal/ai;->bz:Lcom/glympse/android/hal/GSocketListener;

    iput-object p1, p0, Lcom/glympse/android/hal/ai;->bw:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/glympse/android/hal/ai;->by:Z

    invoke-static {}, Lcom/glympse/android/hal/ConnectivityChecker;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "[GlympseSocket.open] Not connected"

    invoke-static {v1, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/glympse/android/hal/ai;->v()V

    goto :goto_5

    :cond_1f
    :try_start_1f
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/glympse/android/hal/ai;->bx:I
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_29} :catch_2d

    invoke-direct {p0}, Lcom/glympse/android/hal/ai;->start()V

    goto :goto_5

    :catch_2d
    move-exception v0

    invoke-direct {p0}, Lcom/glympse/android/hal/ai;->v()V

    goto :goto_5
.end method

.method public write([B)V
    .registers 4

    :try_start_0
    iget-boolean v0, p0, Lcom/glympse/android/hal/ai;->bD:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/glympse/android/hal/ai;->bB:Lcom/glympse/android/hal/GlympseThreadPool;

    new-instance v1, Lcom/glympse/android/hal/am;

    invoke-direct {v1, p0, p1}, Lcom/glympse/android/hal/am;-><init>(Lcom/glympse/android/hal/ai;[B)V

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GlympseThreadPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_f

    :cond_e
    :goto_e
    return-void

    :catch_f
    move-exception v0

    goto :goto_e
.end method
