.class final Lcom/bbm/ui/activities/gz;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/gz;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x0

    const-string v0, "Location client is connected"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/gz;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->f(Lcom/bbm/ui/activities/ConversationActivity;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/bbm/ui/activities/gz;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/util/ck;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/bbm/ui/activities/gz;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->g(Lcom/bbm/ui/activities/ConversationActivity;)V

    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/bbm/ui/activities/gz;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0, v2}, Lcom/bbm/ui/activities/ConversationActivity;->b(Lcom/bbm/ui/activities/ConversationActivity;Z)Z

    goto :goto_1d
.end method

.method public final onDisconnected()V
    .registers 3

    const-string v0, "Location client is disconnected"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
