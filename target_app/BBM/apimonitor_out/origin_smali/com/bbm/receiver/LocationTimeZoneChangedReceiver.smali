.class public Lcom/bbm/receiver/LocationTimeZoneChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocationTimeZoneChangedReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "onReceive"

    const-class v1, Lcom/bbm/receiver/LocationTimeZoneChangedReceiver;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/d/a;->t()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/bbm/d/a;->a(ZLandroid/content/Context;)V

    return-void
.end method
