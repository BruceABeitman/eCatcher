.class final Lcom/bbm/f/aj;
.super Lcom/bbm/util/b;
.source "ShuntBroker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/util/b",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/f/ai;


# direct methods
.method constructor <init>(Lcom/bbm/f/ai;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/f/aj;->a:Lcom/bbm/f/ai;

    invoke-direct {p0}, Lcom/bbm/util/b;-><init>()V

    return-void
.end method

.method private varargs b()Ljava/lang/Void;
    .registers 5

    :try_start_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/bbm/f/aj;->a:Lcom/bbm/f/ai;

    iget-object v2, v2, Lcom/bbm/f/ai;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/bbm/f/aj;->a:Lcom/bbm/f/ai;

    iget v3, v3, Lcom/bbm/f/ai;->b:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    iget-object v1, p0, Lcom/bbm/f/aj;->a:Lcom/bbm/f/ai;

    new-instance v2, Lcom/bbm/f/al;

    iget-object v3, p0, Lcom/bbm/f/aj;->a:Lcom/bbm/f/ai;

    invoke-direct {v2, v3, v0}, Lcom/bbm/f/al;-><init>(Lcom/bbm/f/ai;Ljava/net/Socket;)V

    iput-object v2, v1, Lcom/bbm/f/ai;->c:Lcom/bbm/f/al;

    iget-object v1, p0, Lcom/bbm/f/aj;->a:Lcom/bbm/f/ai;

    iget-object v1, v1, Lcom/bbm/f/ai;->c:Lcom/bbm/f/al;

    invoke-virtual {v1}, Lcom/bbm/f/al;->start()V

    iget-object v1, p0, Lcom/bbm/f/aj;->a:Lcom/bbm/f/ai;

    new-instance v2, Lcom/bbm/f/ao;

    iget-object v3, p0, Lcom/bbm/f/aj;->a:Lcom/bbm/f/ai;

    invoke-direct {v2, v3, v0}, Lcom/bbm/f/ao;-><init>(Lcom/bbm/f/ai;Ljava/net/Socket;)V

    iput-object v2, v1, Lcom/bbm/f/ai;->d:Lcom/bbm/f/ao;

    iget-object v0, p0, Lcom/bbm/f/aj;->a:Lcom/bbm/f/ai;

    iget-object v0, v0, Lcom/bbm/f/ai;->d:Lcom/bbm/f/ao;

    invoke-virtual {v0}, Lcom/bbm/f/ao;->start()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_39} :catch_3b

    :goto_39
    const/4 v0, 0x0

    return-object v0

    :catch_3b
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/bbm/f/aj;->a:Lcom/bbm/f/ai;

    iget-object v0, v0, Lcom/bbm/f/ai;->h:Lcom/bbm/util/dc;

    new-instance v1, Lcom/bbm/f/ak;

    invoke-direct {v1, p0}, Lcom/bbm/f/ak;-><init>(Lcom/bbm/f/aj;)V

    invoke-interface {v0, v1}, Lcom/bbm/util/dc;->a(Ljava/lang/Runnable;)V

    goto :goto_39
.end method


# virtual methods
.method protected final synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0}, Lcom/bbm/f/aj;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
