.class public Lcom/bbm/receiver/ConnectivityChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityChangeReceiver.java"


# static fields
.field private static a:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const-string v0, "onReceive"

    const-class v1, Lcom/bbm/receiver/ConnectivityChangeReceiver;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    sget-wide v0, Lcom/bbm/receiver/ConnectivityChangeReceiver;->a:J

    const-wide/16 v2, 0x3a98

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2b

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/BbmService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.bbm.BBMService.mock_service"

    sget-boolean v2, Lcom/bbm/Alaska;->a:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bbm/receiver/ConnectivityChangeReceiver;->a:J

    :cond_2b
    return-void
.end method
