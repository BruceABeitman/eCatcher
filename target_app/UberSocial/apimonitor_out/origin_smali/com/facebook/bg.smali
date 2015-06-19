.class Lcom/facebook/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final a:Landroid/os/Messenger;

.field b:Landroid/os/Messenger;

.field final synthetic c:Lcom/facebook/aw;


# direct methods
.method constructor <init>(Lcom/facebook/aw;)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/bg;->c:Lcom/facebook/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/facebook/bh;

    iget-object v2, p0, Lcom/facebook/bg;->c:Lcom/facebook/aw;

    invoke-direct {v1, v2, p0}, Lcom/facebook/bh;-><init>(Lcom/facebook/aw;Lcom/facebook/bg;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/facebook/bg;->a:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/bg;->b:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic a(Lcom/facebook/bg;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/bg;->b()V

    return-void
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/bg;->c:Lcom/facebook/aw;

    invoke-static {v0}, Lcom/facebook/aw;->d(Lcom/facebook/aw;)Lcom/facebook/bg;

    move-result-object v0

    if-ne v0, p0, :cond_e

    iget-object v0, p0, Lcom/facebook/bg;->c:Lcom/facebook/aw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/aw;->a(Lcom/facebook/aw;Lcom/facebook/bg;)Lcom/facebook/bg;

    :cond_e
    return-void
.end method

.method private c()V
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/facebook/bg;->c:Lcom/facebook/aw;

    invoke-virtual {v2}, Lcom/facebook/aw;->p()Lcom/facebook/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/facebook/bg;->a:Landroid/os/Messenger;

    iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_1f
    iget-object v0, p0, Lcom/facebook/bg;->b:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    :goto_24
    return-void

    :catch_25
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/bg;->b()V

    goto :goto_24
.end method


# virtual methods
.method public a()V
    .registers 5

    invoke-static {}, Lcom/facebook/aw;->l()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ag;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/facebook/aw;->r()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/facebook/bg;

    iget-object v3, p0, Lcom/facebook/bg;->c:Lcom/facebook/aw;

    invoke-direct {v2, v3}, Lcom/facebook/bg;-><init>(Lcom/facebook/aw;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/facebook/bg;->c:Lcom/facebook/aw;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/aw;->a(Ljava/util/Date;)V

    :goto_26
    return-void

    :cond_27
    invoke-direct {p0}, Lcom/facebook/bg;->b()V

    goto :goto_26
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/facebook/bg;->b:Landroid/os/Messenger;

    invoke-direct {p0}, Lcom/facebook/bg;->c()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    invoke-direct {p0}, Lcom/facebook/bg;->b()V

    invoke-static {}, Lcom/facebook/aw;->r()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
