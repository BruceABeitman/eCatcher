.class public final Lcom/bbm/receiver/b;
.super Landroid/content/BroadcastReceiver;
.source "ScreenStateReceiver.java"


# instance fields
.field public a:Lcom/bbm/receiver/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bbm/receiver/b;->a:Lcom/bbm/receiver/c;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bbm/receiver/b;->a:Lcom/bbm/receiver/c;

    :cond_12
    :goto_12
    return-void

    :cond_13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bbm/receiver/b;->a:Lcom/bbm/receiver/c;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bbm/receiver/b;->a:Lcom/bbm/receiver/c;

    invoke-interface {v0}, Lcom/bbm/receiver/c;->a()V

    goto :goto_12
.end method
