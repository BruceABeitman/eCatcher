.class public Lcom/twidroid/service/ConnectionAvailableReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "ConnectionAvailableReceiver"

.field private static b:Z

.field private static c:Z

.field private static d:Lcom/twidroid/b/a/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/twidroid/service/ConnectionAvailableReceiver;->b:Z

    sput-boolean v0, Lcom/twidroid/service/ConnectionAvailableReceiver;->c:Z

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    sput-object v0, Lcom/twidroid/service/ConnectionAvailableReceiver;->d:Lcom/twidroid/b/a/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Lcom/twidroid/service/ConnectionAvailableReceiver$ConnectionObserverReceiver;

    invoke-direct {v0}, Lcom/twidroid/service/ConnectionAvailableReceiver$ConnectionObserverReceiver;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "ConnectionAvailableReceiver"

    const-string v3, "Now watching android.net.conn.CONNECTIVITY_CHANGE to send tweets from outbox"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic a()Z
    .registers 1

    sget-boolean v0, Lcom/twidroid/service/ConnectionAvailableReceiver;->b:Z

    return v0
.end method

.method static synthetic a(Z)Z
    .registers 1

    sput-boolean p0, Lcom/twidroid/service/ConnectionAvailableReceiver;->b:Z

    return p0
.end method

.method static synthetic b()Lcom/twidroid/b/a/b;
    .registers 1

    sget-object v0, Lcom/twidroid/service/ConnectionAvailableReceiver;->d:Lcom/twidroid/b/a/b;

    return-object v0
.end method

.method static synthetic b(Z)Z
    .registers 1

    sput-boolean p0, Lcom/twidroid/service/ConnectionAvailableReceiver;->c:Z

    return p0
.end method

.method static synthetic c()Z
    .registers 1

    sget-boolean v0, Lcom/twidroid/service/ConnectionAvailableReceiver;->c:Z

    return v0
.end method
