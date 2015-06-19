.class public Lcom/facebook/b/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/facebook/aw;

.field private final b:Lcom/facebook/bf;

.field private final c:Landroid/content/BroadcastReceiver;

.field private final d:Landroid/support/v4/content/LocalBroadcastManager;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/bf;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/b/m;-><init>(Landroid/content/Context;Lcom/facebook/bf;Lcom/facebook/aw;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/facebook/bf;Lcom/facebook/aw;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/b/m;-><init>(Landroid/content/Context;Lcom/facebook/bf;Lcom/facebook/aw;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/bf;Lcom/facebook/aw;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/b/m;->e:Z

    new-instance v0, Lcom/facebook/b/o;

    invoke-direct {v0, p0, p2}, Lcom/facebook/b/o;-><init>(Lcom/facebook/b/m;Lcom/facebook/bf;)V

    iput-object v0, p0, Lcom/facebook/b/m;->b:Lcom/facebook/bf;

    iput-object p3, p0, Lcom/facebook/b/m;->a:Lcom/facebook/aw;

    new-instance v0, Lcom/facebook/b/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/b/n;-><init>(Lcom/facebook/b/m;Lcom/facebook/b/m$1;)V

    iput-object v0, p0, Lcom/facebook/b/m;->c:Landroid/content/BroadcastReceiver;

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/b/m;->d:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz p4, :cond_22

    invoke-virtual {p0}, Lcom/facebook/b/m;->c()V

    :cond_22
    return-void
.end method

.method static synthetic a(Lcom/facebook/b/m;)Lcom/facebook/bf;
    .registers 2

    iget-object v0, p0, Lcom/facebook/b/m;->b:Lcom/facebook/bf;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/b/m;)Lcom/facebook/aw;
    .registers 2

    iget-object v0, p0, Lcom/facebook/b/m;->a:Lcom/facebook/aw;

    return-object v0
.end method

.method private g()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/b/m;->d:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/facebook/b/m;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/aw;
    .registers 2

    iget-object v0, p0, Lcom/facebook/b/m;->a:Lcom/facebook/aw;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/facebook/aw;->k()Lcom/facebook/aw;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/facebook/b/m;->a:Lcom/facebook/aw;

    goto :goto_8
.end method

.method public a(Lcom/facebook/aw;)V
    .registers 4

    if-nez p1, :cond_23

    iget-object v0, p0, Lcom/facebook/b/m;->a:Lcom/facebook/aw;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/facebook/b/m;->a:Lcom/facebook/aw;

    iget-object v1, p0, Lcom/facebook/b/m;->b:Lcom/facebook/bf;

    invoke-virtual {v0, v1}, Lcom/facebook/aw;->b(Lcom/facebook/bf;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/b/m;->a:Lcom/facebook/aw;

    invoke-direct {p0}, Lcom/facebook/b/m;->g()V

    invoke-virtual {p0}, Lcom/facebook/b/m;->a()Lcom/facebook/aw;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/facebook/b/m;->a()Lcom/facebook/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/b/m;->b:Lcom/facebook/bf;

    invoke-virtual {v0, v1}, Lcom/facebook/aw;->a(Lcom/facebook/bf;)V

    :cond_22
    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/facebook/b/m;->a:Lcom/facebook/aw;

    if-nez v0, :cond_43

    invoke-static {}, Lcom/facebook/aw;->k()Lcom/facebook/aw;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v1, p0, Lcom/facebook/b/m;->b:Lcom/facebook/bf;

    invoke-virtual {v0, v1}, Lcom/facebook/aw;->b(Lcom/facebook/bf;)V

    :cond_32
    iget-object v0, p0, Lcom/facebook/b/m;->d:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/facebook/b/m;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_39
    iput-object p1, p0, Lcom/facebook/b/m;->a:Lcom/facebook/aw;

    iget-object v0, p0, Lcom/facebook/b/m;->a:Lcom/facebook/aw;

    iget-object v1, p0, Lcom/facebook/b/m;->b:Lcom/facebook/bf;

    invoke-virtual {v0, v1}, Lcom/facebook/aw;->a(Lcom/facebook/bf;)V

    goto :goto_22

    :cond_43
    iget-object v0, p0, Lcom/facebook/b/m;->a:Lcom/facebook/aw;

    iget-object v1, p0, Lcom/facebook/b/m;->b:Lcom/facebook/bf;

    invoke-virtual {v0, v1}, Lcom/facebook/aw;->b(Lcom/facebook/bf;)V

    goto :goto_39
.end method

.method public b()Lcom/facebook/aw;
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/b/m;->a()Lcom/facebook/aw;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/facebook/aw;->b()Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public c()V
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/b/m;->e:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/facebook/b/m;->a:Lcom/facebook/aw;

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/facebook/b/m;->g()V

    :cond_c
    invoke-virtual {p0}, Lcom/facebook/b/m;->a()Lcom/facebook/aw;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/facebook/b/m;->a()Lcom/facebook/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/b/m;->b:Lcom/facebook/bf;

    invoke-virtual {v0, v1}, Lcom/facebook/aw;->a(Lcom/facebook/bf;)V

    :cond_1b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/b/m;->e:Z

    goto :goto_4
.end method

.method public d()V
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/b/m;->e:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/facebook/b/m;->a()Lcom/facebook/aw;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/facebook/b/m;->b:Lcom/facebook/bf;

    invoke-virtual {v0, v1}, Lcom/facebook/aw;->b(Lcom/facebook/bf;)V

    :cond_10
    iget-object v0, p0, Lcom/facebook/b/m;->d:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/facebook/b/m;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/b/m;->e:Z

    goto :goto_4
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/b/m;->e:Z

    return v0
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/b/m;->a:Lcom/facebook/aw;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
