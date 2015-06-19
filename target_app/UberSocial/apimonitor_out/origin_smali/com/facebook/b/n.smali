.class Lcom/facebook/b/n;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/facebook/b/m;


# direct methods
.method private constructor <init>(Lcom/facebook/b/m;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/b/n;->a:Lcom/facebook/b/m;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/b/m;Lcom/facebook/b/m$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/b/n;-><init>(Lcom/facebook/b/m;)V

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

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/facebook/aw;->k()Lcom/facebook/aw;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/facebook/b/n;->a:Lcom/facebook/b/m;

    invoke-static {v1}, Lcom/facebook/b/m;->a(Lcom/facebook/b/m;)Lcom/facebook/bf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/aw;->a(Lcom/facebook/bf;)V

    :cond_1b
    return-void
.end method
