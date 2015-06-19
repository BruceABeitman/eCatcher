.class public final Lcom/instagram/common/analytics/l;
.super Ljava/lang/Object;
.source "ConnectionChangeReporter.java"

# interfaces
.implements Lcom/instagram/common/analytics/e;
.implements Lcom/instagram/common/l/b/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/instagram/common/analytics/d;

.field private c:Landroid/net/NetworkInfo;

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Z

.field private f:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/common/analytics/l;->a:Landroid/content/Context;

    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/analytics/l;->b:Lcom/instagram/common/analytics/d;

    invoke-static {}, Lcom/instagram/common/l/b/b;->a()Lcom/instagram/common/l/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/common/l/b/b;->a(Lcom/instagram/common/l/b/a;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/net/NetworkInfo;)Lcom/instagram/common/analytics/b;
    .registers 6

    new-instance v0, Lcom/instagram/common/analytics/b;

    const-string v1, "connection_change"

    invoke-direct {v0, v1, p0}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V

    if-eqz p1, :cond_2a

    const-string v1, "state"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "connection"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "connection_subtype"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    :cond_2a
    iget-object v1, p0, Lcom/instagram/common/analytics/l;->c:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_44

    const-string v1, "previous_connection"

    iget-object v2, p0, Lcom/instagram/common/analytics/l;->c:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    const-string v1, "previous_connection_subtype"

    iget-object v2, p0, Lcom/instagram/common/analytics/l;->c:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    :cond_44
    iput-object p1, p0, Lcom/instagram/common/analytics/l;->c:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/common/analytics/l;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/common/analytics/l;->b(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_9

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    move v0, v1

    goto :goto_6

    :cond_9
    if-nez p1, :cond_d

    move v0, v1

    goto :goto_6

    :cond_d
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v2, v3, :cond_21

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    if-eq v2, v3, :cond_6

    :cond_21
    move v0, v1

    goto :goto_6
.end method

.method private b(Landroid/content/Context;)V
    .registers 5

    invoke-static {p1}, Lcom/instagram/common/analytics/l;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/instagram/common/analytics/l;->e:Z

    :cond_11
    iget-object v1, p0, Lcom/instagram/common/analytics/l;->c:Landroid/net/NetworkInfo;

    invoke-static {v1, v0}, Lcom/instagram/common/analytics/l;->a(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-boolean v1, p0, Lcom/instagram/common/analytics/l;->e:Z

    if-eqz v1, :cond_29

    :cond_1d
    invoke-direct {p0, v0}, Lcom/instagram/common/analytics/l;->a(Landroid/net/NetworkInfo;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/analytics/l;->b:Lcom/instagram/common/analytics/d;

    invoke-interface {v1, v0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/common/analytics/l;->e:Z

    :cond_29
    return-void
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/analytics/l;->d:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_b

    new-instance v0, Lcom/instagram/common/analytics/m;

    invoke-direct {v0, p0}, Lcom/instagram/common/analytics/m;-><init>(Lcom/instagram/common/analytics/l;)V

    iput-object v0, p0, Lcom/instagram/common/analytics/l;->d:Landroid/content/BroadcastReceiver;

    :cond_b
    return-void
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/common/analytics/l;->f:Landroid/content/IntentFilter;

    if-nez v0, :cond_12

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/analytics/l;->f:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/instagram/common/analytics/l;->f:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_12
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/common/analytics/l;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/instagram/common/analytics/l;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/instagram/common/analytics/l;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_b
    return-void
.end method

.method public final b()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/common/analytics/l;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/instagram/common/analytics/l;->b(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/instagram/common/analytics/l;->c()V

    invoke-direct {p0}, Lcom/instagram/common/analytics/l;->d()V

    iget-object v0, p0, Lcom/instagram/common/analytics/l;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/instagram/common/analytics/l;->d:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/instagram/common/analytics/l;->f:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "device"

    return-object v0
.end method
