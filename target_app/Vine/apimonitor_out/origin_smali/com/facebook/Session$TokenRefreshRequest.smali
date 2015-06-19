.class Lcom/facebook/Session$TokenRefreshRequest;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TokenRefreshRequest"
.end annotation


# instance fields
.field final messageReceiver:Landroid/os/Messenger;

.field messageSender:Landroid/os/Messenger;

.field final synthetic this$0:Lcom/facebook/Session;


# direct methods
.method constructor <init>(Lcom/facebook/Session;)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/Session$TokenRefreshRequest;->this$0:Lcom/facebook/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/facebook/Session$TokenRefreshRequestHandler;

    iget-object v2, p0, Lcom/facebook/Session$TokenRefreshRequest;->this$0:Lcom/facebook/Session;

    invoke-direct {v1, v2, p0}, Lcom/facebook/Session$TokenRefreshRequestHandler;-><init>(Lcom/facebook/Session;Lcom/facebook/Session$TokenRefreshRequest;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/facebook/Session$TokenRefreshRequest;->messageReceiver:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/Session$TokenRefreshRequest;->messageSender:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$800(Lcom/facebook/Session$TokenRefreshRequest;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/Session$TokenRefreshRequest;->cleanup()V

    return-void
.end method

.method private cleanup()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/Session$TokenRefreshRequest;->this$0:Lcom/facebook/Session;

    #getter for: Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
    invoke-static {v0}, Lcom/facebook/Session;->access$700(Lcom/facebook/Session;)Lcom/facebook/Session$TokenRefreshRequest;

    move-result-object v0

    if-ne v0, p0, :cond_e

    iget-object v0, p0, Lcom/facebook/Session$TokenRefreshRequest;->this$0:Lcom/facebook/Session;

    const/4 v1, 0x0

    #setter for: Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
    invoke-static {v0, v1}, Lcom/facebook/Session;->access$702(Lcom/facebook/Session;Lcom/facebook/Session$TokenRefreshRequest;)Lcom/facebook/Session$TokenRefreshRequest;

    :cond_e
    return-void
.end method

.method private refreshToken()V
    .registers 6

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "access_token"

    iget-object v4, p0, Lcom/facebook/Session$TokenRefreshRequest;->this$0:Lcom/facebook/Session;

    invoke-virtual {v4}, Lcom/facebook/Session;->getTokenInfo()Lcom/facebook/AccessToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/facebook/Session$TokenRefreshRequest;->messageReceiver:Landroid/os/Messenger;

    iput-object v3, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_1f
    iget-object v3, p0, Lcom/facebook/Session$TokenRefreshRequest;->messageSender:Landroid/os/Messenger;

    invoke-virtual {v3, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    :goto_24
    return-void

    :catch_25
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/Session$TokenRefreshRequest;->cleanup()V

    goto :goto_24
.end method


# virtual methods
.method public bind()V
    .registers 5

    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/NativeProtocol;->createTokenRefreshIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/facebook/Session;->access$600()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/facebook/Session$TokenRefreshRequest;

    iget-object v3, p0, Lcom/facebook/Session$TokenRefreshRequest;->this$0:Lcom/facebook/Session;

    invoke-direct {v2, v3}, Lcom/facebook/Session$TokenRefreshRequest;-><init>(Lcom/facebook/Session;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/facebook/Session$TokenRefreshRequest;->this$0:Lcom/facebook/Session;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/facebook/Session;->setLastAttemptedTokenExtendDate(Ljava/util/Date;)V

    :goto_26
    return-void

    :cond_27
    invoke-direct {p0}, Lcom/facebook/Session$TokenRefreshRequest;->cleanup()V

    goto :goto_26
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/facebook/Session$TokenRefreshRequest;->messageSender:Landroid/os/Messenger;

    invoke-direct {p0}, Lcom/facebook/Session$TokenRefreshRequest;->refreshToken()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    invoke-direct {p0}, Lcom/facebook/Session$TokenRefreshRequest;->cleanup()V

    invoke-static {}, Lcom/facebook/Session;->access$600()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
