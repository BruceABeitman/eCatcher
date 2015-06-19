.class public Lcom/twidroid/service/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/twidroid/service/StreamingService;

.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/twidroid/service/f$1;

    invoke-direct {v0, p0}, Lcom/twidroid/service/f$1;-><init>(Lcom/twidroid/service/f;)V

    iput-object v0, p0, Lcom/twidroid/service/f;->d:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/twidroid/service/f;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/twidroid/service/f;Lcom/twidroid/service/StreamingService;)Lcom/twidroid/service/StreamingService;
    .registers 2

    iput-object p1, p0, Lcom/twidroid/service/f;->a:Lcom/twidroid/service/StreamingService;

    return-object p1
.end method


# virtual methods
.method public a()Z
    .registers 6

    const/4 v4, 0x1

    const-string v0, "StreamingService"

    const-string v1, "doBindService"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/service/f;->c:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twidroid/service/f;->c:Landroid/content/Context;

    const-class v3, Lcom/twidroid/service/StreamingService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/twidroid/service/f;->d:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v4, p0, Lcom/twidroid/service/f;->b:Z

    return v0
.end method

.method public b()V
    .registers 3

    const-string v0, "StreamingService"

    const-string v1, "doUnbindService"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/twidroid/service/f;->b:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/twidroid/service/f;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/twidroid/service/f;->d:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/service/f;->b:Z

    :cond_15
    return-void
.end method

.method public c()Lcom/twidroid/service/StreamingService;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/service/f;->a:Lcom/twidroid/service/StreamingService;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/service/f;->b:Z

    return v0
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Lcom/twidroid/service/f;->a:Lcom/twidroid/service/StreamingService;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
