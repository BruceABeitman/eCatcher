.class final Lcom/facebook/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/lang/String;

.field final c:Landroid/os/Handler;

.field d:Lcom/facebook/ac;

.field e:Z

.field f:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_a

    move-object p1, v0

    :cond_a
    iput-object p1, p0, Lcom/facebook/ab;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ab;->b:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ab$1;

    invoke-direct {v0, p0}, Lcom/facebook/ab$1;-><init>(Lcom/facebook/ab;)V

    iput-object v0, p0, Lcom/facebook/ab;->c:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ab;->e:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ab;->e:Z

    iget-object v0, p0, Lcom/facebook/ab;->d:Lcom/facebook/ac;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lcom/facebook/ac;->a(Landroid/os/Bundle;)V

    goto :goto_4
.end method

.method private a(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x10001

    if-ne v0, v1, :cond_1c

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ab;->a(Landroid/os/Bundle;)V

    :goto_17
    iget-object v0, p0, Lcom/facebook/ab;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1c
    return-void

    :cond_1d
    invoke-direct {p0, v0}, Lcom/facebook/ab;->a(Landroid/os/Bundle;)V

    goto :goto_17
.end method

.method static synthetic a(Lcom/facebook/ab;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ab;->a(Landroid/os/Message;)V

    return-void
.end method

.method private c()V
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.facebook.platform.extra.APPLICATION_ID"

    iget-object v2, p0, Lcom/facebook/ab;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v1, 0x1

    invoke-static {v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const v2, 0x133060d

    iput v2, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/facebook/ab;->c:Landroid/os/Handler;

    invoke-direct {v0, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_24
    iget-object v0, p0, Lcom/facebook/ab;->f:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_2a

    :goto_29
    return-void

    :catch_2a
    move-exception v0

    invoke-direct {p0, v3}, Lcom/facebook/ab;->a(Landroid/os/Bundle;)V

    goto :goto_29
.end method


# virtual methods
.method a(Lcom/facebook/ac;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ab;->d:Lcom/facebook/ac;

    return-void
.end method

.method a()Z
    .registers 4

    const/4 v0, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.facebook.platform.PLATFORM_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/ab;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/facebook/ag;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1b

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ab;->a(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    :goto_1a
    return v0

    :cond_1b
    iput-boolean v0, p0, Lcom/facebook/ab;->e:Z

    iget-object v2, p0, Lcom/facebook/ab;->a:Landroid/content/Context;

    invoke-virtual {v2, v1, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_1a
.end method

.method b()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ab;->e:Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/facebook/ab;->f:Landroid/os/Messenger;

    invoke-direct {p0}, Lcom/facebook/ab;->c()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ab;->f:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/facebook/ab;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-direct {p0, v1}, Lcom/facebook/ab;->a(Landroid/os/Bundle;)V

    return-void
.end method
