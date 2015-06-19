.class final Lcom/a/a/k;
.super Ljava/lang/Object;
.source "WebSocketClient.java"

# interfaces
.implements Lcom/a/a/j;


# instance fields
.field final synthetic a:Lcom/a/a/f;

.field private b:Landroid/os/Handler;

.field private c:Lcom/a/a/j;


# direct methods
.method public constructor <init>(Lcom/a/a/f;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/a/a/k;->a:Lcom/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/a/a/k;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/a/a/k;)Lcom/a/a/j;
    .registers 2

    iget-object v0, p0, Lcom/a/a/k;->c:Lcom/a/a/j;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/a/a/j;)V
    .registers 2

    iput-object p1, p0, Lcom/a/a/k;->c:Lcom/a/a/j;

    return-void
.end method

.method public final onConnect()V
    .registers 3

    iget-object v0, p0, Lcom/a/a/k;->b:Landroid/os/Handler;

    new-instance v1, Lcom/a/a/l;

    invoke-direct {v1, p0}, Lcom/a/a/l;-><init>(Lcom/a/a/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onDisconnect(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/a/a/k;->b:Landroid/os/Handler;

    new-instance v1, Lcom/a/a/p;

    invoke-direct {v1, p0, p1, p2}, Lcom/a/a/p;-><init>(Lcom/a/a/k;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .registers 4

    iget-object v0, p0, Lcom/a/a/k;->b:Landroid/os/Handler;

    new-instance v1, Lcom/a/a/q;

    invoke-direct {v1, p0, p1}, Lcom/a/a/q;-><init>(Lcom/a/a/k;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onMessage(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/a/a/k;->b:Landroid/os/Handler;

    new-instance v1, Lcom/a/a/m;

    invoke-direct {v1, p0, p1}, Lcom/a/a/m;-><init>(Lcom/a/a/k;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onMessage([B)V
    .registers 4

    iget-object v0, p0, Lcom/a/a/k;->b:Landroid/os/Handler;

    new-instance v1, Lcom/a/a/n;

    invoke-direct {v1, p0, p1}, Lcom/a/a/n;-><init>(Lcom/a/a/k;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPing()V
    .registers 3

    iget-object v0, p0, Lcom/a/a/k;->b:Landroid/os/Handler;

    new-instance v1, Lcom/a/a/o;

    invoke-direct {v1, p0}, Lcom/a/a/o;-><init>(Lcom/a/a/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
