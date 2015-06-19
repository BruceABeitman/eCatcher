.class Lcom/facebook/bx;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/facebook/bw;


# direct methods
.method private constructor <init>(Lcom/facebook/bw;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/bx;->a:Lcom/facebook/bw;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/bw;Lcom/facebook/bw$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/bx;-><init>(Lcom/facebook/bw;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/facebook/aw;->k()Lcom/facebook/aw;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/facebook/bx;->a:Lcom/facebook/bw;

    invoke-static {v1}, Lcom/facebook/bw;->a(Lcom/facebook/bw;)Lcom/facebook/bf;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/facebook/bx;->a:Lcom/facebook/bw;

    invoke-static {v1}, Lcom/facebook/bw;->a(Lcom/facebook/bw;)Lcom/facebook/bf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/aw;->a(Lcom/facebook/bf;)V

    :cond_23
    :goto_23
    return-void

    :cond_24
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/facebook/aw;->k()Lcom/facebook/aw;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/facebook/bx;->a:Lcom/facebook/bw;

    invoke-static {v1}, Lcom/facebook/bw;->a(Lcom/facebook/bw;)Lcom/facebook/bf;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/facebook/bx;->a:Lcom/facebook/bw;

    invoke-static {v1}, Lcom/facebook/bw;->a(Lcom/facebook/bw;)Lcom/facebook/bf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/aw;->b(Lcom/facebook/bf;)V

    goto :goto_23
.end method
