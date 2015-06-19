.class final Lcom/instagram/android/maps/b;
.super Landroid/content/BroadcastReceiver;
.source "PhotoMapsActivity.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/b;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string v0, "ActionBarService.action_bar_updated"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/android/maps/b;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    sget v2, Lcom/facebook/av;->action_bar:I

    invoke-virtual {v0, v2}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/instagram/a/e;->a(Landroid/view/ViewGroup;)V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    const-string v0, "ActionBarService.action_bar_refresh_click"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/instagram/android/maps/b;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    goto :goto_1d
.end method
